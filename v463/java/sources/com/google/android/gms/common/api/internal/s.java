package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class s implements g.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ BasePendingResult f3669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ r f3670b;

    s(r rVar, BasePendingResult basePendingResult) {
        this.f3670b = rVar;
        this.f3669a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.g.a
    public final void a(Status status) {
        this.f3670b.f3667a.remove(this.f3669a);
    }
}
