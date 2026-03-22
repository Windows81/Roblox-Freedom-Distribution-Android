package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.y;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    private final int f3421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f3422c;

    public Feature(String str, int i, long j) {
        this.f3420a = str;
        this.f3421b = i;
        this.f3422c = j;
    }

    public String a() {
        return this.f3420a;
    }

    public long b() {
        long j = this.f3422c;
        return j == -1 ? this.f3421b : j;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            if (((a() != null && a().equals(feature.a())) || (a() == null && feature.a() == null)) && b() == feature.b()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return y.a(a(), Long.valueOf(b()));
    }

    public String toString() {
        return y.a(this).a("name", a()).a("version", Long.valueOf(b())).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, a(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f3421b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, b());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
