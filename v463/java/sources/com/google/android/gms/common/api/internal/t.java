package com.google.android.gms.common.api.internal;

/* JADX INFO: Add missing generic type declarations: [TResult] */
/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class t<TResult> implements com.google.android.gms.f.c<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.f.h f3671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ r f3672b;

    t(r rVar, com.google.android.gms.f.h hVar) {
        this.f3672b = rVar;
        this.f3671a = hVar;
    }

    @Override // com.google.android.gms.f.c
    public final void a(com.google.android.gms.f.g<TResult> gVar) {
        this.f3672b.f3668b.remove(this.f3671a);
    }
}
