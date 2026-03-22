package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ct implements bi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ cq f3622a;

    private ct(cq cqVar) {
        this.f3622a = cqVar;
    }

    /* synthetic */ ct(cq cqVar, cr crVar) {
        this(cqVar);
    }

    @Override // com.google.android.gms.common.api.internal.bi
    public final void a(int i, boolean z) {
        this.f3622a.m.lock();
        try {
            if (this.f3622a.l) {
                this.f3622a.l = false;
                this.f3622a.a(i, z);
            } else {
                this.f3622a.l = true;
                this.f3622a.f3618d.a(i);
            }
        } finally {
            this.f3622a.m.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.bi
    public final void a(Bundle bundle) {
        this.f3622a.m.lock();
        try {
            this.f3622a.k = ConnectionResult.f3415a;
            this.f3622a.e();
        } finally {
            this.f3622a.m.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.bi
    public final void a(ConnectionResult connectionResult) {
        this.f3622a.m.lock();
        try {
            this.f3622a.k = connectionResult;
            this.f3622a.e();
        } finally {
            this.f3622a.m.unlock();
        }
    }
}
