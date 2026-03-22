package b;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class h {
    final String aS;
    private static final ConcurrentMap<String, h> aT = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f2028a = a("SSL_RSA_WITH_NULL_MD5", 1, 5246, 6, 10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h f2029b = a("SSL_RSA_WITH_NULL_SHA", 2, 5246, 6, 10);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h f2030c = a("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3, 4346, 6, 10);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h f2031d = a("SSL_RSA_WITH_RC4_128_MD5", 4, 5246, 6, 10);
    public static final h e = a("SSL_RSA_WITH_RC4_128_SHA", 5, 5246, 6, 10);
    public static final h f = a("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8, 4346, 6, 10);
    public static final h g = a("SSL_RSA_WITH_DES_CBC_SHA", 9, 5469, 6, 10);
    public static final h h = a("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10, 5246, 6, 10);
    public static final h i = a("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17, 4346, 6, 10);
    public static final h j = a("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18, 5469, 6, 10);
    public static final h k = a("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19, 5246, 6, 10);
    public static final h l = a("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20, 4346, 6, 10);
    public static final h m = a("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21, 5469, 6, 10);
    public static final h n = a("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22, 5246, 6, 10);
    public static final h o = a("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23, 4346, 6, 10);
    public static final h p = a("SSL_DH_anon_WITH_RC4_128_MD5", 24, 5246, 6, 10);
    public static final h q = a("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25, 4346, 6, 10);
    public static final h r = a("SSL_DH_anon_WITH_DES_CBC_SHA", 26, 5469, 6, 10);
    public static final h s = a("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27, 5246, 6, 10);
    public static final h t = a("TLS_KRB5_WITH_DES_CBC_SHA", 30, 2712, 6, Integer.MAX_VALUE);
    public static final h u = a("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31, 2712, 6, Integer.MAX_VALUE);
    public static final h v = a("TLS_KRB5_WITH_RC4_128_SHA", 32, 2712, 6, Integer.MAX_VALUE);
    public static final h w = a("TLS_KRB5_WITH_DES_CBC_MD5", 34, 2712, 6, Integer.MAX_VALUE);
    public static final h x = a("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35, 2712, 6, Integer.MAX_VALUE);
    public static final h y = a("TLS_KRB5_WITH_RC4_128_MD5", 36, 2712, 6, Integer.MAX_VALUE);
    public static final h z = a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38, 2712, 6, Integer.MAX_VALUE);
    public static final h A = a("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40, 2712, 6, Integer.MAX_VALUE);
    public static final h B = a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41, 2712, 6, Integer.MAX_VALUE);
    public static final h C = a("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43, 2712, 6, Integer.MAX_VALUE);
    public static final h D = a("TLS_RSA_WITH_AES_128_CBC_SHA", 47, 5246, 6, 10);
    public static final h E = a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50, 5246, 6, 10);
    public static final h F = a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51, 5246, 6, 10);
    public static final h G = a("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52, 5246, 6, 10);
    public static final h H = a("TLS_RSA_WITH_AES_256_CBC_SHA", 53, 5246, 6, 10);
    public static final h I = a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56, 5246, 6, 10);
    public static final h J = a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57, 5246, 6, 10);
    public static final h K = a("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58, 5246, 6, 10);
    public static final h L = a("TLS_RSA_WITH_NULL_SHA256", 59, 5246, 7, 21);
    public static final h M = a("TLS_RSA_WITH_AES_128_CBC_SHA256", 60, 5246, 7, 21);
    public static final h N = a("TLS_RSA_WITH_AES_256_CBC_SHA256", 61, 5246, 7, 21);
    public static final h O = a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64, 5246, 7, 21);
    public static final h P = a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103, 5246, 7, 21);
    public static final h Q = a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106, 5246, 7, 21);
    public static final h R = a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107, 5246, 7, 21);
    public static final h S = a("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108, 5246, 7, 21);
    public static final h T = a("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109, 5246, 7, 21);
    public static final h U = a("TLS_RSA_WITH_AES_128_GCM_SHA256", 156, 5288, 8, 21);
    public static final h V = a("TLS_RSA_WITH_AES_256_GCM_SHA384", 157, 5288, 8, 21);
    public static final h W = a("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158, 5288, 8, 21);
    public static final h X = a("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159, 5288, 8, 21);
    public static final h Y = a("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162, 5288, 8, 21);
    public static final h Z = a("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163, 5288, 8, 21);
    public static final h aa = a("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166, 5288, 8, 21);
    public static final h ab = a("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167, 5288, 8, 21);
    public static final h ac = a("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255, 5746, 6, 14);
    public static final h ad = a("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153, 4492, 7, 14);
    public static final h ae = a("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154, 4492, 7, 14);
    public static final h af = a("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155, 4492, 7, 14);
    public static final h ag = a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156, 4492, 7, 14);
    public static final h ah = a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157, 4492, 7, 14);
    public static final h ai = a("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158, 4492, 7, 14);
    public static final h aj = a("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159, 4492, 7, 14);
    public static final h ak = a("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160, 4492, 7, 14);
    public static final h al = a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161, 4492, 7, 14);
    public static final h am = a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162, 4492, 7, 14);
    public static final h an = a("TLS_ECDH_RSA_WITH_NULL_SHA", 49163, 4492, 7, 14);
    public static final h ao = a("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164, 4492, 7, 14);
    public static final h ap = a("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165, 4492, 7, 14);
    public static final h aq = a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166, 4492, 7, 14);
    public static final h ar = a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167, 4492, 7, 14);
    public static final h as = a("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168, 4492, 7, 14);
    public static final h at = a("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169, 4492, 7, 14);
    public static final h au = a("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170, 4492, 7, 14);
    public static final h av = a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171, 4492, 7, 14);
    public static final h aw = a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172, 4492, 7, 14);
    public static final h ax = a("TLS_ECDH_anon_WITH_NULL_SHA", 49173, 4492, 7, 14);
    public static final h ay = a("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174, 4492, 7, 14);
    public static final h az = a("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175, 4492, 7, 14);
    public static final h aA = a("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176, 4492, 7, 14);
    public static final h aB = a("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177, 4492, 7, 14);
    public static final h aC = a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187, 5289, 7, 21);
    public static final h aD = a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188, 5289, 7, 21);
    public static final h aE = a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189, 5289, 7, 21);
    public static final h aF = a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190, 5289, 7, 21);
    public static final h aG = a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191, 5289, 7, 21);
    public static final h aH = a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192, 5289, 7, 21);
    public static final h aI = a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193, 5289, 7, 21);
    public static final h aJ = a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194, 5289, 7, 21);
    public static final h aK = a("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195, 5289, 8, 21);
    public static final h aL = a("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196, 5289, 8, 21);
    public static final h aM = a("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197, 5289, 8, 21);
    public static final h aN = a("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198, 5289, 8, 21);
    public static final h aO = a("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199, 5289, 8, 21);
    public static final h aP = a("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200, 5289, 8, 21);
    public static final h aQ = a("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201, 5289, 8, 21);
    public static final h aR = a("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202, 5289, 8, 21);

    public static h a(String str) {
        h hVar = aT.get(str);
        if (hVar == null) {
            h hVar2 = new h(str);
            h hVarPutIfAbsent = aT.putIfAbsent(str, hVar2);
            return hVarPutIfAbsent == null ? hVar2 : hVarPutIfAbsent;
        }
        return hVar;
    }

    private h(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.aS = str;
    }

    private static h a(String str, int i2, int i3, int i4, int i5) {
        return a(str);
    }

    public String toString() {
        return this.aS;
    }
}
