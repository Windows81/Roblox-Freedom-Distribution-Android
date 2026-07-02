package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class aot extends aiy implements aor {
    aot(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    @Override // com.google.android.gms.internal.ads.aor
    public final void a() throws RemoteException {
        b(1, q_());
    }
}
