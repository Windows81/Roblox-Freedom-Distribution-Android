package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ConnectionInfo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ConnectionInfo> CREATOR = new g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bundle f3439a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Feature[] f3440b;

    public ConnectionInfo() {
    }

    ConnectionInfo(Bundle bundle, Feature[] featureArr) {
        this.f3439a = bundle;
        this.f3440b = featureArr;
    }

    public Bundle a() {
        return this.f3439a;
    }

    public Feature[] b() {
        return this.f3440b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f3439a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable[]) this.f3440b, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
