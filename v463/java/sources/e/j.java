package e;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import e.c;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final j f7877a = c();

    boolean a(Method method) {
        return false;
    }

    Executor b() {
        return null;
    }

    j() {
    }

    static j a() {
        return f7877a;
    }

    private static j c() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new a();
            }
        } catch (ClassNotFoundException unused) {
        }
        try {
            try {
                Class.forName("java.util.Optional");
                return new c();
            } catch (ClassNotFoundException unused2) {
                return new j();
            }
        } catch (ClassNotFoundException unused3) {
            Class.forName("org.robovm.apple.foundation.NSObject");
            return new b();
        }
    }

    c.a a(Executor executor) {
        if (executor != null) {
            return new g(executor);
        }
        return f.f7827a;
    }

    Object a(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
        throw new UnsupportedOperationException();
    }

    static class c extends j {
        c() {
        }

        @Override // e.j
        boolean a(Method method) {
            return method.isDefault();
        }

        @Override // e.j
        Object a(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
            Constructor declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            return ((MethodHandles.Lookup) declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
        }
    }

    static class a extends j {
        a() {
        }

        @Override // e.j
        public Executor b() {
            return new ExecutorC0190a();
        }

        @Override // e.j
        c.a a(Executor executor) {
            return new g(executor);
        }

        /* JADX INFO: renamed from: e.j$a$a, reason: collision with other inner class name */
        static class ExecutorC0190a implements Executor {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Handler f7878a = new Handler(Looper.getMainLooper());

            ExecutorC0190a() {
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.f7878a.post(runnable);
            }
        }
    }

    static class b extends j {
        b() {
        }

        @Override // e.j
        public Executor b() {
            return new a();
        }

        @Override // e.j
        c.a a(Executor executor) {
            return new g(executor);
        }

        static class a implements Executor {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static Object f7879a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private static Method f7880b;

            a() {
            }

            static {
                try {
                    Class<?> cls = Class.forName("org.robovm.apple.foundation.NSOperationQueue");
                    f7879a = cls.getDeclaredMethod("getMainQueue", new Class[0]).invoke(null, new Object[0]);
                    f7880b = cls.getDeclaredMethod("addOperation", Runnable.class);
                } catch (Exception e2) {
                    throw new AssertionError(e2);
                }
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                try {
                    f7880b.invoke(f7879a, runnable);
                } catch (IllegalAccessException e2) {
                    e = e2;
                    throw new AssertionError(e);
                } catch (IllegalArgumentException e3) {
                    e = e3;
                    throw new AssertionError(e);
                } catch (InvocationTargetException e4) {
                    Throwable cause = e4.getCause();
                    if (cause instanceof RuntimeException) {
                        throw ((RuntimeException) cause);
                    }
                    if (cause instanceof Error) {
                        throw ((Error) cause);
                    }
                    throw new RuntimeException(cause);
                }
            }
        }
    }
}
