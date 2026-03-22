package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ResolveAccountResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new y();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IBinder f3450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ConnectionResult f3451c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3452d;
    private boolean e;

    ResolveAccountResponse(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.f3449a = i;
        this.f3450b = iBinder;
        this.f3451c = connectionResult;
        this.f3452d = z;
        this.e = z2;
    }

    public o a() {
        return o.a.a(this.f3450b);
    }

    public ConnectionResult b() {
        return this.f3451c;
    }

    public boolean c() {
        return this.f3452d;
    }

    public boolean d() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResolveAccountResponse)) {
            return false;
        }
        ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse) obj;
        return this.f3451c.equals(resolveAccountResponse.f3451c) && a().equals(resolveAccountResponse.a());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f3449a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f3450b, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) b(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, c());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, d());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
