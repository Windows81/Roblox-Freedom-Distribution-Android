package b;

import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class k {
    private final boolean e;
    private final boolean f;
    private final String[] g;
    private final String[] h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final h[] f2040d = {h.aK, h.aO, h.W, h.am, h.al, h.av, h.aw, h.F, h.J, h.U, h.D, h.H, h.h};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f2037a = new a(true).a(f2040d).a(ae.TLS_1_2, ae.TLS_1_1, ae.TLS_1_0).a(true).a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k f2038b = new a(f2037a).a(ae.TLS_1_0).a(true).a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k f2039c = new a(false).a();

    private k(a aVar) {
        this.e = aVar.f2041a;
        this.g = aVar.f2042b;
        this.h = aVar.f2043c;
        this.f = aVar.f2044d;
    }

    public boolean a() {
        return this.e;
    }

    public List<h> b() {
        if (this.g == null) {
            return null;
        }
        h[] hVarArr = new h[this.g.length];
        for (int i = 0; i < this.g.length; i++) {
            hVarArr[i] = h.a(this.g[i]);
        }
        return b.a.c.a(hVarArr);
    }

    public List<ae> c() {
        if (this.h == null) {
            return null;
        }
        ae[] aeVarArr = new ae[this.h.length];
        for (int i = 0; i < this.h.length; i++) {
            aeVarArr[i] = ae.a(this.h[i]);
        }
        return b.a.c.a(aeVarArr);
    }

    public boolean d() {
        return this.f;
    }

    void a(SSLSocket sSLSocket, boolean z) {
        k kVarB = b(sSLSocket, z);
        if (kVarB.h != null) {
            sSLSocket.setEnabledProtocols(kVarB.h);
        }
        if (kVarB.g != null) {
            sSLSocket.setEnabledCipherSuites(kVarB.g);
        }
    }

    private k b(SSLSocket sSLSocket, boolean z) {
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        if (this.g != null) {
            enabledCipherSuites = (String[]) b.a.c.a(String.class, this.g, sSLSocket.getEnabledCipherSuites());
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        if (this.h != null) {
            enabledProtocols = (String[]) b.a.c.a(String.class, this.h, sSLSocket.getEnabledProtocols());
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        if (z && b.a.c.a(sSLSocket.getSupportedCipherSuites(), "TLS_FALLBACK_SCSV") != -1) {
            enabledCipherSuites = b.a.c.a(enabledCipherSuites, "TLS_FALLBACK_SCSV");
        }
        return new a(this).a(enabledCipherSuites).b(enabledProtocols).a();
    }

    public boolean a(SSLSocket sSLSocket) {
        if (!this.e) {
            return false;
        }
        if (this.h == null || a(this.h, sSLSocket.getEnabledProtocols())) {
            return this.g == null || a(this.g, sSLSocket.getEnabledCipherSuites());
        }
        return false;
    }

    private static boolean a(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length == 0 || strArr2.length == 0) {
            return false;
        }
        for (String str : strArr) {
            if (b.a.c.a(strArr2, str) != -1) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        k kVar = (k) obj;
        if (this.e == kVar.e) {
            return !this.e || (Arrays.equals(this.g, kVar.g) && Arrays.equals(this.h, kVar.h) && this.f == kVar.f);
        }
        return false;
    }

    public int hashCode() {
        if (!this.e) {
            return 17;
        }
        return (this.f ? 0 : 1) + ((((Arrays.hashCode(this.g) + 527) * 31) + Arrays.hashCode(this.h)) * 31);
    }

    public String toString() {
        if (!this.e) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.g != null ? b().toString() : "[all enabled]") + ", tlsVersions=" + (this.h != null ? c().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f + ")";
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f2041a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String[] f2042b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String[] f2043c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f2044d;

        a(boolean z) {
            this.f2041a = z;
        }

        public a(k kVar) {
            this.f2041a = kVar.e;
            this.f2042b = kVar.g;
            this.f2043c = kVar.h;
            this.f2044d = kVar.f;
        }

        public a a(h... hVarArr) {
            if (!this.f2041a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[hVarArr.length];
            for (int i = 0; i < hVarArr.length; i++) {
                strArr[i] = hVarArr[i].aS;
            }
            return a(strArr);
        }

        public a a(String... strArr) {
            if (!this.f2041a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.f2042b = (String[]) strArr.clone();
            return this;
        }

        public a a(ae... aeVarArr) {
            if (!this.f2041a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[aeVarArr.length];
            for (int i = 0; i < aeVarArr.length; i++) {
                strArr[i] = aeVarArr[i].e;
            }
            return b(strArr);
        }

        public a b(String... strArr) {
            if (!this.f2041a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f2043c = (String[]) strArr.clone();
            return this;
        }

        public a a(boolean z) {
            if (!this.f2041a) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.f2044d = z;
            return this;
        }

        public k a() {
            return new k(this);
        }
    }
}
