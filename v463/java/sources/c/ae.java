package c;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final a f2740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Proxy f2741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final InetSocketAddress f2742c;

    public ae(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f2740a = aVar;
        this.f2741b = proxy;
        this.f2742c = inetSocketAddress;
    }

    public a a() {
        return this.f2740a;
    }

    public Proxy b() {
        return this.f2741b;
    }

    public InetSocketAddress c() {
        return this.f2742c;
    }

    public boolean d() {
        return this.f2740a.i != null && this.f2741b.type() == Proxy.Type.HTTP;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ae)) {
            return false;
        }
        ae aeVar = (ae) obj;
        return this.f2740a.equals(aeVar.f2740a) && this.f2741b.equals(aeVar.f2741b) && this.f2742c.equals(aeVar.f2742c);
    }

    public int hashCode() {
        return ((((527 + this.f2740a.hashCode()) * 31) + this.f2741b.hashCode()) * 31) + this.f2742c.hashCode();
    }
}
