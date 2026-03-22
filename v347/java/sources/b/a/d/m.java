package b.a.d;

import b.x;
import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f1943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1945c;

    public m(x xVar, int i, String str) {
        this.f1943a = xVar;
        this.f1944b = i;
        this.f1945c = str;
    }

    public static m a(String str) throws IOException {
        x xVar;
        String strSubstring;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt == 0) {
                xVar = x.HTTP_1_0;
            } else if (iCharAt == 1) {
                xVar = x.HTTP_1_1;
            } else {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else if (str.startsWith("ICY ")) {
            xVar = x.HTTP_1_0;
            i = 4;
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        if (str.length() < i + 3) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int i2 = Integer.parseInt(str.substring(i, i + 3));
            if (str.length() <= i + 3) {
                strSubstring = "";
            } else {
                if (str.charAt(i + 3) != ' ') {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                strSubstring = str.substring(i + 4);
            }
            return new m(xVar, i2, strSubstring);
        } catch (NumberFormatException e) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1943a == x.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ').append(this.f1944b);
        if (this.f1945c != null) {
            sb.append(' ').append(this.f1945c);
        }
        return sb.toString();
    }
}
