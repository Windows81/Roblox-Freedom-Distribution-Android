package b;

import b.s;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final s f1733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final o f1734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final SocketFactory f1735c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final b f1736d;
    final List<x> e;
    final List<k> f;
    final ProxySelector g;
    final Proxy h;
    final SSLSocketFactory i;
    final HostnameVerifier j;
    final g k;

    public a(String str, int i, o oVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, g gVar, b bVar, Proxy proxy, List<x> list, List<k> list2, ProxySelector proxySelector) {
        this.f1733a = new s.a().a(sSLSocketFactory != null ? "https" : "http").b(str).a(i).c();
        if (oVar == null) {
            throw new NullPointerException("dns == null");
        }
        this.f1734b = oVar;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.f1735c = socketFactory;
        if (bVar == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f1736d = bVar;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.e = b.a.c.a(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f = b.a.c.a(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.g = proxySelector;
        this.h = proxy;
        this.i = sSLSocketFactory;
        this.j = hostnameVerifier;
        this.k = gVar;
    }

    public s a() {
        return this.f1733a;
    }

    public o b() {
        return this.f1734b;
    }

    public SocketFactory c() {
        return this.f1735c;
    }

    public b d() {
        return this.f1736d;
    }

    public List<x> e() {
        return this.e;
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
        return this.f1733a.equals(aVar.f1733a) && this.f1734b.equals(aVar.f1734b) && this.f1736d.equals(aVar.f1736d) && this.e.equals(aVar.e) && this.f.equals(aVar.f) && this.g.equals(aVar.g) && b.a.c.a(this.h, aVar.h) && b.a.c.a(this.i, aVar.i) && b.a.c.a(this.j, aVar.j) && b.a.c.a(this.k, aVar.k);
    }

    public int hashCode() {
        return (((this.j != null ? this.j.hashCode() : 0) + (((this.i != null ? this.i.hashCode() : 0) + (((this.h != null ? this.h.hashCode() : 0) + ((((((((((((this.f1733a.hashCode() + 527) * 31) + this.f1734b.hashCode()) * 31) + this.f1736d.hashCode()) * 31) + this.e.hashCode()) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31)) * 31)) * 31)) * 31) + (this.k != null ? this.k.hashCode() : 0);
    }
}
