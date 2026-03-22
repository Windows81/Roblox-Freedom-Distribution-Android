package b.a.f;

import b.x;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class b extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Method f1953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Method f1954b;

    public b(Method method, Method method2) {
        this.f1953a = method;
        this.f1954b = method2;
    }

    @Override // b.a.f.e
    public void a(SSLSocket sSLSocket, String str, List<x> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> listA = a(list);
            this.f1953a.invoke(sSLParameters, listA.toArray(new String[listA.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError();
        }
    }

    @Override // b.a.f.e
    public String a(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f1954b.invoke(sSLSocket, new Object[0]);
            if (str != null) {
                if (!str.equals("")) {
                    return str;
                }
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError();
        }
    }

    public static b a() {
        try {
            return new b(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException e) {
            return null;
        }
    }
}
