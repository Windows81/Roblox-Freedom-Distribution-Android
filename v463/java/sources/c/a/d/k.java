package c.a.d;

import c.aa;
import c.t;
import java.net.Proxy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class k {
    static String a(aa aaVar, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(aaVar.b());
        sb.append(' ');
        if (b(aaVar, type)) {
            sb.append(aaVar.a());
        } else {
            sb.append(a(aaVar.a()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    private static boolean b(aa aaVar, Proxy.Type type) {
        return !aaVar.g() && type == Proxy.Type.HTTP;
    }

    public static String a(t tVar) {
        String strH = tVar.h();
        String strK = tVar.k();
        if (strK == null) {
            return strH;
        }
        return strH + '?' + strK;
    }
}
