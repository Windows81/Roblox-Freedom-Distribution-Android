package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.d;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class amb extends com.google.android.gms.common.internal.d<ame> {
    amb(Context context, Looper looper, d.a aVar, d.b bVar) {
        super(context, looper, 123, aVar, bVar, null);
    }

    public final ame A() throws DeadObjectException {
        return (ame) super.x();
    }

    @Override // com.google.android.gms.common.internal.d
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.cache.ICacheService");
        return iInterfaceQueryLocalInterface instanceof ame ? (ame) iInterfaceQueryLocalInterface : new amf(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String i() {
        return "com.google.android.gms.ads.service.CACHE";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String l() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }
}
