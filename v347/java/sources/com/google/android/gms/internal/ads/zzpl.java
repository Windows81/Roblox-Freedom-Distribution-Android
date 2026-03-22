package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzpl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzpl> CREATOR = new atr();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5814c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f5815d;
    public final int e;
    public final zzmu f;

    public zzpl(int i, boolean z, int i2, boolean z2, int i3, zzmu zzmuVar) {
        this.f5812a = i;
        this.f5813b = z;
        this.f5814c = i2;
        this.f5815d = z2;
        this.e = i3;
        this.f = zzmuVar;
    }

    public zzpl(com.google.android.gms.ads.formats.d dVar) {
        this(3, dVar.a(), dVar.b(), dVar.c(), dVar.d(), dVar.e() != null ? new zzmu(dVar.e()) : null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5812a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5813b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5814c);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5815d);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable) this.f, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
