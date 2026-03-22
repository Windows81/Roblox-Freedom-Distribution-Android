package b.a.f;

import android.util.Log;
import b.x;
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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class a extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f1947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d<Socket> f1948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d<Socket> f1949c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d<Socket> f1950d;
    private final d<Socket> e;

    public a(Class<?> cls, d<Socket> dVar, d<Socket> dVar2, d<Socket> dVar3, d<Socket> dVar4) {
        this.f1947a = cls;
        this.f1948b = dVar;
        this.f1949c = dVar2;
        this.f1950d = dVar3;
        this.e = dVar4;
    }

    @Override // b.a.f.e
    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (!b.a.c.a(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (SecurityException e2) {
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e2);
            throw iOException;
        }
    }

    @Override // b.a.f.e
    public void a(SSLSocket sSLSocket, String str, List<x> list) {
        if (str != null) {
            this.f1948b.b(sSLSocket, true);
            this.f1949c.b(sSLSocket, str);
        }
        if (this.e != null && this.e.a(sSLSocket)) {
            this.e.d(sSLSocket, b(list));
        }
    }

    @Override // b.a.f.e
    public String a(SSLSocket sSLSocket) {
        if (this.f1950d == null || !this.f1950d.a(sSLSocket)) {
            return null;
        }
        byte[] bArr = (byte[]) this.f1950d.d(sSLSocket, new Object[0]);
        return bArr != null ? new String(bArr, b.a.c.f1785c) : null;
    }

    @Override // b.a.f.e
    public void a(int i, String str, Throwable th) {
        int iMin;
        int i2 = i == 5 ? 5 : 3;
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

    @Override // b.a.f.e
    public boolean a(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]), str)).booleanValue();
        } catch (ClassNotFoundException e) {
            return super.a(str);
        } catch (IllegalAccessException e2) {
            throw new AssertionError();
        } catch (IllegalArgumentException e3) {
            throw new AssertionError();
        } catch (NoSuchMethodException e4) {
            return super.a(str);
        } catch (InvocationTargetException e5) {
            throw new AssertionError();
        }
    }

    @Override // b.a.f.e
    public b.a.g.b a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C0040a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception e) {
            return super.a(x509TrustManager);
        }
    }

    public static e a() {
        Class<?> cls;
        d dVar;
        d dVar2;
        d dVar3;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException e) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            d dVar4 = new d(null, "setUseSessionTickets", Boolean.TYPE);
            d dVar5 = new d(null, "setHostname", String.class);
            try {
                Class.forName("android.net.Network");
                dVar = new d(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
            } catch (ClassNotFoundException e2) {
                dVar = null;
            }
            try {
                dVar2 = new d(null, "setAlpnProtocols", byte[].class);
                dVar3 = dVar;
            } catch (ClassNotFoundException e3) {
                dVar2 = null;
                dVar3 = dVar;
            }
            return new a(cls, dVar4, dVar5, dVar3, dVar2);
        } catch (ClassNotFoundException e4) {
            return null;
        }
    }

    /* JADX INFO: renamed from: b.a.f.a$a, reason: collision with other inner class name */
    static final class C0040a extends b.a.g.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f1951a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Method f1952b;

        C0040a(Object obj, Method method) {
            this.f1951a = obj;
            this.f1952b = method;
        }

        @Override // b.a.g.b
        public List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f1952b.invoke(this.f1951a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            }
        }
    }
}
