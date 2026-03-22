package b.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final String f1762b;

    protected abstract void b();

    public b(String str, Object... objArr) {
        this.f1762b = c.a(str, objArr);
    }

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f1762b);
        try {
            b();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
