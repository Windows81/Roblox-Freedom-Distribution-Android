package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
public class m extends ai {
    private b e;

    @Override // com.google.android.gms.common.api.internal.ai
    protected final void a(ConnectionResult connectionResult, int i) {
        this.e.b(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.ai
    protected final void b() {
        this.e.a();
    }
}
