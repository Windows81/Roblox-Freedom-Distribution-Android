package com.google.android.gms.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class t implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ g f3950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ s f3951b;

    t(s sVar, g gVar) {
        this.f3951b = sVar;
        this.f3950a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f3951b.f3948b) {
            if (this.f3951b.f3949c != null) {
                this.f3951b.f3949c.a(this.f3950a.e());
            }
        }
    }
}
