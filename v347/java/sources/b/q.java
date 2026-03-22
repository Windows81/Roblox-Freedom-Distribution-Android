package b;

import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ae f2060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f2061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Certificate> f2062c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<Certificate> f2063d;

    private q(ae aeVar, h hVar, List<Certificate> list, List<Certificate> list2) {
        this.f2060a = aeVar;
        this.f2061b = hVar;
        this.f2062c = list;
        this.f2063d = list2;
    }

    public static q a(SSLSession sSLSession) {
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
        ae aeVarA = ae.a(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException e) {
            peerCertificates = null;
        }
        if (peerCertificates != null) {
            listEmptyList = b.a.c.a(peerCertificates);
        } else {
            listEmptyList = Collections.emptyList();
        }
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        if (localCertificates != null) {
            listEmptyList2 = b.a.c.a(localCertificates);
        } else {
            listEmptyList2 = Collections.emptyList();
        }
        return new q(aeVarA, hVarA, listEmptyList, listEmptyList2);
    }

    public h a() {
        return this.f2061b;
    }

    public List<Certificate> b() {
        return this.f2062c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return b.a.c.a(this.f2061b, qVar.f2061b) && this.f2061b.equals(qVar.f2061b) && this.f2062c.equals(qVar.f2062c) && this.f2063d.equals(qVar.f2063d);
    }

    public int hashCode() {
        return (((((((this.f2060a != null ? this.f2060a.hashCode() : 0) + 527) * 31) + this.f2061b.hashCode()) * 31) + this.f2062c.hashCode()) * 31) + this.f2063d.hashCode();
    }
}
