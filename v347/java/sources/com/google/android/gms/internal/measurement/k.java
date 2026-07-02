package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f5997a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Runnable f5998b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ i f5999c;

    k(i iVar, String str, Runnable runnable) {
        this.f5999c = iVar;
        this.f5997a = str;
        this.f5998b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5999c.f5994a.a(this.f5997a);
        if (this.f5998b != null) {
            this.f5998b.run();
        }
    }
}
