package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class oh implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ int f5376a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ int f5377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ oa f5378c;

    oh(oa oaVar, int i, int i2) {
        this.f5378c = oaVar;
        this.f5376a = i;
        this.f5377b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f5378c.r != null) {
            this.f5378c.r.a(this.f5376a, this.f5377b);
        }
    }
}
