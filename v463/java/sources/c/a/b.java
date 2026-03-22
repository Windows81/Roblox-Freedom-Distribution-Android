package c.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final String f2467b;

    protected abstract void b();

    public b(String str, Object... objArr) {
        this.f2467b = c.a(str, objArr);
    }

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f2467b);
        try {
            b();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
