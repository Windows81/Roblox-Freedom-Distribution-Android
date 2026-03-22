package c;

import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f2789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k f2790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k f2791c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final h[] f2792d = {h.aK, h.aO, h.W, h.am, h.al, h.av, h.aw, h.F, h.J, h.U, h.D, h.H, h.h};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f2793e;
    private final boolean f;
    private final String[] g;
    private final String[] h;

    static {
        k kVarA = new a(true).a(f2792d).a(af.TLS_1_2, af.TLS_1_1, af.TLS_1_0).a(true).a();
        f2789a = kVarA;
        f2790b = new a(kVarA).a(af.TLS_1_0).a(true).a();
        f2791c = new a(false).a();
    }

    private k(a aVar) {
        this.f2793e = aVar.f2794a;
        this.g = aVar.f2795b;
        this.h = aVar.f2796c;
        this.f = aVar.f2797d;
    }

    public boolean a() {
        return this.f2793e;
    }

    public List<h> b() {
        String[] strArr = this.g;
        if (strArr == null) {
            return null;
        }
        h[] hVarArr = new h[strArr.length];
        int i = 0;
        while (true) {
            String[] strArr2 = this.g;
            if (i < strArr2.length) {
                hVarArr[i] = h.a(strArr2[i]);
                i++;
            } else {
                return c.a.c.a(hVarArr);
            }
        }
    }

    public List<af> c() {
        String[] strArr = this.h;
        if (strArr == null) {
            return null;
        }
        af[] afVarArr = new af[strArr.length];
        int i = 0;
        while (true) {
            String[] strArr2 = this.h;
            if (i < strArr2.length) {
                afVarArr[i] = af.a(strArr2[i]);
                i++;
            } else {
                return c.a.c.a(afVarArr);
            }
        }
    }

    public boolean d() {
        return this.f;
    }

    void a(SSLSocket sSLSocket, boolean z) {
        k kVarB = b(sSLSocket, z);
        String[] strArr = kVarB.h;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = kVarB.g;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    private k b(SSLSocket sSLSocket, boolean z) {
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        String[] strArr = this.g;
        if (strArr != null) {
            enabledCipherSuites = (String[]) c.a.c.a(String.class, strArr, sSLSocket.getEnabledCipherSuites());
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        String[] strArr2 = this.h;
        if (strArr2 != null) {
            enabledProtocols = (String[]) c.a.c.a(String.class, strArr2, sSLSocket.getEnabledProtocols());
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        if (z && c.a.c.a(sSLSocket.getSupportedCipherSuites(), "TLS_FALLBACK_SCSV") != -1) {
            enabledCipherSuites = c.a.c.a(enabledCipherSuites, "TLS_FALLBACK_SCSV");
        }
        return new a(this).a(enabledCipherSuites).b(enabledProtocols).a();
    }

    public boolean a(SSLSocket sSLSocket) {
        if (!this.f2793e) {
            return false;
        }
        String[] strArr = this.h;
        if (strArr != null && !a(strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.g;
        return strArr2 == null || a(strArr2, sSLSocket.getEnabledCipherSuites());
    }

    private static boolean a(String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                if (c.a.c.a(strArr2, str) != -1) {
                    return true;
                }
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
        boolean z = this.f2793e;
        if (z != kVar.f2793e) {
            return false;
        }
        return !z || (Arrays.equals(this.g, kVar.g) && Arrays.equals(this.h, kVar.h) && this.f == kVar.f);
    }

    public int hashCode() {
        if (this.f2793e) {
            return ((((527 + Arrays.hashCode(this.g)) * 31) + Arrays.hashCode(this.h)) * 31) + (!this.f ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        if (!this.f2793e) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.g != null ? b().toString() : "[all enabled]") + ", tlsVersions=" + (this.h != null ? c().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f + ")";
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f2794a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String[] f2795b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String[] f2796c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f2797d;

        a(boolean z) {
            this.f2794a = z;
        }

        public a(k kVar) {
            this.f2794a = kVar.f2793e;
            this.f2795b = kVar.g;
            this.f2796c = kVar.h;
            this.f2797d = kVar.f;
        }

        public a a(h... hVarArr) {
            if (!this.f2794a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[hVarArr.length];
            for (int i = 0; i < hVarArr.length; i++) {
                strArr[i] = hVarArr[i].aS;
            }
            return a(strArr);
        }

        public a a(String... strArr) {
            if (!this.f2794a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.f2795b = (String[]) strArr.clone();
            return this;
        }

        public a a(af... afVarArr) {
            if (!this.f2794a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[afVarArr.length];
            for (int i = 0; i < afVarArr.length; i++) {
                strArr[i] = afVarArr[i].f2747e;
            }
            return b(strArr);
        }

        public a b(String... strArr) {
            if (!this.f2794a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f2796c = (String[]) strArr.clone();
            return this;
        }

        public a a(boolean z) {
            if (!this.f2794a) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.f2797d = z;
            return this;
        }

        public k a() {
            return new k(this);
        }
    }
}
