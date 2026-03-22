package b.a.f;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f1962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Class[] f1964c;

    public d(Class<?> cls, String str, Class... clsArr) {
        this.f1962a = cls;
        this.f1963b = str;
        this.f1964c = clsArr;
    }

    public boolean a(T t) {
        return a(t.getClass()) != null;
    }

    public Object a(T t, Object... objArr) throws InvocationTargetException {
        Method methodA = a(t.getClass());
        if (methodA == null) {
            return null;
        }
        try {
            return methodA.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            return null;
        }
    }

    public Object b(T t, Object... objArr) {
        try {
            return a(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object c(T t, Object... objArr) throws InvocationTargetException {
        Method methodA = a(t.getClass());
        if (methodA == null) {
            throw new AssertionError("Method " + this.f1963b + " not supported for object " + t);
        }
        try {
            return methodA.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + methodA);
            assertionError.initCause(e);
            throw assertionError;
        }
    }

    public Object d(T t, Object... objArr) {
        try {
            return c(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    private Method a(Class<?> cls) {
        if (this.f1963b == null) {
            return null;
        }
        Method methodA = a(cls, this.f1963b, this.f1964c);
        if (methodA == null || this.f1962a == null || this.f1962a.isAssignableFrom(methodA.getReturnType())) {
            return methodA;
        }
        return null;
    }

    private static Method a(Class<?> cls, String str, Class[] clsArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
                return method;
            } catch (NoSuchMethodException e) {
                return method;
            }
        } catch (NoSuchMethodException e2) {
            return null;
        }
    }
}
