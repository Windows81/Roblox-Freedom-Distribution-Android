package b.a.b;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class e extends RuntimeException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Method f1773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IOException f1774b;

    static {
        Method declaredMethod;
        try {
            declaredMethod = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception e) {
            declaredMethod = null;
        }
        f1773a = declaredMethod;
    }

    public e(IOException iOException) {
        super(iOException);
        this.f1774b = iOException;
    }

    public IOException a() {
        return this.f1774b;
    }

    public void a(IOException iOException) {
        a(iOException, this.f1774b);
        this.f1774b = iOException;
    }

    private void a(IOException iOException, IOException iOException2) {
        if (f1773a != null) {
            try {
                f1773a.invoke(iOException, iOException2);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
            }
        }
    }
}
