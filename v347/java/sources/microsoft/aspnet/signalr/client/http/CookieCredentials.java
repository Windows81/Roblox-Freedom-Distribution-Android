package microsoft.aspnet.signalr.client.http;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import microsoft.aspnet.signalr.client.Constants;
import microsoft.aspnet.signalr.client.Credentials;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class CookieCredentials implements Credentials {
    private Map<String, String> mCookieValues = new HashMap();

    public CookieCredentials() {
    }

    public CookieCredentials(String str) {
        if (str != null) {
            String strTrim = str.trim();
            if (!strTrim.trim().equals("")) {
                for (String str2 : strTrim.split(";")) {
                    String[] strArrSplit = str2.split("=");
                    try {
                        addCookie(URLDecoder.decode(strArrSplit[0], Constants.UTF8_NAME), URLDecoder.decode(strArrSplit[1], Constants.UTF8_NAME));
                    } catch (UnsupportedEncodingException e) {
                    }
                }
            }
        }
    }

    public void addCookie(String str, String str2) {
        this.mCookieValues.put(str, str2);
    }

    public void removeCookie(String str) {
        this.mCookieValues.remove(str);
    }

    @Override // microsoft.aspnet.signalr.client.Credentials
    public void prepareRequest(Request request) {
        if (this.mCookieValues.size() > 0) {
            StringBuilder sb = new StringBuilder();
            if (request.getHeaders().containsKey("Cookie")) {
                sb.append(request.getHeaders().get("Cookie"));
                sb.append("; ");
            }
            sb.append(toString());
            request.removeHeader("Cookie");
            request.addHeader("Cookie", sb.toString());
        }
    }

    public String toString() {
        if (this.mCookieValues.size() <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : this.mCookieValues.keySet()) {
            try {
                sb.append(URLEncoder.encode(str, Constants.UTF8_NAME));
                sb.append("=");
                sb.append(URLEncoder.encode(this.mCookieValues.get(str), Constants.UTF8_NAME));
                sb.append(";");
            } catch (UnsupportedEncodingException e) {
            }
        }
        return sb.toString();
    }
}
