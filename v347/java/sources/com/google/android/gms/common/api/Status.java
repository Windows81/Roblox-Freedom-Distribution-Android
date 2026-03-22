package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.v;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class Status extends AbstractSafeParcelable implements i, ReflectedParcelable {
    private final int h;
    private final int i;
    private final String j;
    private final PendingIntent k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Status f3318a = new Status(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Status f3319b = new Status(14);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Status f3320c = new Status(8);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Status f3321d = new Status(15);
    public static final Status e = new Status(16);
    private static final Status g = new Status(17);
    public static final Status f = new Status(18);
    public static final Parcelable.Creator<Status> CREATOR = new m();

    public Status(int i) {
        this(i, null);
    }

    Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.h = i;
        this.i = i2;
        this.j = str;
        this.k = pendingIntent;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    @Override // com.google.android.gms.common.api.i
    public final Status a() {
        return this;
    }

    public final String b() {
        return this.j;
    }

    public final int c() {
        return this.i;
    }

    public final String d() {
        return this.j != null ? this.j : d.a(this.i);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.h == status.h && this.i == status.i && v.a(this.j, status.j) && v.a(this.k, status.k);
    }

    public final int hashCode() {
        return v.a(Integer.valueOf(this.h), Integer.valueOf(this.i), this.j, this.k);
    }

    public final String toString() {
        return v.a(this).a("statusCode", d()).a("resolution", this.k).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, c());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) this.k, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1000, this.h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
