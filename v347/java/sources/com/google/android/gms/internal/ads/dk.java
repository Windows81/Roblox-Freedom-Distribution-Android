package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.d;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class dk extends com.google.android.gms.common.internal.d<dq> {
    public dk(Context context, Looper looper, d.a aVar, d.b bVar) {
        super(context.getApplicationContext() != null ? context.getApplicationContext() : context, looper, 8, aVar, bVar, null);
    }

    public final dq A() throws DeadObjectException {
        return (dq) super.x();
    }

    @Override // com.google.android.gms.common.internal.d
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
        return iInterfaceQueryLocalInterface instanceof dq ? (dq) iInterfaceQueryLocalInterface : new ds(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String i() {
        return "com.google.android.gms.ads.service.START";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String l() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }
}
