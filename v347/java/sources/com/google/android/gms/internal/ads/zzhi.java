package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.InputStream;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzhi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzhi> CREATOR = new ama();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private ParcelFileDescriptor f5794a;

    public zzhi() {
        this(null);
    }

    public zzhi(ParcelFileDescriptor parcelFileDescriptor) {
        this.f5794a = parcelFileDescriptor;
    }

    private final synchronized ParcelFileDescriptor c() {
        return this.f5794a;
    }

    public final synchronized boolean a() {
        return this.f5794a != null;
    }

    public final synchronized InputStream b() {
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = null;
        synchronized (this) {
            if (this.f5794a != null) {
                autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.f5794a);
                this.f5794a = null;
            }
        }
        return autoCloseInputStream;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) c(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
