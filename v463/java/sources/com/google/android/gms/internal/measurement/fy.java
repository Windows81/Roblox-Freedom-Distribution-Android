package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class fy extends fx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4377a;

    fy(fc fcVar) {
        super(fcVar);
        this.q.a(this);
    }

    final boolean E() {
        return this.f4377a;
    }

    protected final void F() {
        if (!E()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void G() {
        if (this.f4377a) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (t()) {
            return;
        }
        this.q.A();
        this.f4377a = true;
    }

    public final void H() {
        if (this.f4377a) {
            throw new IllegalStateException("Can't initialize twice");
        }
        e_();
        this.q.A();
        this.f4377a = true;
    }

    protected void e_() {
    }

    protected abstract boolean t();
}
