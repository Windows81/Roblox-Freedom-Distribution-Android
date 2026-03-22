package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class zzbo implements Parcelable {

    @Deprecated
    public static final Parcelable.Creator<zzbo> CREATOR = new az();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4712c;

    @Deprecated
    public zzbo() {
    }

    @Deprecated
    zzbo(Parcel parcel) {
        this.f4710a = parcel.readString();
        this.f4711b = parcel.readString();
        this.f4712c = parcel.readString();
    }

    public final String a() {
        return this.f4710a;
    }

    public final String b() {
        return this.f4712c;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4710a);
        parcel.writeString(this.f4711b);
        parcel.writeString(this.f4712c);
    }
}
