package com.roblox.client.feature;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
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
    private String f6937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Bundle f6938b;

    public FeatureState(String str) {
        this(str, new Bundle());
    }

    public FeatureState(String str, Bundle bundle) {
        this.f6937a = str;
        this.f6938b = bundle;
    }

    public String a() {
        return this.f6937a;
    }

    public Bundle b() {
        if (this.f6938b == null) {
            this.f6938b = new Bundle();
        }
        return this.f6938b;
    }

    public int c() {
        return b().size();
    }

    public void a(String str, String str2) {
        b().putString(str, str2);
    }

    public void a(String str, long j) {
        b().putLong(str, j);
    }

    public void a(String str, boolean z) {
        b().putBoolean(str, z);
    }

    public String a(String str) {
        return b().getString(str);
    }

    public long b(String str, long j) {
        return b().getLong(str, j);
    }

    public boolean b(String str, boolean z) {
        return b().getBoolean(str, z);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f6937a);
        parcel.writeBundle(this.f6938b);
    }

    private FeatureState(Parcel parcel) {
        this.f6937a = parcel.readString();
        this.f6938b = parcel.readBundle();
    }
}
