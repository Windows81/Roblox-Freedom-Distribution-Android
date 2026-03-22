package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SignInRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInRequest> CREATOR = new h();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ResolveAccountRequest f4770b;

    SignInRequest(int i, ResolveAccountRequest resolveAccountRequest) {
        this.f4769a = i;
        this.f4770b = resolveAccountRequest;
    }

    public SignInRequest(ResolveAccountRequest resolveAccountRequest) {
        this(1, resolveAccountRequest);
    }

    public ResolveAccountRequest a() {
        return this.f4770b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4769a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) a(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
