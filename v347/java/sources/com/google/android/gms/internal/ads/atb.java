package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class atb implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ata f4472a;

    atb(ata ataVar) {
        this.f4472a = ataVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4472a.q != null) {
            this.f4472a.q.i();
            this.f4472a.q.h();
            this.f4472a.q.k();
        }
        ata.a(this.f4472a, null);
    }
}
