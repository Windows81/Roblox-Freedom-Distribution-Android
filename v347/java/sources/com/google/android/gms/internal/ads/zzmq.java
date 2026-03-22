package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzmq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzmq> CREATOR = new aqw();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5808a;

    public zzmq(com.google.android.gms.ads.c.a aVar) {
        this.f5808a = aVar.a();
    }

    zzmq(String str) {
        this.f5808a = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, this.f5808a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
