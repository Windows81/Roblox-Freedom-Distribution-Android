package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final /* synthetic */ class azo implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ayy f4680a;

    private azo(ayy ayyVar) {
        this.f4680a = ayyVar;
    }

    static Runnable a(ayy ayyVar) {
        return new azo(ayyVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4680a.a();
    }
}
