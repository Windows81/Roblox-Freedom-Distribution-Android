package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class am implements Parcelable.Creator<zzbo> {
    am() {
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
