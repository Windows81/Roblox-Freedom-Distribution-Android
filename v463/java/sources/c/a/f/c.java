package c.a.f;

import c.y;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class c extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Method f2687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Method f2688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Method f2689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Class<?> f2690d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Class<?> f2691e;

    public c(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f2687a = method;
        this.f2688b = method2;
        this.f2689c = method3;
        this.f2690d = cls;
        this.f2691e = cls2;
    }

    @Override // c.a.f.e
    public void a(SSLSocket sSLSocket, String str, List<y> list) {
        try {
            this.f2687a.invoke(null, sSLSocket, Proxy.newProxyInstance(e.class.getClassLoader(), new Class[]{this.f2690d, this.f2691e}, new a(a(list))));
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // c.a.f.e
    public void b(SSLSocket sSLSocket) {
        try {
            this.f2689c.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            throw new AssertionError();
        }
    }

    @Override // c.a.f.e
    public String a(SSLSocket sSLSocket) {
        try {
            a aVar = (a) Proxy.getInvocationHandler(this.f2688b.invoke(null, sSLSocket));
            if (!aVar.f2693b && aVar.f2694c == null) {
                e.b().a(4, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            }
            if (aVar.f2693b) {
                return null;
            }
            return aVar.f2694c;
        } catch (IllegalAccessException | InvocationTargetException unused) {
            throw new AssertionError();
        }
    }

    public static e a() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new c(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    private static class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f2692a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f2693b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f2694c;

        public a(List<String> list) {
            this.f2692a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = c.a.c.f2492b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return true;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f2693b = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f2692a;
            }
            if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1 && (objArr[0] instanceof List)) {
                List list = (List) objArr[0];
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    if (this.f2692a.contains(list.get(i))) {
                        String str = (String) list.get(i);
                        this.f2694c = str;
                        return str;
                    }
                }
                String str2 = this.f2692a.get(0);
                this.f2694c = str2;
                return str2;
            }
            if ((name.equals("protocolSelected") || name.equals("selected")) && objArr.length == 1) {
                this.f2694c = (String) objArr[0];
                return null;
            }
            return method.invoke(this, objArr);
        }
    }
}
