package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.q;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ResolveAccountResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new ac();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IBinder f3727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ConnectionResult f3728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3730e;

    ResolveAccountResponse(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.f3726a = i;
        this.f3727b = iBinder;
        this.f3728c = connectionResult;
        this.f3729d = z;
        this.f3730e = z2;
    }

    public q a() {
        return q.a.a(this.f3727b);
    }

    public ConnectionResult b() {
        return this.f3728c;
    }

    public boolean c() {
        return this.f3729d;
    }

    public boolean d() {
        return this.f3730e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResolveAccountResponse)) {
            return false;
        }
        ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse) obj;
        return this.f3728c.equals(resolveAccountResponse.f3728c) && a().equals(resolveAccountResponse.a());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f3726a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f3727b, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) b(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, c());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, d());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
