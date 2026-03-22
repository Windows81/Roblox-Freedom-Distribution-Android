package b.a.g;

import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class b {
    public abstract List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException;

    public static b a(X509TrustManager x509TrustManager) {
        return b.a.f.e.b().a(x509TrustManager);
    }
}
