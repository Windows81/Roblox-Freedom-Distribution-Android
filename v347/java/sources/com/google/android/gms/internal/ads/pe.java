package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
@cm
final class pe implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private oo f5421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f5422b = false;

    pe(oo ooVar) {
        this.f5421a = ooVar;
    }

    private final void c() {
        jm.f5184a.removeCallbacks(this);
        jm.f5184a.postDelayed(this, 250L);
    }

    public final void a() {
        this.f5422b = true;
    }

    public final void b() {
        this.f5422b = false;
        c();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f5422b) {
            return;
        }
        this.f5421a.o();
        c();
    }
}
