package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class rf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f5507a = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>", 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f5508b = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE[^>]*>", 2);

    public static String a() {
        String str = (String) aoo.f().a(aro.L);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", str);
            jSONObject.put("sdk", "Google Mobile Ads");
            jSONObject.put("sdkVersion", "12.4.51-000");
            StringBuilder sb = new StringBuilder();
            sb.append("<script>");
            sb.append("Object.defineProperty(window,'MRAID_ENV',{get:function(){return ").append(jSONObject.toString()).append("}});");
            sb.append("</script>");
            return sb.toString();
        } catch (JSONException e) {
            jd.c("Unable to build MRAID_ENV", e);
            return null;
        }
    }

    public static String a(String str, String... strArr) {
        int i = 0;
        if (strArr.length == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        Matcher matcher = f5507a.matcher(str);
        if (matcher.find()) {
            int iEnd = matcher.end();
            sb.append(str.substring(0, iEnd));
            int length = strArr.length;
            while (i < length) {
                String str2 = strArr[i];
                if (str2 != null) {
                    sb.append(str2);
                }
                i++;
            }
            sb.append(str.substring(iEnd));
        } else {
            if (!f5508b.matcher(str).find()) {
                int length2 = strArr.length;
                while (i < length2) {
                    String str3 = strArr[i];
                    if (str3 != null) {
                        sb.append(str3);
                    }
                    i++;
                }
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
