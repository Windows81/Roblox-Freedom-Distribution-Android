package b.a.d;

import b.s;
import b.z;
import java.net.Proxy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class k {
    static String a(z zVar, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(zVar.b());
        sb.append(' ');
        if (b(zVar, type)) {
            sb.append(zVar.a());
        } else {
            sb.append(a(zVar.a()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    private static boolean b(z zVar, Proxy.Type type) {
        return !zVar.g() && type == Proxy.Type.HTTP;
    }

    public static String a(s sVar) {
        String strH = sVar.h();
        String strK = sVar.k();
        return strK != null ? strH + '?' + strK : strH;
    }
}
