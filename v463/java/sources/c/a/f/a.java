package c.a.f;

import android.util.Log;
import c.y;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class a extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f2678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d<Socket> f2679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d<Socket> f2680c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d<Socket> f2681d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d<Socket> f2682e;

    public a(Class<?> cls, d<Socket> dVar, d<Socket> dVar2, d<Socket> dVar3, d<Socket> dVar4) {
        this.f2678a = cls;
        this.f2679b = dVar;
        this.f2680c = dVar2;
        this.f2681d = dVar3;
        this.f2682e = dVar4;
    }

    @Override // c.a.f.e
    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e2) {
            if (!c.a.c.a(e2)) {
                throw e2;
            }
            throw new IOException(e2);
        } catch (SecurityException e3) {
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e3);
            throw iOException;
        }
    }

    @Override // c.a.f.e
    public void a(SSLSocket sSLSocket, String str, List<y> list) {
        if (str != null) {
            this.f2679b.b(sSLSocket, true);
            this.f2680c.b(sSLSocket, str);
        }
        d<Socket> dVar = this.f2682e;
        if (dVar == null || !dVar.a(sSLSocket)) {
            return;
        }
        this.f2682e.d(sSLSocket, b(list));
    }

    @Override // c.a.f.e
    public String a(SSLSocket sSLSocket) {
        byte[] bArr;
        d<Socket> dVar = this.f2681d;
        if (dVar == null || !dVar.a(sSLSocket) || (bArr = (byte[]) this.f2681d.d(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, c.a.c.f2493c);
    }

    @Override // c.a.f.e
    public void a(int i, String str, Throwable th) {
        int iMin;
        int i2 = i != 5 ? 3 : 5;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int i3 = 0;
        int length = str.length();
        while (i3 < length) {
            int iIndexOf = str.indexOf(10, i3);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = Math.min(iIndexOf, i3 + 4000);
                Log.println(i2, "OkHttp", str.substring(i3, iMin));
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i3 = iMin;
                }
            }
            i3 = iMin + 1;
        }
    }

    @Override // c.a.f.e
    public boolean a(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]), str)).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.a(str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
            throw new AssertionError();
        }
    }

    @Override // c.a.f.e
    public c.a.g.b a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C0058a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.a(x509TrustManager);
        }
    }

    public static e a() {
        Class<?> cls;
        d dVar;
        d dVar2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                return null;
            }
        } catch (ClassNotFoundException unused2) {
            cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
        }
        Class<?> cls2 = cls;
        d dVar3 = new d(null, "setUseSessionTickets", Boolean.TYPE);
        d dVar4 = new d(null, "setHostname", String.class);
        try {
            Class.forName("android.net.Network");
            dVar = new d(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
        } catch (ClassNotFoundException unused3) {
            dVar = null;
        }
        try {
            dVar2 = new d(null, "setAlpnProtocols", byte[].class);
        } catch (ClassNotFoundException unused4) {
            dVar2 = null;
        }
        return new a(cls2, dVar3, dVar4, dVar, dVar2);
    }

    /* JADX INFO: renamed from: c.a.f.a$a, reason: collision with other inner class name */
    static final class C0058a extends c.a.g.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f2683a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Method f2684b;

        C0058a(Object obj, Method method) {
            this.f2683a = obj;
            this.f2684b = method;
        }

        @Override // c.a.g.b
        public List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f2684b.invoke(this.f2683a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (InvocationTargetException e3) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e3.getMessage());
                sSLPeerUnverifiedException.initCause(e3);
                throw sSLPeerUnverifiedException;
            }
        }
    }
}
