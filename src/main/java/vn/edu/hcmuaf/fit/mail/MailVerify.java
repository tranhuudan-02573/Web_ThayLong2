package vn.edu.hcmuaf.fit.mail;

import javax.mail.*;
import javax.mail.internet.*;
import java.io.File;
import java.util.Properties;
import java.util.Random;

public class MailVerify {

//    public static String codeRandom(){
//        int code = new Random().nextInt(999999);
//        return String.format("%06d",code);
//    }

    public static void send(String to, String recipient, String link) {
        String fromEmail = "20130218@st.hcmuaf.edu.vn";
        String password = "mymeslmspxoogvoo";

        try {
            Properties pr = System.getProperties();
            pr.put("mail.smtp.host", "smtp.gmail.com");
            pr.put("mail.smtp.port", "465");
            pr.put("mail.smtp.auth", "true");
            pr.put("mail.smtp.ssl.enable", "true");
//        pr.put("mail.smtp.socketFactory.port","465");
//        pr.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");

            Session session = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {

                    return new PasswordAuthentication(fromEmail, password);
                }
            });
            session.setDebug(true);

            Message mess = new MimeMessage(session);

            Multipart multipart = new MimeMultipart();
            MimePart textPart = new MimeBodyPart();

            mess.setFrom(new InternetAddress(fromEmail));
            mess.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

            mess.setSubject("Verity account Email to ShopPhone<");
            multipart.addBodyPart((BodyPart) textPart);
            textPart.setContent(buildEmail(recipient, link), "text/html; charset=utf-8");
            mess.setContent(multipart);
            Transport.send(mess);


        } catch (MessagingException e) {
            throw new IllegalStateException("failed to send email");
        }
    }

    private static String buildEmail(String recipient, String link) {
        return "<!DOCTYPE html>\n" +
                "<html lang=\"en\">\n" +
                "\n" +
                "<head>\n" +
                "    <meta charset=\"UTF-8\">\n" +
                "    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n" +
                "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
                "    <title>Document</title>\n" +
                "</head>\n" +
                "\n" +
                "<body>\n" +
                "<div style=\"border-style:solid;border-width:thin;border-color:#dadce0;border-radius:8px;padding:40px 20px\"\n" +
                "     align=\"center\" class=\"m_-3328082088826946890mdv2rw\"><img src=\"/images/fptshop-logo.png\" width=\"74\" height=\"24\"\n" +
                "                                                              aria-hidden=\"true\" style=\"margin-bottom:16px\"\n" +
                "                                                              alt=\"logo-shop\" class=\"CToWUd\" data-bit=\"iit\"\n" +
                "                                                              jslog=\"138226; u014N:xr6bB; 53:W2ZhbHNlLDJd\">\n" +
                "    <div\n" +
                "            style=\"font-family:'Google Sans',Roboto,RobotoDraft,Helvetica,Arial,sans-serif;border-bottom:thin solid #dadce0;color:rgba(0,0,0,0.87);line-height:32px;padding-bottom:24px;text-align:center;word-break:break-word\">\n" +
                "        <div style=\"font-size:24px\">Chào " + recipient + "</div>\n" +
                "        <div style=\"font-size:24px\">Ấn vào nút kích hoạt để tiến hành kích hoạt tài khoản của bạn</div>\n" +
                "        <div style=\"padding-top:32px;text-align:center\">\n" +
                "          <a\n" +
                "                href=\"" + link + "\"\n" +
                "                style=\"font-family:'Google Sans',Roboto,RobotoDraft,Helvetica,Arial,sans-serif;cursor: pointer;line-height:16px;color:#ffffff;font-weight:400;text-decoration:none;font-size:14px;display:inline-block;padding:10px 24px;background-color:#4184f3;border-radius:5px;min-width:90px\"\n" +
                "                target=\"_blank\"\n" +
                "                data-saferedirecturl=\"" + link + "\">Kích\n" +
                "            hoạt tài khoản</a></div>\n" +
                "    </div>\n" +
                "</div>\n" +
                "</body>\n" +
                "\n" +
                "</html>";
    }

    public static void main(String[] args) {

        new MailVerify().send("sgfdainesend@gmail.com", "Lê", "/dădaw");

    }
}
