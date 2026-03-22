package c;

import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final af f2815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f2816b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Certificate> f2817c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<Certificate> f2818d;

    private r(af afVar, h hVar, List<Certificate> list, List<Certificate> list2) {
        this.f2815a = afVar;
        this.f2816b = hVar;
        this.f2817c = list;
        this.f2818d = list2;
    }

    public static r a(SSLSession sSLSession) {
        Certificate[] peerCertificates;
        List listEmptyList;
        List listEmptyList2;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        h hVarA = h.a(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        af afVarA = af.a(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
            peerCertificates = null;
        }
        if (peerCertificates != null) {
            listEmptyList = c.a.c.a(peerCertificates);
        } else {
            listEmptyList = Collections.emptyList();
        }
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        if (localCertificates != null) {
            listEmptyList2 = c.a.c.a(localCertificates);
        } else {
            listEmptyList2 = Collections.emptyList();
        }
        return new r(afVarA, hVarA, listEmptyList, listEmptyList2);
    }

    public h a() {
        return this.f2816b;
    }

    public List<Certificate> b() {
        return this.f2817c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return c.a.c.a(this.f2816b, rVar.f2816b) && this.f2816b.equals(rVar.f2816b) && this.f2817c.equals(rVar.f2817c) && this.f2818d.equals(rVar.f2818d);
    }

    public int hashCode() {
        af afVar = this.f2815a;
        return ((((((527 + (afVar != null ? afVar.hashCode() : 0)) * 31) + this.f2816b.hashCode()) * 31) + this.f2817c.hashCode()) * 31) + this.f2818d.hashCode();
    }
}
