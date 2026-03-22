package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f3393c;

    GoogleSignInOptionsExtensionParcelable(int i, int i2, Bundle bundle) {
        this.f3391a = i;
        this.f3392b = i2;
        this.f3393c = bundle;
    }

    public int a() {
        return this.f3392b;
    }

    public Bundle b() {
        return this.f3393c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f3391a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, a());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, b(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
