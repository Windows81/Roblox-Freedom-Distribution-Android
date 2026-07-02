package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;

/* JADX INFO: loaded from: classes.dex */
final class awt implements d.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ no f4567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ awo f4568b;

    awt(awo awoVar, no noVar) {
        this.f4568b = awoVar;
        this.f4567a = noVar;
    }

    @Override // com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
        synchronized (this.f4568b.f4556d) {
            this.f4567a.a(new RuntimeException("Connection failed."));
        }
    }
}
