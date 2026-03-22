package b;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f2020a = new a().a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<b> f2021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b.a.g.b f2022c;

    private g(List<b> list, b.a.g.b bVar) {
        this.f2021b = list;
        this.f2022c = bVar;
    }

    public void a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<b> listA = a(str);
        if (!listA.isEmpty()) {
            if (this.f2022c != null) {
                list = this.f2022c.a(list, str);
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                X509Certificate x509Certificate = (X509Certificate) list.get(i);
                int size2 = listA.size();
                int i2 = 0;
                c.f fVarB = null;
                c.f fVarA = null;
                while (i2 < size2) {
                    b bVar = listA.get(i2);
                    if (bVar.f2026c.equals("sha256/")) {
                        if (fVarB == null) {
                            fVarB = b(x509Certificate);
                        }
                        if (bVar.f2027d.equals(fVarB)) {
                            return;
                        }
                    } else if (bVar.f2026c.equals("sha1/")) {
                        if (fVarA == null) {
                            fVarA = a(x509Certificate);
                        }
                        if (bVar.f2027d.equals(fVarA)) {
                            return;
                        }
                    } else {
                        throw new AssertionError();
                    }
                    i2++;
                    fVarA = fVarA;
                    fVarB = fVarB;
                }
            }
            StringBuilder sbAppend = new StringBuilder().append("Certificate pinning failure!").append("\n  Peer certificate chain:");
            int size3 = list.size();
            for (int i3 = 0; i3 < size3; i3++) {
                X509Certificate x509Certificate2 = (X509Certificate) list.get(i3);
                sbAppend.append("\n    ").append(a((Certificate) x509Certificate2)).append(": ").append(x509Certificate2.getSubjectDN().getName());
            }
            sbAppend.append("\n  Pinned certificates for ").append(str).append(":");
            int size4 = listA.size();
            for (int i4 = 0; i4 < size4; i4++) {
                sbAppend.append("\n    ").append(listA.get(i4));
            }
            throw new SSLPeerUnverifiedException(sbAppend.toString());
        }
    }

    List<b> a(String str) {
        List<b> listEmptyList = Collections.emptyList();
        for (b bVar : this.f2021b) {
            if (bVar.a(str)) {
                if (listEmptyList.isEmpty()) {
                    listEmptyList = new ArrayList<>();
                }
                listEmptyList.add(bVar);
            }
        }
        return listEmptyList;
    }

    g a(b.a.g.b bVar) {
        return this.f2022c != bVar ? new g(this.f2021b, bVar) : this;
    }

    public static String a(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + b((X509Certificate) certificate).b();
    }

    static c.f a(X509Certificate x509Certificate) {
        return b.a.c.a(c.f.a(x509Certificate.getPublicKey().getEncoded()));
    }

    static c.f b(X509Certificate x509Certificate) {
        return b.a.c.b(c.f.a(x509Certificate.getPublicKey().getEncoded()));
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f2024a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f2025b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f2026c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final c.f f2027d;

        boolean a(String str) {
            return this.f2024a.startsWith("*.") ? str.regionMatches(false, str.indexOf(46) + 1, this.f2025b, 0, this.f2025b.length()) : str.equals(this.f2025b);
        }

        public boolean equals(Object obj) {
            return (obj instanceof b) && this.f2024a.equals(((b) obj).f2024a) && this.f2026c.equals(((b) obj).f2026c) && this.f2027d.equals(((b) obj).f2027d);
        }

        public int hashCode() {
            return ((((this.f2024a.hashCode() + 527) * 31) + this.f2026c.hashCode()) * 31) + this.f2027d.hashCode();
        }

        public String toString() {
            return this.f2026c + this.f2027d.b();
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<b> f2023a = new ArrayList();

        /* JADX WARN: Multi-variable type inference failed */
        public g a() {
            return new g(b.a.c.a(this.f2023a), null);
        }
    }
}
