package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class x implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Runnable f4704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ v f4705c;

    x(v vVar, String str, Runnable runnable) {
        this.f4705c = vVar;
        this.f4703a = str;
        this.f4704b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4705c.f4700a.a(this.f4703a);
        Runnable runnable = this.f4704b;
        if (runnable != null) {
            runnable.run();
        }
    }
}
