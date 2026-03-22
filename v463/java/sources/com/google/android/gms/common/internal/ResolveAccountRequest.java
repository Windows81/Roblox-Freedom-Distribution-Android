package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ResolveAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountRequest> CREATOR = new ab();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Account f3723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3724c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final GoogleSignInAccount f3725d;

    ResolveAccountRequest(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.f3722a = i;
        this.f3723b = account;
        this.f3724c = i2;
        this.f3725d = googleSignInAccount;
    }

    public ResolveAccountRequest(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }

    public Account a() {
        return this.f3723b;
    }

    public int b() {
        return this.f3724c;
    }

    public GoogleSignInAccount c() {
        return this.f3725d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f3722a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) a(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, b());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable) c(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
