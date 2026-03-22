package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzahk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzahk> CREATOR = new gn();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzjj f5776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5777b;

    public zzahk(zzjj zzjjVar, String str) {
        this.f5776a = zzjjVar;
        this.f5777b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f5776a, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5777b, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
