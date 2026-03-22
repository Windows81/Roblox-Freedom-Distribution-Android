package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class AuthAccountResult extends AbstractSafeParcelable implements com.google.android.gms.common.api.i {
    public static final Parcelable.Creator<AuthAccountResult> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Intent f6050c;

    public AuthAccountResult() {
        this(0, null);
    }

    AuthAccountResult(int i, int i2, Intent intent) {
        this.f6048a = i;
        this.f6049b = i2;
        this.f6050c = intent;
    }

    public AuthAccountResult(int i, Intent intent) {
        this(2, i, intent);
    }

    @Override // com.google.android.gms.common.api.i
    public Status a() {
        return this.f6049b == 0 ? Status.f3318a : Status.e;
    }

    public int b() {
        return this.f6049b;
    }

    public Intent c() {
        return this.f6050c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f6048a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) c(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
