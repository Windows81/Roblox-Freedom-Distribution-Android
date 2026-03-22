package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final /* synthetic */ class azs implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ayy f4691a;

    private azs(ayy ayyVar) {
        this.f4691a = ayyVar;
    }

    static Runnable a(ayy ayyVar) {
        return new azs(ayyVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4691a.a();
    }
}
