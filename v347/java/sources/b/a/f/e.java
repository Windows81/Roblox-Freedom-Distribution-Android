package b.a.f;

import b.w;
import b.x;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e f1965a = a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f1966b = Logger.getLogger(w.class.getName());

    public static e b() {
        return f1965a;
    }

    public void a(SSLSocket sSLSocket, String str, List<x> list) {
    }

    public void b(SSLSocket sSLSocket) {
    }

    public String a(SSLSocket sSLSocket) {
        return null;
    }

    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    public void a(int i, String str, Throwable th) {
        f1966b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public boolean a(String str) {
        return true;
    }

    public static List<String> a(List<x> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            x xVar = list.get(i);
            if (xVar != x.HTTP_1_0) {
                arrayList.add(xVar.toString());
            }
        }
        return arrayList;
    }

    public b.a.g.b a(X509TrustManager x509TrustManager) {
        return new b.a.g.a(b.a.g.e.a(x509TrustManager));
    }

    private static e a() {
        e eVarA = a.a();
        if (eVarA == null) {
            b bVarA = b.a();
            if (bVarA == null) {
                e eVarA2 = c.a();
                return eVarA2 == null ? new e() : eVarA2;
            }
            return bVarA;
        }
        return eVarA;
    }

    static byte[] b(List<x> list) {
        c.c cVar = new c.c();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            x xVar = list.get(i);
            if (xVar != x.HTTP_1_0) {
                cVar.i(xVar.toString().length());
                cVar.b(xVar.toString());
            }
        }
        return cVar.s();
    }
}
