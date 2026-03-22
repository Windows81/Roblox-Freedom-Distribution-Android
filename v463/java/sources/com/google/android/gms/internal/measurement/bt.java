package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class bt extends jj implements bs {
    bt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.analytics.internal.IAnalyticsService");
    }

    @Override // com.google.android.gms.internal.measurement.bs
    public final void a(Map map, long j, String str, List<zzbo> list) throws RemoteException {
        Parcel parcelA = a();
        parcelA.writeMap(map);
        parcelA.writeLong(j);
        parcelA.writeString(str);
        parcelA.writeTypedList(list);
        b(1, parcelA);
    }
}
