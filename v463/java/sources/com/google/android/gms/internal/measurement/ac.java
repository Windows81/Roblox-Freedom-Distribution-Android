package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class ac extends ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4007a;

    protected ac(ae aeVar) {
        super(aeVar);
    }

    protected abstract void a();

    public final boolean x() {
        return this.f4007a;
    }

    protected final void y() {
        if (!x()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void z() {
        a();
        this.f4007a = true;
    }
}
