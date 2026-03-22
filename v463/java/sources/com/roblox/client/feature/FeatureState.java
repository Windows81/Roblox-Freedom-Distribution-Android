package com.roblox.client.feature;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class FeatureState implements Parcelable {
    public static final Parcelable.Creator<FeatureState> CREATOR = new Parcelable.Creator<FeatureState>() { // from class: com.roblox.client.feature.FeatureState.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FeatureState createFromParcel(Parcel parcel) {
            return new FeatureState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FeatureState[] newArray(int i) {
            return new FeatureState[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Bundle f6019b;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public FeatureState(String str) {
        this(str, new Bundle());
    }

    public FeatureState(String str, Bundle bundle) {
        this.f6018a = str;
        this.f6019b = bundle;
    }

    public String a() {
        return this.f6018a;
    }

    public Bundle b() {
        if (this.f6019b == null) {
            this.f6019b = new Bundle();
        }
        return this.f6019b;
    }

    public void a(String str, long j) {
        b().putLong(str, j);
    }

    public long b(String str, long j) {
        return b().getLong(str, j);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f6018a);
        parcel.writeBundle(this.f6019b);
    }

    private FeatureState(Parcel parcel) {
        this.f6018a = parcel.readString();
        this.f6019b = parcel.readBundle();
    }
}
