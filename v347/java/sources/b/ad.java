package b;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ad {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final a f1994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Proxy f1995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final InetSocketAddress f1996c;

    public ad(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f1994a = aVar;
        this.f1995b = proxy;
        this.f1996c = inetSocketAddress;
    }

    public a a() {
        return this.f1994a;
    }

    public Proxy b() {
        return this.f1995b;
    }

    public InetSocketAddress c() {
        return this.f1996c;
    }

    public boolean d() {
        return this.f1994a.i != null && this.f1995b.type() == Proxy.Type.HTTP;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ad)) {
            return false;
        }
        ad adVar = (ad) obj;
        return this.f1994a.equals(adVar.f1994a) && this.f1995b.equals(adVar.f1995b) && this.f1996c.equals(adVar.f1996c);
    }

    public int hashCode() {
        return ((((this.f1994a.hashCode() + 527) * 31) + this.f1995b.hashCode()) * 31) + this.f1996c.hashCode();
    }
}
