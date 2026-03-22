package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class iz implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ iy f5162a;

    iz(iy iyVar) {
        this.f5162a = iyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5162a.f5160b = Thread.currentThread();
        this.f5162a.a();
    }
}
