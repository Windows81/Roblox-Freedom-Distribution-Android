package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class co implements f.b, f.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.common.api.a<?> f3612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f3613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private cp f3614c;

    public co(com.google.android.gms.common.api.a<?> aVar, boolean z) {
        this.f3612a = aVar;
        this.f3613b = z;
    }

    private final void a() {
        com.google.android.gms.common.internal.aa.a(this.f3614c, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
    }

    @Override // com.google.android.gms.common.api.f.b
    public final void a(int i) {
        a();
        this.f3614c.a(i);
    }

    @Override // com.google.android.gms.common.api.f.b
    public final void a(Bundle bundle) {
        a();
        this.f3614c.a(bundle);
    }

    @Override // com.google.android.gms.common.api.f.c
    public final void a(ConnectionResult connectionResult) {
        a();
        this.f3614c.a(connectionResult, this.f3612a, this.f3613b);
    }

    public final void a(cp cpVar) {
        this.f3614c = cpVar;
    }
}
