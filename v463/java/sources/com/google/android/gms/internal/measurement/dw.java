package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class dw extends com.google.android.gms.common.internal.d<dp> {
    public dw(Context context, Looper looper, d.a aVar, d.b bVar) {
        super(context, looper, 93, aVar, bVar, null);
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return iInterfaceQueryLocalInterface instanceof dp ? (dp) iInterfaceQueryLocalInterface : new dr(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String a_() {
        return "com.google.android.gms.measurement.START";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String b() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }
}
