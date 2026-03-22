package c.a.g;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.X509TrustManager;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class e {
    public abstract X509Certificate a(X509Certificate x509Certificate);

    public static e a(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new a(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return a(x509TrustManager.getAcceptedIssuers());
        }
    }

    public static e a(X509Certificate... x509CertificateArr) {
        return new b(x509CertificateArr);
    }

    static final class a extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final X509TrustManager f2707a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Method f2708b;

        a(X509TrustManager x509TrustManager, Method method) {
            this.f2708b = method;
            this.f2707a = x509TrustManager;
        }

        @Override // c.a.g.e
        public X509Certificate a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f2708b.invoke(this.f2707a, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (InvocationTargetException unused2) {
                return null;
            }
        }
    }

    static final class b extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<X500Principal, List<X509Certificate>> f2709a = new LinkedHashMap();

        public b(X509Certificate... x509CertificateArr) {
            for (X509Certificate x509Certificate : x509CertificateArr) {
                X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
                List<X509Certificate> arrayList = this.f2709a.get(subjectX500Principal);
                if (arrayList == null) {
                    arrayList = new ArrayList<>(1);
                    this.f2709a.put(subjectX500Principal, arrayList);
                }
                arrayList.add(x509Certificate);
            }
        }

        @Override // c.a.g.e
        public X509Certificate a(X509Certificate x509Certificate) {
            List<X509Certificate> list = this.f2709a.get(x509Certificate.getIssuerX500Principal());
            if (list == null) {
                return null;
            }
            for (X509Certificate x509Certificate2 : list) {
                try {
                    x509Certificate.verify(x509Certificate2.getPublicKey());
                    return x509Certificate2;
                } catch (Exception unused) {
                }
            }
            return null;
        }
    }
}
