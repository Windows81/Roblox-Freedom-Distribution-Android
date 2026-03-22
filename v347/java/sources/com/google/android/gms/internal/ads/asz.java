package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class asz implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ asx f4466a;

    asz(asx asxVar) {
        this.f4466a = asxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4466a.h != null) {
            this.f4466a.h.i();
            this.f4466a.h.h();
        }
        asx.a(this.f4466a, null);
    }
}
