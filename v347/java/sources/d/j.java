package d;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import d.c;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final j f8130a = c();

    j() {
    }

    static j a() {
        return f8130a;
    }

    private static j c() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new a();
            }
        } catch (ClassNotFoundException e) {
        }
        try {
            Class.forName("java.util.Optional");
            return new c();
        } catch (ClassNotFoundException e2) {
            try {
                Class.forName("org.robovm.apple.foundation.NSObject");
                return new b();
            } catch (ClassNotFoundException e3) {
                return new j();
            }
        }
    }

    Executor b() {
        return null;
    }

    c.a a(Executor executor) {
        return executor != null ? new g(executor) : f.f8081a;
    }

    boolean a(Method method) {
        return false;
    }

    Object a(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
        throw new UnsupportedOperationException();
    }

    @IgnoreJRERequirement
    static class c extends j {
        c() {
        }

        @Override // d.j
        boolean a(Method method) {
            return method.isDefault();
        }

        @Override // d.j
        Object a(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
            Constructor declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            return ((MethodHandles.Lookup) declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
        }
    }

    static class a extends j {
        a() {
        }

        @Override // d.j
        public Executor b() {
            return new ExecutorC0140a();
        }

        @Override // d.j
        c.a a(Executor executor) {
            return new g(executor);
        }

        /* JADX INFO: renamed from: d.j$a$a, reason: collision with other inner class name */
        static class ExecutorC0140a implements Executor {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Handler f8131a = new Handler(Looper.getMainLooper());

            ExecutorC0140a() {
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.f8131a.post(runnable);
            }
        }
    }

    static class b extends j {
        b() {
        }

        @Override // d.j
        public Executor b() {
            return new a();
        }

        @Override // d.j
        c.a a(Executor executor) {
            return new g(executor);
        }

        static class a implements Executor {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static Object f8132a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private static Method f8133b;

            a() {
            }

            static {
                try {
                    Class<?> cls = Class.forName("org.robovm.apple.foundation.NSOperationQueue");
                    f8132a = cls.getDeclaredMethod("getMainQueue", new Class[0]).invoke(null, new Object[0]);
                    f8133b = cls.getDeclaredMethod("addOperation", Runnable.class);
                } catch (Exception e) {
                    throw new AssertionError(e);
                }
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                try {
                    f8133b.invoke(f8132a, runnable);
                } catch (IllegalAccessException e) {
                    e = e;
                    throw new AssertionError(e);
                } catch (IllegalArgumentException e2) {
                    e = e2;
                    throw new AssertionError(e);
                } catch (InvocationTargetException e3) {
                    Throwable cause = e3.getCause();
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
