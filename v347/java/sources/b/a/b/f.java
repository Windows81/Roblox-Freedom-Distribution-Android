package b.a.b;

import b.ad;
import b.s;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b.a f1775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f1776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Proxy f1777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private InetSocketAddress f1778d;
    private int f;
    private int h;
    private List<Proxy> e = Collections.emptyList();
    private List<InetSocketAddress> g = Collections.emptyList();
    private final List<ad> i = new ArrayList();

    public f(b.a aVar, d dVar) {
        this.f1775a = aVar;
        this.f1776b = dVar;
        a(aVar.a(), aVar.h());
    }

    public boolean a() {
        return e() || c() || g();
    }

    public ad b() throws IOException {
        if (!e()) {
            if (!c()) {
                if (!g()) {
                    throw new NoSuchElementException();
                }
                return h();
            }
            this.f1777c = d();
        }
        this.f1778d = f();
        ad adVar = new ad(this.f1775a, this.f1777c, this.f1778d);
        if (this.f1776b.c(adVar)) {
            this.i.add(adVar);
            return b();
        }
        return adVar;
    }

    public void a(ad adVar, IOException iOException) {
        if (adVar.b().type() != Proxy.Type.DIRECT && this.f1775a.g() != null) {
            this.f1775a.g().connectFailed(this.f1775a.a().a(), adVar.b().address(), iOException);
        }
        this.f1776b.a(adVar);
    }

    private void a(s sVar, Proxy proxy) {
        if (proxy != null) {
            this.e = Collections.singletonList(proxy);
        } else {
            this.e = new ArrayList();
            List<Proxy> listSelect = this.f1775a.g().select(sVar.a());
            if (listSelect != null) {
                this.e.addAll(listSelect);
            }
            this.e.removeAll(Collections.singleton(Proxy.NO_PROXY));
            this.e.add(Proxy.NO_PROXY);
        }
        this.f = 0;
    }

    private boolean c() {
        return this.f < this.e.size();
    }

    private Proxy d() throws IOException {
        if (!c()) {
            throw new SocketException("No route to " + this.f1775a.a().f() + "; exhausted proxy configurations: " + this.e);
        }
        List<Proxy> list = this.e;
        int i = this.f;
        this.f = i + 1;
        Proxy proxy = list.get(i);
        a(proxy);
        return proxy;
    }

    private void a(Proxy proxy) throws IOException {
        int iG;
        String str;
        this.g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            String strF = this.f1775a.a().f();
            iG = this.f1775a.a().g();
            str = strF;
        } else {
            SocketAddress socketAddressAddress = proxy.address();
            if (!(socketAddressAddress instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
            String strA = a(inetSocketAddress);
            iG = inetSocketAddress.getPort();
            str = strA;
        }
        if (iG < 1 || iG > 65535) {
            throw new SocketException("No route to " + str + ":" + iG + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.g.add(InetSocketAddress.createUnresolved(str, iG));
        } else {
            List<InetAddress> listA = this.f1775a.b().a(str);
            int size = listA.size();
            for (int i = 0; i < size; i++) {
                this.g.add(new InetSocketAddress(listA.get(i), iG));
            }
        }
        this.h = 0;
    }

    static String a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    private boolean e() {
        return this.h < this.g.size();
    }

    private InetSocketAddress f() throws IOException {
        if (!e()) {
            throw new SocketException("No route to " + this.f1775a.a().f() + "; exhausted inet socket addresses: " + this.g);
        }
        List<InetSocketAddress> list = this.g;
        int i = this.h;
        this.h = i + 1;
        return list.get(i);
    }

    private boolean g() {
        return !this.i.isEmpty();
    }

    private ad h() {
        return this.i.remove(0);
    }
}
