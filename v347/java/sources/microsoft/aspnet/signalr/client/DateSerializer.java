package microsoft.aspnet.signalr.client;

import com.google.gson.i;
import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.o;
import com.google.gson.q;
import com.google.gson.r;
import com.google.gson.s;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class DateSerializer implements j<Date>, s<Date> {
    private static final int THREE_MILLISECONDS_DATE_FORMAT_LENGTH = 29;

    @Override // com.google.gson.j
    public Date deserialize(k kVar, Type type, i iVar) throws o {
        try {
            return deserialize(kVar.c());
        } catch (ParseException e) {
            throw new o(e);
        }
    }

    @Override // com.google.gson.s
    public k serialize(Date date, Type type, r rVar) {
        return new q(serialize(date));
    }

    public static Date deserialize(String str) throws ParseException {
        String strReplace;
        if (str.contains("+00:00")) {
            str = str.replace("+00:00", "");
        }
        if (str.length() == 19) {
            strReplace = str + ".+00:00";
        } else if (str.contains(".Z")) {
            strReplace = str.replace(".Z", ".+00:00");
        } else {
            strReplace = str.replace("Z", ".+00:00");
        }
        try {
            if (strReplace.length() > 29) {
                strReplace = strReplace.substring(0, 23) + strReplace.substring(strReplace.length() - 6);
            } else if (strReplace.length() < 29) {
                int length = 29 - strReplace.length();
                String str2 = "";
                for (int i = 0; i < length; i++) {
                    str2 = str2 + "0";
                }
                strReplace = strReplace.substring(0, (3 - length) + 20) + str2 + strReplace.substring(strReplace.length() - 6);
            }
            String str3 = strReplace.substring(0, 26) + strReplace.substring(27);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'.'SSSZ");
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
            return simpleDateFormat.parse(str3);
        } catch (IndexOutOfBoundsException e) {
            throw new o("Invalid length for: " + strReplace);
        }
    }

    public static String serialize(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'.'SSS'Z'", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(date);
    }
}
