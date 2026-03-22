package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class zzatv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatv> CREATOR = new tc();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zn f5792b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f5793c;

    zzatv(int i, byte[] bArr) {
        this.f5791a = i;
        this.f5793c = bArr;
        b();
    }

    private final void b() {
        if (this.f5792b != null || this.f5793c == null) {
            if (this.f5792b == null || this.f5793c != null) {
                if (this.f5792b != null && this.f5793c != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (this.f5792b != null || this.f5793c != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }

    public final zn a() {
        if (!(this.f5792b != null)) {
            try {
                this.f5792b = (zn) afb.a(new zn(), this.f5793c);
                this.f5793c = null;
            } catch (afa e) {
                throw new IllegalStateException(e);
            }
        }
        b();
        return this.f5792b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5791a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5793c != null ? this.f5793c : afb.a(this.f5792b), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
