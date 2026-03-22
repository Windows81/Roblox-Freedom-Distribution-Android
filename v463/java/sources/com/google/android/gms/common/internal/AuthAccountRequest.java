package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AuthAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthAccountRequest> CREATOR = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    private final IBinder f3711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Scope[] f3712c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f3713d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Integer f3714e;
    private Account f;

    AuthAccountRequest(int i, IBinder iBinder, Scope[] scopeArr, Integer num, Integer num2, Account account) {
        this.f3710a = i;
        this.f3711b = iBinder;
        this.f3712c = scopeArr;
        this.f3713d = num;
        this.f3714e = num2;
        this.f = account;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f3710a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f3711b, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable[]) this.f3712c, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f3713d, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f3714e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable) this.f, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
