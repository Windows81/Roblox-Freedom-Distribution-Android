package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzmu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzmu> CREATOR = new aqy();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f5809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f5811c;

    public zzmu(com.google.android.gms.ads.k kVar) {
        this(kVar.a(), kVar.b(), kVar.c());
    }

    public zzmu(boolean z, boolean z2, boolean z3) {
        this.f5809a = z;
        this.f5810b = z2;
        this.f5811c = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5809a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5810b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5811c);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
