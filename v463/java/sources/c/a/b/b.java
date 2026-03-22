package c.a.b;

import c.k;
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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<k> f2469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2470b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2471c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2472d;

    public b(List<k> list) {
        this.f2469a = list;
    }

    public k a(SSLSocket sSLSocket) throws IOException {
        k kVar;
        int i = this.f2470b;
        int size = this.f2469a.size();
        while (true) {
            if (i >= size) {
                kVar = null;
                break;
            }
            kVar = this.f2469a.get(i);
            if (kVar.a(sSLSocket)) {
                this.f2470b = i + 1;
                break;
            }
            i++;
        }
        if (kVar == null) {
            throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f2472d + ", modes=" + this.f2469a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
        }
        this.f2471c = b(sSLSocket);
        c.a.a.f2438a.a(kVar, sSLSocket, this.f2472d);
        return kVar;
    }

    public boolean a(IOException iOException) {
        this.f2472d = true;
        if (!this.f2471c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z = iOException instanceof SSLHandshakeException;
        if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z || (iOException instanceof SSLProtocolException);
    }

    private boolean b(SSLSocket sSLSocket) {
        for (int i = this.f2470b; i < this.f2469a.size(); i++) {
            if (this.f2469a.get(i).a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }
}
