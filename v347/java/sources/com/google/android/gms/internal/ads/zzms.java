package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzms extends zzjn {
    public zzms(zzjn zzjnVar) {
        super(zzjnVar.f5803a, zzjnVar.f5804b, zzjnVar.f5805c, zzjnVar.f5806d, zzjnVar.e, zzjnVar.f, zzjnVar.g, zzjnVar.h, zzjnVar.i, zzjnVar.j);
    }

    @Override // com.google.android.gms.internal.ads.zzjn, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5803a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5804b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
