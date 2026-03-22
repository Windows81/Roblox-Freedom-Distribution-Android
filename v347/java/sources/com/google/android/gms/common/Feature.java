package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.v;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    private final int f3307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f3308c;

    public Feature(String str, int i, long j) {
        this.f3306a = str;
        this.f3307b = i;
        this.f3308c = j;
    }

    public String a() {
        return this.f3306a;
    }

    public long b() {
        return this.f3308c == -1 ? this.f3307b : this.f3308c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Feature)) {
            return false;
        }
        Feature feature = (Feature) obj;
        return ((a() != null && a().equals(feature.a())) || (a() == null && feature.a() == null)) && b() == feature.b();
    }

    public int hashCode() {
        return v.a(a(), Long.valueOf(b()));
    }

    public String toString() {
        return v.a(this).a("name", a()).a("version", Long.valueOf(b())).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, a(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f3307b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, b());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
