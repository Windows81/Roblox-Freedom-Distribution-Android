package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class zzbo implements Parcelable {

    @Deprecated
    public static final Parcelable.Creator<zzbo> CREATOR = new am();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6034c;

    @Deprecated
    public zzbo() {
    }

    @Deprecated
    zzbo(Parcel parcel) {
        this.f6032a = parcel.readString();
        this.f6033b = parcel.readString();
        this.f6034c = parcel.readString();
    }

    public final String a() {
        return this.f6032a;
    }

    public final String b() {
        return this.f6034c;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f6032a);
        parcel.writeString(this.f6033b);
        parcel.writeString(this.f6034c);
    }
}
