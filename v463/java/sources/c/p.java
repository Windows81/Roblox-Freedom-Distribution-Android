package c;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f2809a = new p() { // from class: c.p.1
        @Override // c.p
        public List<InetAddress> a(String str) throws UnknownHostException {
            if (str == null) {
                throw new UnknownHostException("hostname == null");
            }
            return Arrays.asList(InetAddress.getAllByName(str));
        }
    };

    List<InetAddress> a(String str) throws UnknownHostException;
}
