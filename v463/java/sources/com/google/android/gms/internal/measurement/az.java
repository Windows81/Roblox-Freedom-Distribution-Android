package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class az implements Parcelable.Creator<zzbo> {
    az() {
    }

    @Override // android.os.Parcelable.Creator
    @Deprecated
    public final /* synthetic */ zzbo createFromParcel(Parcel parcel) {
        return new zzbo(parcel);
    }

    @Override // android.os.Parcelable.Creator
    @Deprecated
    public final /* synthetic */ zzbo[] newArray(int i) {
        return new zzbo[i];
    }
}
