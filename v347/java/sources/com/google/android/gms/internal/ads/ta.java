package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.d;

/* JADX INFO: loaded from: classes.dex */
public final class ta extends com.google.android.gms.common.internal.d<td> {
    public ta(Context context, Looper looper, d.a aVar, d.b bVar) {
        super(context, looper, 116, aVar, bVar, null);
    }

    public final td A() throws DeadObjectException {
        return (td) super.x();
    }

    @Override // com.google.android.gms.common.internal.d
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
        return iInterfaceQueryLocalInterface instanceof td ? (td) iInterfaceQueryLocalInterface : new te(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String i() {
        return "com.google.android.gms.gass.START";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String l() {
        return "com.google.android.gms.gass.internal.IGassService";
    }
}
