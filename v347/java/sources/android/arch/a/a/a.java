package android.arch.a.a;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile a f16a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Executor f17d = new Executor() { // from class: android.arch.a.a.a.1
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.a().b(runnable);
        }
    };
    private static final Executor e = new Executor() { // from class: android.arch.a.a.a.2
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.a().a(runnable);
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f19c = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f18b = this.f19c;

    private a() {
    }

    public static a a() {
        if (f16a != null) {
            return f16a;
        }
        synchronized (a.class) {
            if (f16a == null) {
                f16a = new a();
            }
        }
        return f16a;
    }

    @Override // android.arch.a.a.c
    public void a(Runnable runnable) {
        this.f18b.a(runnable);
    }

    @Override // android.arch.a.a.c
    public void b(Runnable runnable) {
        this.f18b.b(runnable);
    }

    @Override // android.arch.a.a.c
    public boolean b() {
        return this.f18b.b();
    }
}
