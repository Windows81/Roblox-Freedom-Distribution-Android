package c;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f2770a = new a().a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<b> f2771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c.a.g.b f2772c;

    private g(List<b> list, c.a.g.b bVar) {
        this.f2771b = list;
        this.f2772c = bVar;
    }

    public void a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<b> listA = a(str);
        if (listA.isEmpty()) {
            return;
        }
        c.a.g.b bVar = this.f2772c;
        if (bVar != null) {
            list = bVar.a(list, str);
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i);
            int size2 = listA.size();
            d.f fVarB = null;
            d.f fVarA = null;
            for (int i2 = 0; i2 < size2; i2++) {
                b bVar2 = listA.get(i2);
                if (bVar2.f2776c.equals("sha256/")) {
                    if (fVarB == null) {
                        fVarB = b(x509Certificate);
                    }
                    if (bVar2.f2777d.equals(fVarB)) {
                        return;
                    }
                } else if (bVar2.f2776c.equals("sha1/")) {
                    if (fVarA == null) {
                        fVarA = a(x509Certificate);
                    }
                    if (bVar2.f2777d.equals(fVarA)) {
                        return;
                    }
                } else {
                    throw new AssertionError();
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i3 = 0; i3 < size3; i3++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i3);
            sb.append("\n    ");
            sb.append(a((Certificate) x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = listA.size();
        for (int i4 = 0; i4 < size4; i4++) {
            b bVar3 = listA.get(i4);
            sb.append("\n    ");
            sb.append(bVar3);
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    List<b> a(String str) {
        List<b> listEmptyList = Collections.emptyList();
        for (b bVar : this.f2771b) {
            if (bVar.a(str)) {
                if (listEmptyList.isEmpty()) {
                    listEmptyList = new ArrayList<>();
                }
                listEmptyList.add(bVar);
            }
        }
        return listEmptyList;
    }

    g a(c.a.g.b bVar) {
        return this.f2772c != bVar ? new g(this.f2771b, bVar) : this;
    }

    public static String a(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + b((X509Certificate) certificate).b();
    }

    static d.f a(X509Certificate x509Certificate) {
        return c.a.c.a(d.f.a(x509Certificate.getPublicKey().getEncoded()));
    }

    static d.f b(X509Certificate x509Certificate) {
        return c.a.c.b(d.f.a(x509Certificate.getPublicKey().getEncoded()));
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f2774a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f2775b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f2776c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final d.f f2777d;

        boolean a(String str) {
            if (this.f2774a.startsWith("*.")) {
                int iIndexOf = str.indexOf(46) + 1;
                String str2 = this.f2775b;
                return str.regionMatches(false, iIndexOf, str2, 0, str2.length());
            }
            return str.equals(this.f2775b);
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (this.f2774a.equals(bVar.f2774a) && this.f2776c.equals(bVar.f2776c) && this.f2777d.equals(bVar.f2777d)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((((527 + this.f2774a.hashCode()) * 31) + this.f2776c.hashCode()) * 31) + this.f2777d.hashCode();
        }

        public String toString() {
            return this.f2776c + this.f2777d.b();
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<b> f2773a = new ArrayList();

        /* JADX WARN: Multi-variable type inference failed */
        public g a() {
            return new g(c.a.c.a(this.f2773a), null);
        }
    }
}
