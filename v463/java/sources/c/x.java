package c;

import c.e;
import c.s;
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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class x implements e.a, Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final o f2852a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Proxy f2853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final List<y> f2854c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final List<k> f2855d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<u> f2856e;
    final List<u> f;
    final ProxySelector g;
    final m h;
    final c i;
    final c.a.a.e j;
    final SocketFactory k;
    final SSLSocketFactory l;
    final c.a.g.b m;
    final HostnameVerifier n;
    final g o;
    final b p;
    final b q;
    final j r;
    final p s;
    final boolean t;
    final boolean u;
    final boolean v;
    final int w;
    final int x;
    final int y;
    private static final List<y> z = c.a.c.a(y.HTTP_2, y.SPDY_3, y.HTTP_1_1);
    private static final List<k> A = c.a.c.a(k.f2789a, k.f2790b, k.f2791c);

    static {
        c.a.a.f2438a = new c.a.a() { // from class: c.x.1
            @Override // c.a.a
            public void a(s.a aVar, String str) {
                aVar.a(str);
            }

            @Override // c.a.a
            public void a(s.a aVar, String str, String str2) {
                aVar.b(str, str2);
            }

            @Override // c.a.a
            public boolean a(j jVar, c.a.b.c cVar) {
                return jVar.b(cVar);
            }

            @Override // c.a.a
            public c.a.b.c a(j jVar, c.a aVar, c.a.b.g gVar) {
                return jVar.a(aVar, gVar);
            }

            @Override // c.a.a
            public void b(j jVar, c.a.b.c cVar) {
                jVar.a(cVar);
            }

            @Override // c.a.a
            public c.a.b.d a(j jVar) {
                return jVar.f2785a;
            }

            @Override // c.a.a
            public void a(k kVar, SSLSocket sSLSocket, boolean z2) {
                kVar.a(sSLSocket, z2);
            }
        };
    }

    public x() {
        this(new a());
    }

    private x(a aVar) {
        boolean z2;
        this.f2852a = aVar.f2857a;
        this.f2853b = aVar.f2858b;
        this.f2854c = aVar.f2859c;
        this.f2855d = aVar.f2860d;
        this.f2856e = c.a.c.a(aVar.f2861e);
        this.f = c.a.c.a(aVar.f);
        this.g = aVar.g;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.j;
        this.k = aVar.k;
        Iterator<k> it = this.f2855d.iterator();
        loop0: while (true) {
            while (it.hasNext()) {
                z2 = z2 || it.next().a();
            }
        }
        if (aVar.l != null || !z2) {
            this.l = aVar.l;
            this.m = aVar.m;
        } else {
            X509TrustManager x509TrustManagerA = A();
            this.l = a(x509TrustManagerA);
            this.m = c.a.g.b.a(x509TrustManagerA);
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
        } catch (GeneralSecurityException unused) {
            throw new AssertionError();
        }
    }

    private SSLSocketFactory a(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (GeneralSecurityException unused) {
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
        return this.f2853b;
    }

    public ProxySelector e() {
        return this.g;
    }

    public m f() {
        return this.h;
    }

    c.a.a.e g() {
        c cVar = this.i;
        return cVar != null ? cVar.f2758a : this.j;
    }

    public p h() {
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

    public o s() {
        return this.f2852a;
    }

    public List<y> t() {
        return this.f2854c;
    }

    public List<k> u() {
        return this.f2855d;
    }

    public List<u> v() {
        return this.f2856e;
    }

    public List<u> w() {
        return this.f;
    }

    @Override // c.e.a
    public e a(aa aaVar) {
        return new z(this, aaVar);
    }

    public a x() {
        return new a(this);
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        o f2857a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Proxy f2858b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        List<y> f2859c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        List<k> f2860d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final List<u> f2861e;
        final List<u> f;
        ProxySelector g;
        m h;
        c i;
        c.a.a.e j;
        SocketFactory k;
        SSLSocketFactory l;
        c.a.g.b m;
        HostnameVerifier n;
        g o;
        b p;
        b q;
        j r;
        p s;
        boolean t;
        boolean u;
        boolean v;
        int w;
        int x;
        int y;

        public a() {
            this.f2861e = new ArrayList();
            this.f = new ArrayList();
            this.f2857a = new o();
            this.f2859c = x.z;
            this.f2860d = x.A;
            this.g = ProxySelector.getDefault();
            this.h = m.f2803a;
            this.k = SocketFactory.getDefault();
            this.n = c.a.g.d.f2706a;
            this.o = g.f2770a;
            this.p = b.f2748a;
            this.q = b.f2748a;
            this.r = new j();
            this.s = p.f2809a;
            this.t = true;
            this.u = true;
            this.v = true;
            this.w = 10000;
            this.x = 10000;
            this.y = 10000;
        }

        a(x xVar) {
            this.f2861e = new ArrayList();
            this.f = new ArrayList();
            this.f2857a = xVar.f2852a;
            this.f2858b = xVar.f2853b;
            this.f2859c = xVar.f2854c;
            this.f2860d = xVar.f2855d;
            this.f2861e.addAll(xVar.f2856e);
            this.f.addAll(xVar.f);
            this.g = xVar.g;
            this.h = xVar.h;
            this.j = xVar.j;
            this.i = xVar.i;
            this.k = xVar.k;
            this.l = xVar.l;
            this.m = xVar.m;
            this.n = xVar.n;
            this.o = xVar.o;
            this.p = xVar.p;
            this.q = xVar.q;
            this.r = xVar.r;
            this.s = xVar.s;
            this.t = xVar.t;
            this.u = xVar.u;
            this.v = xVar.v;
            this.w = xVar.w;
            this.x = xVar.x;
            this.y = xVar.y;
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

        public a a(u uVar) {
            this.f2861e.add(uVar);
            return this;
        }

        public a b(u uVar) {
            this.f.add(uVar);
            return this;
        }

        public x a() {
            return new x(this);
        }
    }
}
