package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class ahq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ int f4014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ boolean f4015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ ahm f4016c;

    ahq(ahm ahmVar, int i, boolean z) {
        this.f4016c = ahmVar;
        this.f4014a = i;
        this.f4015b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zn znVarB = this.f4016c.b(this.f4014a, this.f4015b);
        this.f4016c.k = znVarB;
        if (ahm.b(this.f4014a, znVarB)) {
            this.f4016c.a(this.f4014a + 1, this.f4015b);
        }
    }
}
