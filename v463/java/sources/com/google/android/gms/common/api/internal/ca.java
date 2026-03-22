package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ca implements cc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bz f3579a;

    ca(bz bzVar) {
        this.f3579a = bzVar;
    }

    @Override // com.google.android.gms.common.api.internal.cc
    public final void a(BasePendingResult<?> basePendingResult) {
        this.f3579a.f3574b.remove(basePendingResult);
    }
}
