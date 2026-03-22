package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class zzeu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzeu> CREATOR = new dm();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzer f4725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4726c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f4727d;

    zzeu(zzeu zzeuVar, long j) {
        com.google.android.gms.common.internal.aa.a(zzeuVar);
        this.f4724a = zzeuVar.f4724a;
        this.f4725b = zzeuVar.f4725b;
        this.f4726c = zzeuVar.f4726c;
        this.f4727d = j;
    }

    public zzeu(String str, zzer zzerVar, String str2, long j) {
        this.f4724a = str;
        this.f4725b = zzerVar;
        this.f4726c = str2;
        this.f4727d = j;
    }

    public final String toString() {
        String str = this.f4726c;
        String str2 = this.f4724a;
        String strValueOf = String.valueOf(this.f4725b);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(strValueOf).length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(strValueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4724a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) this.f4725b, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4726c, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f4727d);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
