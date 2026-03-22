package c.a.b;

import c.a.c.d;
import c.aa;
import c.ac;
import c.ae;
import c.i;
import c.k;
import c.r;
import c.t;
import c.y;
import d.l;
import d.s;
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
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class c extends d.b implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Socket f2473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile c.a.c.d f2474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2475c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public d.e f2476d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public d.d f2477e;
    public int f;
    public boolean h;
    private final ae k;
    private Socket l;
    private r m;
    private y n;
    public final List<Reference<g>> g = new ArrayList();
    public long i = Long.MAX_VALUE;

    public c(ae aeVar) {
        this.k = aeVar;
    }

    public void a(int i, int i2, int i3, List<k> list, boolean z) throws Throwable {
        if (this.n != null) {
            throw new IllegalStateException("already connected");
        }
        b bVar = new b(list);
        if (this.k.a().i() == null) {
            if (!list.contains(k.f2791c)) {
                throw new e(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String strF = this.k.a().a().f();
            if (!c.a.f.e.b().a(strF)) {
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
            } catch (IOException e2) {
                c.a.c.a(this.f2473a);
                c.a.c.a(this.l);
                this.f2473a = null;
                this.l = null;
                this.f2476d = null;
                this.f2477e = null;
                this.m = null;
                this.n = null;
                if (eVar == null) {
                    eVar = new e(e2);
                } else {
                    eVar.a(e2);
                }
                if (z) {
                    if (!bVar.a(e2)) {
                        throw eVar;
                    }
                } else {
                    throw eVar;
                }
            }
        }
    }

    private void a(int i, int i2, int i3, b bVar) throws Throwable {
        aa aaVarG = g();
        t tVarA = aaVarG.a();
        int i4 = 0;
        while (true) {
            i4++;
            if (i4 > 21) {
                throw new ProtocolException("Too many tunnel connections attempted: 21");
            }
            a(i, i2);
            aaVarG = a(i2, i3, aaVarG, tVarA);
            if (aaVarG != null) {
                c.a.c.a(this.l);
                this.l = null;
                this.f2477e = null;
                this.f2476d = null;
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
        Socket socketCreateSocket = (proxyB.type() == Proxy.Type.DIRECT || proxyB.type() == Proxy.Type.HTTP) ? this.k.a().c().createSocket() : new Socket(proxyB);
        this.l = socketCreateSocket;
        socketCreateSocket.setSoTimeout(i2);
        try {
            c.a.f.e.b().a(this.l, this.k.c(), i);
            this.f2476d = l.a(l.b(this.l));
            this.f2477e = l.a(l.a(this.l));
        } catch (ConnectException unused) {
            throw new ConnectException("Failed to connect to " + this.k.c());
        }
    }

    private void a(int i, int i2, b bVar) throws Throwable {
        if (this.k.a().i() != null) {
            b(i, i2, bVar);
        } else {
            this.n = y.HTTP_1_1;
            this.f2473a = this.l;
        }
        if (this.n == y.SPDY_3 || this.n == y.HTTP_2) {
            this.f2473a.setSoTimeout(0);
            c.a.c.d dVarA = new d.a(true).a(this.f2473a, this.k.a().a().f(), this.f2476d, this.f2477e).a(this.n).a(this).a();
            dVarA.d();
            this.f = dVarA.b();
            this.f2474b = dVarA;
            return;
        }
        this.f = 1;
    }

    private void b(int i, int i2, b bVar) throws Throwable {
        SSLSocket sSLSocket;
        c.a aVarA = this.k.a();
        SSLSocket sSLSocket2 = null;
        try {
            try {
                sSLSocket = (SSLSocket) aVarA.i().createSocket(this.l, aVarA.a().f(), aVarA.a().g(), true);
            } catch (AssertionError e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            k kVarA = bVar.a(sSLSocket);
            if (kVarA.d()) {
                c.a.f.e.b().a(sSLSocket, aVarA.a().f(), aVarA.e());
            }
            sSLSocket.startHandshake();
            r rVarA = r.a(sSLSocket.getSession());
            if (!aVarA.j().verify(aVarA.a().f(), sSLSocket.getSession())) {
                X509Certificate x509Certificate = (X509Certificate) rVarA.b().get(0);
                throw new SSLPeerUnverifiedException("Hostname " + aVarA.a().f() + " not verified:\n    certificate: " + c.g.a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + c.a.g.d.a(x509Certificate));
            }
            aVarA.k().a(aVarA.a().f(), rVarA.b());
            String strA = kVarA.d() ? c.a.f.e.b().a(sSLSocket) : null;
            this.f2473a = sSLSocket;
            this.f2476d = l.a(l.b(sSLSocket));
            this.f2477e = l.a(l.a(this.f2473a));
            this.m = rVarA;
            this.n = strA != null ? y.a(strA) : y.HTTP_1_1;
            if (sSLSocket != null) {
                c.a.f.e.b().b(sSLSocket);
            }
        } catch (AssertionError e3) {
            e = e3;
            if (!c.a.c.a(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            th = th2;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                c.a.f.e.b().b(sSLSocket2);
            }
            c.a.c.a((Socket) sSLSocket2);
            throw th;
        }
    }

    private aa a(int i, int i2, aa aaVar, t tVar) throws IOException {
        String str = "CONNECT " + c.a.c.a(tVar, true) + " HTTP/1.1";
        while (true) {
            c.a.d.c cVar = new c.a.d.c(null, null, this.f2476d, this.f2477e);
            this.f2476d.a().a(i, TimeUnit.MILLISECONDS);
            this.f2477e.a().a(i2, TimeUnit.MILLISECONDS);
            cVar.a(aaVar.c(), str);
            cVar.c();
            ac acVarA = cVar.d().a(aaVar).a();
            long jA = c.a.d.f.a(acVarA);
            if (jA == -1) {
                jA = 0;
            }
            s sVarB = cVar.b(jA);
            c.a.c.b(sVarB, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
            sVarB.close();
            int iB = acVarA.b();
            if (iB == 200) {
                if (this.f2476d.c().f() && this.f2477e.c().f()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (iB == 407) {
                aa aaVarA = this.k.a().d().a(this.k, acVarA);
                if (aaVarA == null) {
                    throw new IOException("Failed to authenticate with proxy");
                }
                if ("close".equalsIgnoreCase(acVarA.a("Connection"))) {
                    return aaVarA;
                }
                aaVar = aaVarA;
            } else {
                throw new IOException("Unexpected response code for CONNECT: " + acVarA.b());
            }
        }
    }

    private aa g() {
        return new aa.a().a(this.k.a().a()).a("Host", c.a.c.a(this.k.a().a(), true)).a("Proxy-Connection", "Keep-Alive").a("User-Agent", c.a.d.a()).a();
    }

    @Override // c.i
    public ae a() {
        return this.k;
    }

    public void c() {
        c.a.c.a(this.l);
    }

    public Socket d() {
        return this.f2473a;
    }

    public boolean a(boolean z) {
        if (this.f2473a.isClosed() || this.f2473a.isInputShutdown() || this.f2473a.isOutputShutdown()) {
            return false;
        }
        if (this.f2474b == null && z) {
            try {
                int soTimeout = this.f2473a.getSoTimeout();
                try {
                    this.f2473a.setSoTimeout(1);
                    return !this.f2476d.f();
                } finally {
                    this.f2473a.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    @Override // c.a.c.d.b
    public void a(c.a.c.e eVar) throws IOException {
        eVar.a(c.a.c.a.REFUSED_STREAM);
    }

    @Override // c.a.c.d.b
    public void a(c.a.c.d dVar) {
        this.f = dVar.b();
    }

    public r e() {
        return this.m;
    }

    public boolean f() {
        return this.f2474b != null;
    }

    @Override // c.i
    public y b() {
        if (this.f2474b == null) {
            y yVar = this.n;
            return yVar != null ? yVar : y.HTTP_1_1;
        }
        return this.f2474b.a();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.k.a().a().f());
        sb.append(":");
        sb.append(this.k.a().a().g());
        sb.append(", proxy=");
        sb.append(this.k.b());
        sb.append(" hostAddress=");
        sb.append(this.k.c());
        sb.append(" cipherSuite=");
        r rVar = this.m;
        sb.append(rVar != null ? rVar.a() : "none");
        sb.append(" protocol=");
        sb.append(this.n);
        sb.append('}');
        return sb.toString();
    }
}
