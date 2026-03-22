package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AuthAccountResult extends AbstractSafeParcelable implements l {
    public static final Parcelable.Creator<AuthAccountResult> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4759a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Intent f4761c;

    public AuthAccountResult() {
        this(0, null);
    }

    AuthAccountResult(int i, int i2, Intent intent) {
        this.f4759a = i;
        this.f4760b = i2;
        this.f4761c = intent;
    }

    public AuthAccountResult(int i, Intent intent) {
        this(2, i, intent);
    }

    public int a() {
        return this.f4760b;
    }

    @Override // com.google.android.gms.common.api.l
    public Status b() {
        return this.f4760b == 0 ? Status.f3436a : Status.f3440e;
    }

    public Intent c() {
        return this.f4761c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4759a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, a());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) c(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
