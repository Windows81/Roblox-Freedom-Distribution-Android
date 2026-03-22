package c.a.d;

import c.y;
import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y f2674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f2676c;

    public m(y yVar, int i, String str) {
        this.f2674a = yVar;
        this.f2675b = i;
        this.f2676c = str;
    }

    public static m a(String str) throws IOException {
        y yVar;
        String strSubstring;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt == 0) {
                yVar = y.HTTP_1_0;
            } else if (iCharAt == 1) {
                yVar = y.HTTP_1_1;
            } else {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else if (str.startsWith("ICY ")) {
            yVar = y.HTTP_1_0;
            i = 4;
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        int i2 = i + 3;
        if (str.length() < i2) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int i3 = Integer.parseInt(str.substring(i, i2));
            if (str.length() <= i2) {
                strSubstring = "";
            } else {
                if (str.charAt(i2) != ' ') {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                strSubstring = str.substring(i + 4);
            }
            return new m(yVar, i3, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2674a == y.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f2675b);
        if (this.f2676c != null) {
            sb.append(' ');
            sb.append(this.f2676c);
        }
        return sb.toString();
    }
}
