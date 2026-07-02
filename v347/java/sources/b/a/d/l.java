package b.a.d;

import b.aa;
import b.ab;
import b.ac;
import b.ad;
import b.s;
import b.t;
import b.w;
import b.z;
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
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
public final class l implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final w f1939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b.a.b.g f1940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f1942d;

    public l(w wVar) {
        this.f1939a = wVar;
    }

    public void a() {
        this.f1942d = true;
        b.a.b.g gVar = this.f1940b;
        if (gVar != null) {
            gVar.e();
        }
    }

    public boolean b() {
        return this.f1942d;
    }

    public boolean c() {
        return this.f1941c;
    }

    @Override // b.t
    public ab a(t.a aVar) throws IOException {
        ab abVarA;
        z zVarA = aVar.a();
        this.f1940b = new b.a.b.g(this.f1939a.o(), a(zVarA.a()));
        int i = 0;
        z zVarA2 = zVarA;
        ab abVar = null;
        while (!this.f1942d) {
            try {
                try {
                    try {
                        abVarA = ((i) aVar).a(zVarA2, this.f1940b, null, null);
                        if (abVar != null) {
                            abVarA = abVarA.h().c(abVar.h().a((ac) null).a()).a();
                        }
                        zVarA2 = a(abVarA);
                    } catch (IOException e) {
                        if (!a(e, false, zVarA2)) {
                            throw e;
                        }
                    }
                } catch (b.a.b.e e2) {
                    if (!a(e2.a(), true, zVarA2)) {
                        throw e2.a();
                    }
                }
                if (zVarA2 == null) {
                    if (!this.f1941c) {
                        this.f1940b.c();
                    }
                    return abVarA;
                }
                b.a.c.a(abVarA.g());
                int i2 = i + 1;
                if (i2 > 20) {
                    this.f1940b.c();
                    throw new ProtocolException("Too many follow-up requests: " + i2);
                }
                if (zVarA2.d() instanceof n) {
                    throw new HttpRetryException("Cannot retry streamed HTTP body", abVarA.b());
                }
                if (!a(abVarA, zVarA2.a())) {
                    this.f1940b.c();
                    this.f1940b = new b.a.b.g(this.f1939a.o(), a(zVarA2.a()));
                } else if (this.f1940b.a() != null) {
                    throw new IllegalStateException("Closing the body of " + abVarA + " didn't close its backing stream. Bad interceptor?");
                }
                i = i2;
                abVar = abVarA;
            } catch (Throwable th) {
                this.f1940b.a((IOException) null);
                this.f1940b.c();
                throw th;
            }
        }
        this.f1940b.c();
        throw new IOException("Canceled");
    }

    private b.a a(s sVar) {
        HostnameVerifier hostnameVerifierK;
        SSLSocketFactory sSLSocketFactoryJ;
        b.g gVarL = null;
        if (sVar.c()) {
            sSLSocketFactoryJ = this.f1939a.j();
            hostnameVerifierK = this.f1939a.k();
            gVarL = this.f1939a.l();
        } else {
            hostnameVerifierK = null;
            sSLSocketFactoryJ = null;
        }
        return new b.a(sVar.f(), sVar.g(), this.f1939a.h(), this.f1939a.i(), sSLSocketFactoryJ, hostnameVerifierK, gVarL, this.f1939a.n(), this.f1939a.d(), this.f1939a.t(), this.f1939a.u(), this.f1939a.e());
    }

    private boolean a(IOException iOException, boolean z, z zVar) {
        this.f1940b.a(iOException);
        if (this.f1939a.r()) {
            return (z || !(zVar.d() instanceof n)) && a(iOException, z) && this.f1940b.f();
        }
        return false;
    }

    private boolean a(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            return (iOException instanceof SocketTimeoutException) && z;
        }
        return (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private z a(ab abVar) throws IOException {
        String strA;
        s sVarC;
        Proxy proxyD;
        if (abVar == null) {
            throw new IllegalStateException();
        }
        b.a.b.c cVarB = this.f1940b.b();
        ad adVarA = cVarB != null ? cVarB.a() : null;
        int iB = abVar.b();
        String strB = abVar.a().b();
        switch (iB) {
            case 300:
            case 301:
            case 302:
            case 303:
                break;
            case 307:
            case 308:
                if (!strB.equals(Constants.HTTP_GET) && !strB.equals("HEAD")) {
                    return null;
                }
                break;
            case 401:
                return this.f1939a.m().a(adVarA, abVar);
            case 407:
                if (adVarA != null) {
                    proxyD = adVarA.b();
                } else {
                    proxyD = this.f1939a.d();
                }
                if (proxyD.type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                return this.f1939a.n().a(adVarA, abVar);
            case 408:
                if (abVar.a().d() instanceof n) {
                    return null;
                }
                return abVar.a();
            default:
                return null;
        }
        if (!this.f1939a.q() || (strA = abVar.a("Location")) == null || (sVarC = abVar.a().a().c(strA)) == null) {
            return null;
        }
        if (!sVarC.b().equals(abVar.a().a().b()) && !this.f1939a.p()) {
            return null;
        }
        z.a aVarE = abVar.a().e();
        if (g.c(strB)) {
            if (g.d(strB)) {
                aVarE.a(Constants.HTTP_GET, (aa) null);
            } else {
                aVarE.a(strB, (aa) null);
            }
            aVarE.b("Transfer-Encoding");
            aVarE.b("Content-Length");
            aVarE.b("Content-Type");
        }
        if (!a(abVar, sVarC)) {
            aVarE.b("Authorization");
        }
        return aVarE.a(sVarC).a();
    }

    private boolean a(ab abVar, s sVar) {
        s sVarA = abVar.a().a();
        return sVarA.f().equals(sVar.f()) && sVarA.g() == sVar.g() && sVarA.b().equals(sVar.b());
    }
}
