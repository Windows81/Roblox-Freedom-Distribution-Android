package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.d;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class awj extends com.google.android.gms.common.internal.d<awm> {
    awj(Context context, Looper looper, d.a aVar, d.b bVar) {
        super(context, looper, 166, aVar, bVar, null);
    }

    public final awm A() throws DeadObjectException {
        return (awm) super.x();
    }

    @Override // com.google.android.gms.common.internal.d
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
        return iInterfaceQueryLocalInterface instanceof awm ? (awm) iInterfaceQueryLocalInterface : new awn(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String i() {
        return "com.google.android.gms.ads.service.HTTP";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String l() {
        return "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService";
    }
}
