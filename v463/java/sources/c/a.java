package c;

import c.t;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final t f2433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final p f2434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final SocketFactory f2435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final b f2436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<y> f2437e;
    final List<k> f;
    final ProxySelector g;
    final Proxy h;
    final SSLSocketFactory i;
    final HostnameVerifier j;
    final g k;

    public a(String str, int i, p pVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, g gVar, b bVar, Proxy proxy, List<y> list, List<k> list2, ProxySelector proxySelector) {
        this.f2433a = new t.a().a(sSLSocketFactory != null ? "https" : "http").b(str).a(i).c();
        if (pVar == null) {
            throw new NullPointerException("dns == null");
        }
        this.f2434b = pVar;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.f2435c = socketFactory;
        if (bVar == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f2436d = bVar;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f2437e = c.a.c.a(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f = c.a.c.a(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.g = proxySelector;
        this.h = proxy;
        this.i = sSLSocketFactory;
        this.j = hostnameVerifier;
        this.k = gVar;
    }

    public t a() {
        return this.f2433a;
    }

    public p b() {
        return this.f2434b;
    }

    public SocketFactory c() {
        return this.f2435c;
    }

    public b d() {
        return this.f2436d;
    }

    public List<y> e() {
        return this.f2437e;
    }

    public List<k> f() {
        return this.f;
    }

    public ProxySelector g() {
        return this.g;
    }

    public Proxy h() {
        return this.h;
    }

    public SSLSocketFactory i() {
        return this.i;
    }

    public HostnameVerifier j() {
        return this.j;
    }

    public g k() {
        return this.k;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f2433a.equals(aVar.f2433a) && this.f2434b.equals(aVar.f2434b) && this.f2436d.equals(aVar.f2436d) && this.f2437e.equals(aVar.f2437e) && this.f.equals(aVar.f) && this.g.equals(aVar.g) && c.a.c.a(this.h, aVar.h) && c.a.c.a(this.i, aVar.i) && c.a.c.a(this.j, aVar.j) && c.a.c.a(this.k, aVar.k);
    }

    public int hashCode() {
        int iHashCode = (((((((((((527 + this.f2433a.hashCode()) * 31) + this.f2434b.hashCode()) * 31) + this.f2436d.hashCode()) * 31) + this.f2437e.hashCode()) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31;
        Proxy proxy = this.h;
        int iHashCode2 = (iHashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.i;
        int iHashCode3 = (iHashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.j;
        int iHashCode4 = (iHashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        g gVar = this.k;
        return iHashCode4 + (gVar != null ? gVar.hashCode() : 0);
    }
}
