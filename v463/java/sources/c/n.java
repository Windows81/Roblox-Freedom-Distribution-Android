package c;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class n {
    public static String a(String str, String str2) {
        try {
            return "Basic " + d.f.a((str + ":" + str2).getBytes("ISO-8859-1")).b();
        } catch (UnsupportedEncodingException unused) {
            throw new AssertionError();
        }
    }
}
