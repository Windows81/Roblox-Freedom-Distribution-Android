package b;

import b.e;
import b.r;
import java.net.Proxy;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public class w implements e.a, Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final n f2092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Proxy f2093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final List<x> f2094c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final List<k> f2095d;
    final List<t> e;
    final List<t> f;
    final ProxySelector g;
    final m h;
    final c i;
    final b.a.a.e j;
    final SocketFactory k;
    final SSLSocketFactory l;
    final b.a.g.b m;
    final HostnameVerifier n;
    final g o;
    final b p;
    final b q;
    final j r;
    final o s;
    final boolean t;
    final boolean u;
    final boolean v;
    final int w;
    final int x;
    final int y;
    private static final List<x> z = b.a.c.a(x.HTTP_2, x.SPDY_3, x.HTTP_1_1);
    private static final List<k> A = b.a.c.a(k.f2037a, k.f2038b, k.f2039c);

    static {
        b.a.a.f1737a = new b.a.a() { // from class: b.w.1
            @Override // b.a.a
            public void a(r.a aVar, String str) {
                aVar.a(str);
            }

            @Override // b.a.a
            public void a(r.a aVar, String str, String str2) {
                aVar.b(str, str2);
            }

            @Override // b.a.a
            public boolean a(j jVar, b.a.b.c cVar) {
                return jVar.b(cVar);
            }

            @Override // b.a.a
            public b.a.b.c a(j jVar, b.a aVar, b.a.b.g gVar) {
                return jVar.a(aVar, gVar);
            }

            @Override // b.a.a
            public void b(j jVar, b.a.b.c cVar) {
                jVar.a(cVar);
            }

            @Override // b.a.a
            public b.a.b.d a(j jVar) {
                return jVar.f2034a;
            }

            @Override // b.a.a
            public void a(k kVar, SSLSocket sSLSocket, boolean z2) {
                kVar.a(sSLSocket, z2);
            }
        };
    }

    public w() {
        this(new a());
    }

    private w(a aVar) {
        this.f2092a = aVar.f2096a;
        this.f2093b = aVar.f2097b;
        this.f2094c = aVar.f2098c;
        this.f2095d = aVar.f2099d;
        this.e = b.a.c.a(aVar.e);
        this.f = b.a.c.a(aVar.f);
        this.g = aVar.g;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.j;
        this.k = aVar.k;
        Iterator<k> it = this.f2095d.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            z2 = z2 || it.next().a();
        }
        if (aVar.l != null || !z2) {
            this.l = aVar.l;
            this.m = aVar.m;
        } else {
            X509TrustManager x509TrustManagerA = A();
            this.l = a(x509TrustManagerA);
            this.m = b.a.g.b.a(x509TrustManagerA);
        }
        this.n = aVar.n;
        this.o = aVar.o.a(this.m);
        this.p = aVar.p;
        this.q = aVar.q;
        this.r = aVar.r;
        this.s = aVar.s;
        this.t = aVar.t;
        this.u = aVar.u;
        this.v = aVar.v;
        this.w = aVar.w;
        this.x = aVar.x;
        this.y = aVar.y;
    }

    private X509TrustManager A() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length != 1 || !(trustManagers[0] instanceof X509TrustManager)) {
                throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
            }
            return (X509TrustManager) trustManagers[0];
        } catch (GeneralSecurityException e) {
            throw new AssertionError();
        }
    }

    private SSLSocketFactory a(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (GeneralSecurityException e) {
            throw new AssertionError();
        }
    }

    public int a() {
        return this.w;
    }

    public int b() {
        return this.x;
    }

    public int c() {
        return this.y;
    }

    public Proxy d() {
        return this.f2093b;
    }

    public ProxySelector e() {
        return this.g;
    }

    public m f() {
        return this.h;
    }

    b.a.a.e g() {
        return this.i != null ? this.i.f2010a : this.j;
    }

    public o h() {
        return this.s;
    }

    public SocketFactory i() {
        return this.k;
    }

    public SSLSocketFactory j() {
        return this.l;
    }

    public HostnameVerifier k() {
        return this.n;
    }

    public g l() {
        return this.o;
    }

    public b m() {
        return this.q;
    }

    public b n() {
        return this.p;
    }

    public j o() {
        return this.r;
    }

    public boolean p() {
        return this.t;
    }

    public boolean q() {
        return this.u;
    }

    public boolean r() {
        return this.v;
    }

    public n s() {
        return this.f2092a;
    }

    public List<x> t() {
        return this.f2094c;
    }

    public List<k> u() {
        return this.f2095d;
    }

    public List<t> v() {
        return this.e;
    }

    public List<t> w() {
        return this.f;
    }

    @Override // b.e.a
    public e a(z zVar) {
        return new y(this, zVar);
    }

    public a x() {
        return new a(this);
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        n f2096a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Proxy f2097b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        List<x> f2098c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        List<k> f2099d;
        final List<t> e;
        final List<t> f;
        ProxySelector g;
        m h;
        c i;
        b.a.a.e j;
        SocketFactory k;
        SSLSocketFactory l;
        b.a.g.b m;
        HostnameVerifier n;
        g o;
        b p;
        b q;
        j r;
        o s;
        boolean t;
        boolean u;
        boolean v;
        int w;
        int x;
        int y;

        public a() {
            this.e = new ArrayList();
            this.f = new ArrayList();
            this.f2096a = new n();
            this.f2098c = w.z;
            this.f2099d = w.A;
            this.g = ProxySelector.getDefault();
            this.h = m.f2049a;
            this.k = SocketFactory.getDefault();
            this.n = b.a.g.d.f1972a;
            this.o = g.f2020a;
            this.p = b.f2001a;
            this.q = b.f2001a;
            this.r = new j();
            this.s = o.f2054a;
            this.t = true;
            this.u = true;
            this.v = true;
            this.w = 10000;
            this.x = 10000;
            this.y = 10000;
        }

        a(w wVar) {
            this.e = new ArrayList();
            this.f = new ArrayList();
            this.f2096a = wVar.f2092a;
            this.f2097b = wVar.f2093b;
            this.f2098c = wVar.f2094c;
            this.f2099d = wVar.f2095d;
            this.e.addAll(wVar.e);
            this.f.addAll(wVar.f);
            this.g = wVar.g;
            this.h = wVar.h;
            this.j = wVar.j;
            this.i = wVar.i;
            this.k = wVar.k;
            this.l = wVar.l;
            this.m = wVar.m;
            this.n = wVar.n;
            this.o = wVar.o;
            this.p = wVar.p;
            this.q = wVar.q;
            this.r = wVar.r;
            this.s = wVar.s;
            this.t = wVar.t;
            this.u = wVar.u;
            this.v = wVar.v;
            this.w = wVar.w;
            this.x = wVar.x;
            this.y = wVar.y;
        }

        public a a(long j, TimeUnit timeUnit) {
            if (j < 0) {
                throw new IllegalArgumentException("timeout < 0");
            }
            if (timeUnit == null) {
                throw new NullPointerException("unit == null");
            }
            long millis = timeUnit.toMillis(j);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException("Timeout too large.");
            }
            if (millis == 0 && j > 0) {
                throw new IllegalArgumentException("Timeout too small.");
            }
            this.w = (int) millis;
            return this;
        }

        public a b(long j, TimeUnit timeUnit) {
            if (j < 0) {
                throw new IllegalArgumentException("timeout < 0");
            }
            if (timeUnit == null) {
                throw new NullPointerException("unit == null");
            }
            long millis = timeUnit.toMillis(j);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException("Timeout too large.");
            }
            if (millis == 0 && j > 0) {
                throw new IllegalArgumentException("Timeout too small.");
            }
            this.x = (int) millis;
            return this;
        }

        public a a(m mVar) {
            if (mVar == null) {
                throw new NullPointerException("cookieJar == null");
            }
            this.h = mVar;
            return this;
        }

        public a a(boolean z) {
            this.u = z;
            return this;
        }

        public a a(t tVar) {
            this.e.add(tVar);
            return this;
        }

        public a b(t tVar) {
            this.f.add(tVar);
            return this;
        }

        public w a() {
            return new w(this);
        }
    }
}
