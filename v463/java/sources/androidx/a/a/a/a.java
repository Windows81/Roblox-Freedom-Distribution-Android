package androidx.a.a.a;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile a f559a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Executor f560d = new Executor() { // from class: androidx.a.a.a.a.1
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.a().b(runnable);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Executor f561e = new Executor() { // from class: androidx.a.a.a.a.2
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.a().a(runnable);
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f563c;

    private a() {
        b bVar = new b();
        this.f563c = bVar;
        this.f562b = bVar;
    }

    public static a a() {
        if (f559a != null) {
            return f559a;
        }
        synchronized (a.class) {
            if (f559a == null) {
                f559a = new a();
            }
        }
        return f559a;
    }

    @Override // androidx.a.a.a.c
    public void a(Runnable runnable) {
        this.f562b.a(runnable);
    }

    @Override // androidx.a.a.a.c
    public void b(Runnable runnable) {
        this.f562b.b(runnable);
    }

    public static Executor b() {
        return f561e;
    }

    @Override // androidx.a.a.a.c
    public boolean c() {
        return this.f562b.c();
    }
}
