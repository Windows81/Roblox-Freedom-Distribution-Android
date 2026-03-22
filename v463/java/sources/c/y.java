package c;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum y {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f2866e;

    y(String str) {
        this.f2866e = str;
    }

    public static y a(String str) throws IOException {
        if (str.equals(HTTP_1_0.f2866e)) {
            return HTTP_1_0;
        }
        if (str.equals(HTTP_1_1.f2866e)) {
            return HTTP_1_1;
        }
        if (str.equals(HTTP_2.f2866e)) {
            return HTTP_2;
        }
        if (str.equals(SPDY_3.f2866e)) {
            return SPDY_3;
        }
        throw new IOException("Unexpected protocol: " + str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f2866e;
    }
}
