package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class GoogleCertificatesQuery extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleCertificatesQuery> CREATOR = new h();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final g.a f3424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f3425c;

    GoogleCertificatesQuery(String str, @Nullable IBinder iBinder, boolean z) {
        this.f3423a = str;
        this.f3424b = a(iBinder);
        this.f3425c = z;
    }

    GoogleCertificatesQuery(String str, @Nullable g.a aVar, boolean z) {
        this.f3423a = str;
        this.f3424b = aVar;
        this.f3425c = z;
    }

    @Nullable
    private static g.a a(@Nullable IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        try {
            com.google.android.gms.c.a aVarB = s.a.a(iBinder).b();
            byte[] bArr = aVarB == null ? null : (byte[]) com.google.android.gms.c.b.a(aVarB);
            if (bArr != null) {
                return new q(bArr);
            }
            Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
            return null;
        } catch (RemoteException e2) {
            Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e2);
            return null;
        }
    }

    public String a() {
        return this.f3423a;
    }

    @Nullable
    public IBinder b() {
        g.a aVar = this.f3424b;
        if (aVar != null) {
            return aVar.asBinder();
        }
        Log.w("GoogleCertificatesQuery", "certificate binder is null");
        return null;
    }

    public boolean c() {
        return this.f3425c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, a(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, c());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
