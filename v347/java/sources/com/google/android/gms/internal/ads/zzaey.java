package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class zzaey extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaey> CREATOR = new ea();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f5771a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzang f5772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ApplicationInfo f5773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f5774d;
    private final List<String> e;

    @Nullable
    private final PackageInfo f;
    private final String g;
    private final boolean h;
    private final String i;

    public zzaey(Bundle bundle, zzang zzangVar, ApplicationInfo applicationInfo, String str, List<String> list, @Nullable PackageInfo packageInfo, String str2, boolean z, String str3) {
        this.f5771a = bundle;
        this.f5772b = zzangVar;
        this.f5774d = str;
        this.f5773c = applicationInfo;
        this.e = list;
        this.f = packageInfo;
        this.g = str2;
        this.h = z;
        this.i = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5771a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f5772b, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) this.f5773c, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5774d, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 5, this.e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable) this.f, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
