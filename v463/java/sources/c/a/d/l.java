package c.a.d;

import c.aa;
import c.ab;
import c.ac;
import c.ad;
import c.ae;
import c.t;
import c.u;
import c.x;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class l implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f2670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c.a.b.g f2671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2672c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f2673d;

    public l(x xVar) {
        this.f2670a = xVar;
    }

    public void a() {
        this.f2673d = true;
        c.a.b.g gVar = this.f2671b;
        if (gVar != null) {
            gVar.e();
        }
    }

    public boolean b() {
        return this.f2673d;
    }

    public boolean c() {
        return this.f2672c;
    }

    @Override // c.u
    public ac a(u.a aVar) throws IOException {
        aa aaVarA = aVar.a();
        this.f2671b = new c.a.b.g(this.f2670a.o(), a(aaVarA.a()));
        ac acVar = null;
        int i = 0;
        while (!this.f2673d) {
            try {
                try {
                    ac acVarA = ((i) aVar).a(aaVarA, this.f2671b, null, null);
                    if (acVar != null) {
                        acVarA = acVarA.h().c(acVar.h().a((ad) null).a()).a();
                    }
                    acVar = acVarA;
                    aaVarA = a(acVar);
                } catch (c.a.b.e e2) {
                    if (!a(e2.a(), true, aaVarA)) {
                        throw e2.a();
                    }
                } catch (IOException e3) {
                    if (!a(e3, false, aaVarA)) {
                        throw e3;
                    }
                }
                if (aaVarA == null) {
                    if (!this.f2672c) {
                        this.f2671b.c();
                    }
                    return acVar;
                }
                c.a.c.a(acVar.g());
                i++;
                if (i > 20) {
                    this.f2671b.c();
                    throw new ProtocolException("Too many follow-up requests: " + i);
                }
                if (aaVarA.d() instanceof n) {
                    throw new HttpRetryException("Cannot retry streamed HTTP body", acVar.b());
                }
                if (!a(acVar, aaVarA.a())) {
                    this.f2671b.c();
                    this.f2671b = new c.a.b.g(this.f2670a.o(), a(aaVarA.a()));
                } else if (this.f2671b.a() != null) {
                    throw new IllegalStateException("Closing the body of " + acVar + " didn't close its backing stream. Bad interceptor?");
                }
            } catch (Throwable th) {
                this.f2671b.a((IOException) null);
                this.f2671b.c();
                throw th;
            }
        }
        this.f2671b.c();
        throw new IOException("Canceled");
    }

    private c.a a(t tVar) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifierK;
        c.g gVarL;
        if (tVar.c()) {
            SSLSocketFactory sSLSocketFactoryJ = this.f2670a.j();
            hostnameVerifierK = this.f2670a.k();
            sSLSocketFactory = sSLSocketFactoryJ;
            gVarL = this.f2670a.l();
        } else {
            sSLSocketFactory = null;
            hostnameVerifierK = null;
            gVarL = null;
        }
        return new c.a(tVar.f(), tVar.g(), this.f2670a.h(), this.f2670a.i(), sSLSocketFactory, hostnameVerifierK, gVarL, this.f2670a.n(), this.f2670a.d(), this.f2670a.t(), this.f2670a.u(), this.f2670a.e());
    }

    private boolean a(IOException iOException, boolean z, aa aaVar) {
        this.f2671b.a(iOException);
        if (this.f2670a.r()) {
            return (z || !(aaVar.d() instanceof n)) && a(iOException, z) && this.f2671b.f();
        }
        return false;
    }

    private boolean a(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && z : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private aa a(ac acVar) throws IOException {
        String strA;
        t tVarC;
        Proxy proxyD;
        if (acVar == null) {
            throw new IllegalStateException();
        }
        c.a.b.c cVarB = this.f2671b.b();
        ae aeVarA = cVarB != null ? cVarB.a() : null;
        int iB = acVar.b();
        String strB = acVar.a().b();
        if (iB == 307 || iB == 308) {
            if (!strB.equals("GET") && !strB.equals("HEAD")) {
                return null;
            }
        } else {
            if (iB == 401) {
                return this.f2670a.m().a(aeVarA, acVar);
            }
            if (iB == 407) {
                if (aeVarA != null) {
                    proxyD = aeVarA.b();
                } else {
                    proxyD = this.f2670a.d();
                }
                if (proxyD.type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                return this.f2670a.n().a(aeVarA, acVar);
            }
            if (iB == 408) {
                if (acVar.a().d() instanceof n) {
                    return null;
                }
                return acVar.a();
            }
            switch (iB) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return null;
            }
        }
        if (!this.f2670a.q() || (strA = acVar.a("Location")) == null || (tVarC = acVar.a().a().c(strA)) == null) {
            return null;
        }
        if (!tVarC.b().equals(acVar.a().a().b()) && !this.f2670a.p()) {
            return null;
        }
        aa.a aVarE = acVar.a().e();
        if (g.c(strB)) {
            if (g.d(strB)) {
                aVarE.a("GET", (ab) null);
            } else {
                aVarE.a(strB, (ab) null);
            }
            aVarE.b("Transfer-Encoding");
            aVarE.b("Content-Length");
            aVarE.b("Content-Type");
        }
        if (!a(acVar, tVarC)) {
            aVarE.b("Authorization");
        }
        return aVarE.a(tVarC).a();
    }

    private boolean a(ac acVar, t tVar) {
        t tVarA = acVar.a().a();
        return tVarA.f().equals(tVar.f()) && tVarA.g() == tVar.g() && tVarA.b().equals(tVar.b());
    }
}
