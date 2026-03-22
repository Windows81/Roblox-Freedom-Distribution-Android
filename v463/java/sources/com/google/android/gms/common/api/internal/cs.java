package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cs implements bi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ cq f3621a;

    private cs(cq cqVar) {
        this.f3621a = cqVar;
    }

    /* synthetic */ cs(cq cqVar, cr crVar) {
        this(cqVar);
    }

    @Override // com.google.android.gms.common.api.internal.bi
    public final void a(int i, boolean z) {
        this.f3621a.m.lock();
        try {
            if (this.f3621a.l || this.f3621a.k == null || !this.f3621a.k.b()) {
                this.f3621a.l = false;
                this.f3621a.a(i, z);
            } else {
                this.f3621a.l = true;
                this.f3621a.f3619e.a(i);
            }
        } finally {
            this.f3621a.m.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.bi
    public final void a(Bundle bundle) {
        this.f3621a.m.lock();
        try {
            this.f3621a.a(bundle);
            this.f3621a.j = ConnectionResult.f3415a;
            this.f3621a.e();
        } finally {
            this.f3621a.m.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.bi
    public final void a(ConnectionResult connectionResult) {
        this.f3621a.m.lock();
        try {
            this.f3621a.j = connectionResult;
            this.f3621a.e();
        } finally {
            this.f3621a.m.unlock();
        }
    }
}
