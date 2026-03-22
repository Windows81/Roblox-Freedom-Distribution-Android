package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public abstract class iy implements kf<nd> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Thread f5160b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Runnable f5159a = new iz(this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5161c = false;

    public iy() {
    }

    public iy(boolean z) {
    }

    public abstract void a();

    @Override // com.google.android.gms.internal.ads.kf
    public final void b() {
        b_();
        if (this.f5160b != null) {
            this.f5160b.interrupt();
        }
    }

    public abstract void b_();

    @Override // com.google.android.gms.internal.ads.kf
    public final /* synthetic */ nd c() {
        return this.f5161c ? jk.b(this.f5159a) : jk.a(this.f5159a);
    }

    public final nd h() {
        return this.f5161c ? jk.b(this.f5159a) : jk.a(this.f5159a);
    }
}
