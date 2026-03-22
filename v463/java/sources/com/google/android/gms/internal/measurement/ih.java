package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class ih extends ig {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f4544b;

    ih(ii iiVar) {
        super(iiVar);
        this.f4543a.a(this);
    }

    final boolean M() {
        return this.f4544b;
    }

    protected final void N() {
        if (!M()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void O() {
        if (this.f4544b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        t();
        this.f4543a.I();
        this.f4544b = true;
    }

    protected abstract boolean t();
}
