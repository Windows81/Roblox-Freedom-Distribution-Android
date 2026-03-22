package c.a.f;

import c.x;
import c.y;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e f2698a = a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f2699b = Logger.getLogger(x.class.getName());

    public String a(SSLSocket sSLSocket) {
        return null;
    }

    public void a(SSLSocket sSLSocket, String str, List<y> list) {
    }

    public boolean a(String str) {
        return true;
    }

    public void b(SSLSocket sSLSocket) {
    }

    public static e b() {
        return f2698a;
    }

    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    public void a(int i, String str, Throwable th) {
        f2699b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public static List<String> a(List<y> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            y yVar = list.get(i);
            if (yVar != y.HTTP_1_0) {
                arrayList.add(yVar.toString());
            }
        }
        return arrayList;
    }

    public c.a.g.b a(X509TrustManager x509TrustManager) {
        return new c.a.g.a(c.a.g.e.a(x509TrustManager));
    }

    private static e a() {
        e eVarA = a.a();
        if (eVarA != null) {
            return eVarA;
        }
        b bVarA = b.a();
        if (bVarA != null) {
            return bVarA;
        }
        e eVarA2 = c.a();
        return eVarA2 != null ? eVarA2 : new e();
    }

    static byte[] b(List<y> list) {
        d.c cVar = new d.c();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            y yVar = list.get(i);
            if (yVar != y.HTTP_1_0) {
                cVar.i(yVar.toString().length());
                cVar.b(yVar.toString());
            }
        }
        return cVar.s();
    }
}
