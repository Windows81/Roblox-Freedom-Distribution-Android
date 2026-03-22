package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.ads.cm;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3182c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3183d;
    public final String e;
    public final Intent f;
    private final String g;
    private final String h;

    public zzc(Intent intent) {
        this(null, null, null, null, null, null, null, intent);
    }

    public zzc(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this(str, str2, str3, str4, str5, str6, str7, null);
    }

    public zzc(String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent) {
        this.g = str;
        this.f3180a = str2;
        this.f3181b = str3;
        this.f3182c = str4;
        this.f3183d = str5;
        this.e = str6;
        this.h = str7;
        this.f = intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f3180a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f3181b, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f3182c, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f3183d, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, (Parcelable) this.f, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
