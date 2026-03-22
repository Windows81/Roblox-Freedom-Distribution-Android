package c.a.f;

import c.y;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class b extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Method f2685a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Method f2686b;

    public b(Method method, Method method2) {
        this.f2685a = method;
        this.f2686b = method2;
    }

    @Override // c.a.f.e
    public void a(SSLSocket sSLSocket, String str, List<y> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> listA = a(list);
            this.f2685a.invoke(sSLParameters, listA.toArray(new String[listA.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            throw new AssertionError();
        }
    }

    @Override // c.a.f.e
    public String a(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f2686b.invoke(sSLSocket, new Object[0]);
            if (str == null) {
                return null;
            }
            if (str.equals("")) {
                return null;
            }
            return str;
        } catch (IllegalAccessException | InvocationTargetException unused) {
            throw new AssertionError();
        }
    }

    public static b a() {
        try {
            return new b(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }
}
