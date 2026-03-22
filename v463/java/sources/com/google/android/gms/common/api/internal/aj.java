package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class aj implements f.b, f.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aa f3491a;

    private aj(aa aaVar) {
        this.f3491a = aaVar;
    }

    /* synthetic */ aj(aa aaVar, ab abVar) {
        this(aaVar);
    }

    @Override // com.google.android.gms.common.api.f.b
    public final void a(int i) {
    }

    @Override // com.google.android.gms.common.api.f.b
    public final void a(Bundle bundle) {
        this.f3491a.k.a(new ah(this.f3491a));
    }

    @Override // com.google.android.gms.common.api.f.c
    public final void a(ConnectionResult connectionResult) {
        this.f3491a.f3473b.lock();
        try {
            if (this.f3491a.a(connectionResult)) {
                this.f3491a.g();
                this.f3491a.e();
            } else {
                this.f3491a.b(connectionResult);
            }
        } finally {
            this.f3491a.f3473b.unlock();
        }
    }
}
