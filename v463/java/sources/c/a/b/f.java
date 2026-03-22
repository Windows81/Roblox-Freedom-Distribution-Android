package c.a.b;

import c.ae;
import c.t;
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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c.a f2481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f2482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Proxy f2483c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private InetSocketAddress f2484d;
    private int f;
    private int h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<Proxy> f2485e = Collections.emptyList();
    private List<InetSocketAddress> g = Collections.emptyList();
    private final List<ae> i = new ArrayList();

    public f(c.a aVar, d dVar) {
        this.f2481a = aVar;
        this.f2482b = dVar;
        a(aVar.a(), aVar.h());
    }

    public boolean a() {
        return e() || c() || g();
    }

    public ae b() throws IOException {
        if (!e()) {
            if (!c()) {
                if (!g()) {
                    throw new NoSuchElementException();
                }
                return h();
            }
            this.f2483c = d();
        }
        InetSocketAddress inetSocketAddressF = f();
        this.f2484d = inetSocketAddressF;
        ae aeVar = new ae(this.f2481a, this.f2483c, inetSocketAddressF);
        if (!this.f2482b.c(aeVar)) {
            return aeVar;
        }
        this.i.add(aeVar);
        return b();
    }

    public void a(ae aeVar, IOException iOException) {
        if (aeVar.b().type() != Proxy.Type.DIRECT && this.f2481a.g() != null) {
            this.f2481a.g().connectFailed(this.f2481a.a().a(), aeVar.b().address(), iOException);
        }
        this.f2482b.a(aeVar);
    }

    private void a(t tVar, Proxy proxy) {
        if (proxy != null) {
            this.f2485e = Collections.singletonList(proxy);
        } else {
            this.f2485e = new ArrayList();
            List<Proxy> listSelect = this.f2481a.g().select(tVar.a());
            if (listSelect != null) {
                this.f2485e.addAll(listSelect);
            }
            this.f2485e.removeAll(Collections.singleton(Proxy.NO_PROXY));
            this.f2485e.add(Proxy.NO_PROXY);
        }
        this.f = 0;
    }

    private boolean c() {
        return this.f < this.f2485e.size();
    }

    private Proxy d() throws IOException {
        if (!c()) {
            throw new SocketException("No route to " + this.f2481a.a().f() + "; exhausted proxy configurations: " + this.f2485e);
        }
        List<Proxy> list = this.f2485e;
        int i = this.f;
        this.f = i + 1;
        Proxy proxy = list.get(i);
        a(proxy);
        return proxy;
    }

    private void a(Proxy proxy) throws IOException {
        String strF;
        int iG;
        this.g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            strF = this.f2481a.a().f();
            iG = this.f2481a.a().g();
        } else {
            SocketAddress socketAddressAddress = proxy.address();
            if (!(socketAddressAddress instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
            strF = a(inetSocketAddress);
            iG = inetSocketAddress.getPort();
        }
        if (iG < 1 || iG > 65535) {
            throw new SocketException("No route to " + strF + ":" + iG + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.g.add(InetSocketAddress.createUnresolved(strF, iG));
        } else {
            List<InetAddress> listA = this.f2481a.b().a(strF);
            int size = listA.size();
            for (int i = 0; i < size; i++) {
                this.g.add(new InetSocketAddress(listA.get(i), iG));
            }
        }
        this.h = 0;
    }

    static String a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        if (address == null) {
            return inetSocketAddress.getHostName();
        }
        return address.getHostAddress();
    }

    private boolean e() {
        return this.h < this.g.size();
    }

    private InetSocketAddress f() throws IOException {
        if (!e()) {
            throw new SocketException("No route to " + this.f2481a.a().f() + "; exhausted inet socket addresses: " + this.g);
        }
        List<InetSocketAddress> list = this.g;
        int i = this.h;
        this.h = i + 1;
        return list.get(i);
    }

    private boolean g() {
        return !this.i.isEmpty();
    }

    private ae h() {
        return this.i.remove(0);
    }
}
