package c.a.b;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class e extends RuntimeException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Method f2479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IOException f2480b;

    static {
        Method declaredMethod;
        try {
            declaredMethod = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
            declaredMethod = null;
        }
        f2479a = declaredMethod;
    }

    public e(IOException iOException) {
        super(iOException);
        this.f2480b = iOException;
    }

    public IOException a() {
        return this.f2480b;
    }

    public void a(IOException iOException) {
        a(iOException, this.f2480b);
        this.f2480b = iOException;
    }

    private void a(IOException iOException, IOException iOException2) {
        Method method = f2479a;
        if (method != null) {
            try {
                method.invoke(iOException, iOException2);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }
}
