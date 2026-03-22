package b.a.b;

import b.k;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<k> f1764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1765b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1766c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1767d;

    public b(List<k> list) {
        this.f1764a = list;
    }

    public k a(SSLSocket sSLSocket) throws IOException {
        k kVar;
        int i = this.f1765b;
        int size = this.f1764a.size();
        int i2 = i;
        while (true) {
            if (i2 >= size) {
                kVar = null;
                break;
            }
            kVar = this.f1764a.get(i2);
            if (!kVar.a(sSLSocket)) {
                i2++;
            } else {
                this.f1765b = i2 + 1;
                break;
            }
        }
        if (kVar == null) {
            throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f1767d + ", modes=" + this.f1764a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
        }
        this.f1766c = b(sSLSocket);
        b.a.a.f1737a.a(kVar, sSLSocket, this.f1767d);
        return kVar;
    }

    public boolean a(IOException iOException) {
        this.f1767d = true;
        if (!this.f1766c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return (iOException instanceof SSLHandshakeException) || (iOException instanceof SSLProtocolException);
    }

    private boolean b(SSLSocket sSLSocket) {
        int i = this.f1765b;
        while (true) {
            int i2 = i;
            if (i2 < this.f1764a.size()) {
                if (!this.f1764a.get(i2).a(sSLSocket)) {
                    i = i2 + 1;
                } else {
                    return true;
                }
            } else {
                return false;
            }
        }
    }
}
