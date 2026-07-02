package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public abstract class p extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f6006a;

    protected p(r rVar) {
        super(rVar);
    }

    protected abstract void a();

    public final boolean x() {
        return this.f6006a;
    }

    protected final void y() {
        if (!x()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void z() {
        a();
        this.f6006a = true;
    }
}
