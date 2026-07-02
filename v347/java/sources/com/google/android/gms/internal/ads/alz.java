package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;

/* JADX INFO: loaded from: classes.dex */
final class alz implements d.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ alv f4200a;

    alz(alv alvVar) {
        this.f4200a = alvVar;
    }

    @Override // com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
        synchronized (this.f4200a.f4194b) {
            this.f4200a.e = null;
            if (this.f4200a.f4195c != null) {
                alv.a(this.f4200a, (amb) null);
            }
            this.f4200a.f4194b.notifyAll();
        }
    }
}
