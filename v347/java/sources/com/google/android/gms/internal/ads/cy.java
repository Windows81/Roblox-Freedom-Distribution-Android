package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class cy implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ nq f4918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ cp f4919b;

    cy(cp cpVar, nq nqVar) {
        this.f4919b = cpVar;
        this.f4918a = nqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4919b.f4909d) {
            this.f4919b.f4906a = this.f4919b.a(this.f4919b.f4908c.j, this.f4918a);
            if (this.f4919b.f4906a == null) {
                this.f4919b.a(0, "Could not start the ad request service.");
                jm.f5184a.removeCallbacks(this.f4919b.i);
            }
        }
    }
}
