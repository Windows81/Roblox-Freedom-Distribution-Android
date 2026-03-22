package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class aq implements com.google.android.gms.common.api.m<Status> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ n f3504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ boolean f3505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.common.api.f f3506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ am f3507d;

    aq(am amVar, n nVar, boolean z, com.google.android.gms.common.api.f fVar) {
        this.f3507d = amVar;
        this.f3504a = nVar;
        this.f3505b = z;
        this.f3506c = fVar;
    }

    @Override // com.google.android.gms.common.api.m
    public final /* synthetic */ void a(com.google.android.gms.common.api.l lVar) {
        Status status = (Status) lVar;
        com.google.android.gms.auth.api.signin.internal.c.a(this.f3507d.k).d();
        if (status.d() && this.f3507d.j()) {
            this.f3507d.h();
        }
        this.f3504a.b(status);
        if (this.f3505b) {
            this.f3506c.g();
        }
    }
}
