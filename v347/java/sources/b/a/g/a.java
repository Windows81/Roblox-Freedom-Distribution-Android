package b.a.g;

import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class a extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f1967a;

    public a(e eVar) {
        this.f1967a = eVar;
    }

    @Override // b.a.g.b
    public List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
        boolean z = false;
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        arrayList.add(arrayDeque.removeFirst());
        int i = 0;
        while (true) {
            boolean z2 = z;
            if (i < 9) {
                X509Certificate x509Certificate = (X509Certificate) arrayList.get(arrayList.size() - 1);
                X509Certificate x509CertificateA = this.f1967a.a(x509Certificate);
                if (x509CertificateA != null) {
                    if (arrayList.size() > 1 || !x509Certificate.equals(x509CertificateA)) {
                        arrayList.add(x509CertificateA);
                    }
                    if (a(x509CertificateA, x509CertificateA)) {
                        return arrayList;
                    }
                    z = true;
                } else {
                    Iterator it = arrayDeque.iterator();
                    while (it.hasNext()) {
                        X509Certificate x509Certificate2 = (X509Certificate) it.next();
                        if (a(x509Certificate, x509Certificate2)) {
                            it.remove();
                            arrayList.add(x509Certificate2);
                            z = z2;
                        }
                    }
                    if (z2) {
                        return arrayList;
                    }
                    throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate);
                }
                i++;
            } else {
                throw new SSLPeerUnverifiedException("Certificate chain too long: " + arrayList);
            }
        }
    }

    private boolean a(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (!x509Certificate.getIssuerDN().equals(x509Certificate2.getSubjectDN())) {
            return false;
        }
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return true;
        } catch (GeneralSecurityException e) {
            return false;
        }
    }
}
