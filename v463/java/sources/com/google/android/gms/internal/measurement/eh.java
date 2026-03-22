package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class eh implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ boolean f4257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ eg f4258b;

    eh(eg egVar, boolean z) {
        this.f4258b = egVar;
        this.f4257a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4258b.f4254b.a(this.f4257a);
    }
}
