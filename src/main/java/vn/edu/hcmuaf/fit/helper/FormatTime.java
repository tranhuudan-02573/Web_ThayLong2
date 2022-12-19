package vn.edu.hcmuaf.fit.helper;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class FormatTime {


    public static String format(Timestamp lt, boolean time) {
        StringBuilder format = new StringBuilder("dd/MM/yyyy");
        if (lt == null)
            return "??/??/???";
        if (time)
            format.append(" HH:mm:ss");
        return DateTimeFormatter.ofPattern(format.toString()).format(lt.toLocalDateTime());
    }


}
