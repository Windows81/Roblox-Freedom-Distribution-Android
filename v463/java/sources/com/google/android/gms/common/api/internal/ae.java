package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ae extends aw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ConnectionResult f3483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ad f3484b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ae(ad adVar, au auVar, ConnectionResult connectionResult) {
        super(auVar);
        this.f3484b = adVar;
        this.f3483a = connectionResult;
    }

    @Override // com.google.android.gms.common.api.internal.aw
    public final void a() {
        this.f3484b.f3481a.b(this.f3483a);
    }
}
