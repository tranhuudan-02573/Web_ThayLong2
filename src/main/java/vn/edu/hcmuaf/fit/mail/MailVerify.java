package vn.edu.hcmuaf.fit.mail;

import javax.mail.*;
import javax.mail.internet.*;
import java.io.File;
import java.util.Properties;

public class MailVerify {


    public void send(String to, String email) {
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
                mess.setSubject("verity");

                multipart.addBodyPart((BodyPart) textPart);
                textPart.setText(email);
                mess.setContent(multipart);
                Transport.send(mess);


            } catch (MessagingException e) {
                throw new IllegalStateException("failed to send email");
        }
    }

    public static void main(String[] args) {
        new MailVerify().send("danlathangcho@gmail.com","dsa");
    }
}
