package com.google.android.gms.common.api.internal;

/* JADX INFO: Add missing generic type declarations: [TResult] */
/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class l<TResult> implements com.google.android.gms.d.b<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.d.g f3392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ k f3393b;

    l(k kVar, com.google.android.gms.d.g gVar) {
        this.f3393b = kVar;
        this.f3392a = gVar;
    }

    @Override // com.google.android.gms.d.b
    public final void a(com.google.android.gms.d.f<TResult> fVar) {
        this.f3393b.f3391b.remove(this.f3392a);
    }
}
