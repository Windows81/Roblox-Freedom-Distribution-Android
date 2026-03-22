package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.ads.apo;
import com.google.android.gms.internal.ads.app;
import com.google.android.gms.internal.ads.cm;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new m();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f2962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final apo f2963b;

    PublisherAdViewOptions(boolean z, IBinder iBinder) {
        this.f2962a = z;
        this.f2963b = iBinder != null ? app.a(iBinder) : null;
    }

    public final boolean a() {
        return this.f2962a;
    }

    public final apo b() {
        return this.f2963b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, a());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f2963b == null ? null : this.f2963b.asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
