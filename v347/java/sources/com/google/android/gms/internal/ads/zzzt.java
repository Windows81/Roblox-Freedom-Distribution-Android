package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class zzzt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzzt> CREATOR = new bec();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5825c;

    zzzt(int i, int i2, int i3) {
        this.f5823a = i;
        this.f5824b = i2;
        this.f5825c = i3;
    }

    public static zzzt a(su suVar) {
        return new zzzt(suVar.f5567a, suVar.f5568b, suVar.f5569c);
    }

    public final String toString() {
        int i = this.f5823a;
        int i2 = this.f5824b;
        return new StringBuilder(35).append(i).append(".").append(i2).append(".").append(this.f5825c).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5823a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5824b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5825c);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
