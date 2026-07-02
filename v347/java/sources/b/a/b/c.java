package b.a.b;

import b.a.c.d;
import b.ad;
import b.i;
import b.k;
import b.q;
import b.s;
import b.x;
import b.z;
import c.l;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes.dex */
public final class c extends d.b implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Socket f1768a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile b.a.c.d f1769b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1770c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c.e f1771d;
    public c.d e;
    public int f;
    public boolean h;
    private final ad k;
    private Socket l;
    private q m;
    private x n;
    public final List<Reference<g>> g = new ArrayList();
    public long i = Long.MAX_VALUE;

    public c(ad adVar) {
        this.k = adVar;
    }

    public void a(int i, int i2, int i3, List<k> list, boolean z) throws Throwable {
        if (this.n != null) {
            throw new IllegalStateException("already connected");
        }
        b bVar = new b(list);
        if (this.k.a().i() == null) {
            if (!list.contains(k.f2039c)) {
                throw new e(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String strF = this.k.a().a().f();
            if (!b.a.f.e.b().a(strF)) {
                throw new e(new UnknownServiceException("CLEARTEXT communication to " + strF + " not permitted by network security policy"));
            }
        }
        e eVar = null;
        while (this.n == null) {
            try {
                if (this.k.d()) {
                    a(i, i2, i3, bVar);
                } else {
                    b(i, i2, i3, bVar);
                }
            } catch (IOException e) {
                b.a.c.a(this.f1768a);
                b.a.c.a(this.l);
                this.f1768a = null;
                this.l = null;
                this.f1771d = null;
                this.e = null;
                this.m = null;
                this.n = null;
                if (eVar == null) {
                    eVar = new e(e);
                } else {
                    eVar.a(e);
                }
                if (!z) {
                    throw eVar;
                }
                if (!bVar.a(e)) {
                    throw eVar;
                }
            }
        }
    }

    private void a(int i, int i2, int i3, b bVar) throws Throwable {
        z zVarG = g();
        s sVarA = zVarG.a();
        int i4 = 0;
        while (true) {
            i4++;
            if (i4 > 21) {
                throw new ProtocolException("Too many tunnel connections attempted: 21");
            }
            a(i, i2);
            zVarG = a(i2, i3, zVarG, sVarA);
            if (zVarG != null) {
                b.a.c.a(this.l);
                this.l = null;
                this.e = null;
                this.f1771d = null;
            } else {
                a(i2, i3, bVar);
                return;
            }
        }
    }

    private void b(int i, int i2, int i3, b bVar) throws Throwable {
        a(i, i2);
        a(i2, i3, bVar);
    }

    private void a(int i, int i2) throws IOException {
        Proxy proxyB = this.k.b();
        this.l = (proxyB.type() == Proxy.Type.DIRECT || proxyB.type() == Proxy.Type.HTTP) ? this.k.a().c().createSocket() : new Socket(proxyB);
        this.l.setSoTimeout(i2);
        try {
            b.a.f.e.b().a(this.l, this.k.c(), i);
            this.f1771d = l.a(l.b(this.l));
            this.e = l.a(l.a(this.l));
        } catch (ConnectException e) {
            throw new ConnectException("Failed to connect to " + this.k.c());
        }
    }

    private void a(int i, int i2, b bVar) throws Throwable {
        if (this.k.a().i() != null) {
            b(i, i2, bVar);
        } else {
            this.n = x.HTTP_1_1;
            this.f1768a = this.l;
        }
        if (this.n == x.SPDY_3 || this.n == x.HTTP_2) {
            this.f1768a.setSoTimeout(0);
            b.a.c.d dVarA = new d.a(true).a(this.f1768a, this.k.a().a().f(), this.f1771d, this.e).a(this.n).a(this).a();
            dVarA.d();
            this.f = dVarA.b();
            this.f1769b = dVarA;
            return;
        }
        this.f = 1;
    }

    private void b(int i, int i2, b bVar) throws Throwable {
        SSLSocket sSLSocket;
        SSLSocket sSLSocket2 = null;
        b.a aVarA = this.k.a();
        try {
            try {
                sSLSocket = (SSLSocket) aVarA.i().createSocket(this.l, aVarA.a().f(), aVarA.a().g(), true);
            } catch (AssertionError e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            k kVarA = bVar.a(sSLSocket);
            if (kVarA.d()) {
                b.a.f.e.b().a(sSLSocket, aVarA.a().f(), aVarA.e());
            }
            sSLSocket.startHandshake();
            q qVarA = q.a(sSLSocket.getSession());
            if (!aVarA.j().verify(aVarA.a().f(), sSLSocket.getSession())) {
                X509Certificate x509Certificate = (X509Certificate) qVarA.b().get(0);
                throw new SSLPeerUnverifiedException("Hostname " + aVarA.a().f() + " not verified:\n    certificate: " + b.g.a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + b.a.g.d.a(x509Certificate));
            }
            aVarA.k().a(aVarA.a().f(), qVarA.b());
            String strA = kVarA.d() ? b.a.f.e.b().a(sSLSocket) : null;
            this.f1768a = sSLSocket;
            this.f1771d = l.a(l.b(this.f1768a));
            this.e = l.a(l.a(this.f1768a));
            this.m = qVarA;
            this.n = strA != null ? x.a(strA) : x.HTTP_1_1;
            if (sSLSocket != null) {
                b.a.f.e.b().b(sSLSocket);
            }
        } catch (AssertionError e2) {
            e = e2;
            if (!b.a.c.a(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            sSLSocket2 = sSLSocket;
            th = th2;
            if (sSLSocket2 != null) {
                b.a.f.e.b().b(sSLSocket2);
            }
            b.a.c.a((Socket) sSLSocket2);
            throw th;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:104)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private b.z a(int r9, int r10, b.z r11, b.s r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.a.b.c.a(int, int, b.z, b.s):b.z");
    }

    private z g() {
        return new z.a().a(this.k.a().a()).a("Host", b.a.c.a(this.k.a().a(), true)).a("Proxy-Connection", "Keep-Alive").a("User-Agent", b.a.d.a()).a();
    }

    @Override // b.i
    public ad a() {
        return this.k;
    }

    public void c() {
        b.a.c.a(this.l);
    }

    public Socket d() {
        return this.f1768a;
    }

    public boolean a(boolean z) {
        if (this.f1768a.isClosed() || this.f1768a.isInputShutdown() || this.f1768a.isOutputShutdown()) {
            return false;
        }
        if (this.f1769b != null || !z) {
            return true;
        }
        try {
            int soTimeout = this.f1768a.getSoTimeout();
            try {
                this.f1768a.setSoTimeout(1);
                if (this.f1771d.f()) {
                    this.f1768a.setSoTimeout(soTimeout);
                    return false;
                }
                this.f1768a.setSoTimeout(soTimeout);
                return true;
            } catch (Throwable th) {
                this.f1768a.setSoTimeout(soTimeout);
                throw th;
            }
        } catch (SocketTimeoutException e) {
            return true;
        } catch (IOException e2) {
            return false;
        }
    }

    @Override // b.a.c.d.b
    public void a(b.a.c.e eVar) throws IOException {
        eVar.a(b.a.c.a.REFUSED_STREAM);
    }

    @Override // b.a.c.d.b
    public void a(b.a.c.d dVar) {
        this.f = dVar.b();
    }

    public q e() {
        return this.m;
    }

    public boolean f() {
        return this.f1769b != null;
    }

    @Override // b.i
    public x b() {
        if (this.f1769b == null) {
            return this.n != null ? this.n : x.HTTP_1_1;
        }
        return this.f1769b.a();
    }

    public String toString() {
        return "Connection{" + this.k.a().a().f() + ":" + this.k.a().a().g() + ", proxy=" + this.k.b() + " hostAddress=" + this.k.c() + " cipherSuite=" + (this.m != null ? this.m.a() : "none") + " protocol=" + this.n + '}';
    }
}
