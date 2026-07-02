package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class azx extends nu<bah> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4698a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final bab f4699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4700c;

    public azx(bab babVar) {
        this.f4699b = babVar;
    }

    public final void c() {
        synchronized (this.f4698a) {
            if (this.f4700c) {
                return;
            }
            this.f4700c = true;
            a(new azy(this), new ns());
            a(new azz(this), new baa(this));
        }
    }
}
