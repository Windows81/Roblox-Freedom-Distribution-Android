package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class bg extends cc implements bf {
    bg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.analytics.internal.IAnalyticsService");
    }

    @Override // com.google.android.gms.internal.measurement.bf
    public final void a(Map map, long j, String str, List<zzbo> list) throws RemoteException {
        Parcel parcelA = a();
        parcelA.writeMap(map);
        parcelA.writeLong(j);
        parcelA.writeString(str);
        parcelA.writeTypedList(list);
        a(1, parcelA);
    }
}
