package b.a.f;

import b.x;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class c extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Method f1955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Method f1956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Method f1957c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Class<?> f1958d;
    private final Class<?> e;

    public c(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f1955a = method;
        this.f1956b = method2;
        this.f1957c = method3;
        this.f1958d = cls;
        this.e = cls2;
    }

    @Override // b.a.f.e
    public void a(SSLSocket sSLSocket, String str, List<x> list) {
        try {
            this.f1955a.invoke(null, sSLSocket, Proxy.newProxyInstance(e.class.getClassLoader(), new Class[]{this.f1958d, this.e}, new a(a(list))));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError(e);
        }
    }

    @Override // b.a.f.e
    public void b(SSLSocket sSLSocket) {
        try {
            this.f1957c.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError();
        }
    }

    @Override // b.a.f.e
    public String a(SSLSocket sSLSocket) {
        try {
            a aVar = (a) Proxy.getInvocationHandler(this.f1956b.invoke(null, sSLSocket));
            if (!aVar.f1960b && aVar.f1961c == null) {
                e.b().a(4, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            }
            return aVar.f1960b ? null : aVar.f1961c;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError();
        }
    }

    public static e a() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            return new c(cls.getMethod("put", SSLSocket.class, Class.forName("org.eclipse.jetty.alpn.ALPN$Provider")), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            return null;
        }
    }

    private static class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f1959a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1960b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f1961c;

        public a(List<String> list) {
            this.f1959a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = b.a.c.f1784b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return true;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f1960b = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f1959a;
            }
            if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1 && (objArr[0] instanceof List)) {
                List list = (List) objArr[0];
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    if (this.f1959a.contains(list.get(i))) {
                        String str = (String) list.get(i);
                        this.f1961c = str;
                        return str;
                    }
                }
                String str2 = this.f1959a.get(0);
                this.f1961c = str2;
                return str2;
            }
            if ((name.equals("protocolSelected") || name.equals("selected")) && objArr.length == 1) {
                this.f1961c = (String) objArr[0];
                return null;
            }
            return method.invoke(this, objArr);
        }
    }
}
