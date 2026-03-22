package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public class zzjn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzjn> CREATOR = new aoe();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5805c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f5806d;
    public final int e;
    public final int f;
    public final zzjn[] g;
    public final boolean h;
    public final boolean i;
    public boolean j;

    public zzjn() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    public zzjn(Context context, com.google.android.gms.ads.d dVar) {
        this(context, new com.google.android.gms.ads.d[]{dVar});
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public zzjn(android.content.Context r13, com.google.android.gms.ads.d[] r14) {
        /*
            Method dump skipped, instruction units count: 255
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjn.<init>(android.content.Context, com.google.android.gms.ads.d[]):void");
    }

    public zzjn(zzjn zzjnVar, zzjn[] zzjnVarArr) {
        this(zzjnVar.f5803a, zzjnVar.f5804b, zzjnVar.f5805c, zzjnVar.f5806d, zzjnVar.e, zzjnVar.f, zzjnVarArr, zzjnVar.h, zzjnVar.i, zzjnVar.j);
    }

    zzjn(String str, int i, int i2, boolean z, int i3, int i4, zzjn[] zzjnVarArr, boolean z2, boolean z3, boolean z4) {
        this.f5803a = str;
        this.f5804b = i;
        this.f5805c = i2;
        this.f5806d = z;
        this.e = i3;
        this.f = i4;
        this.g = zzjnVarArr;
        this.h = z2;
        this.i = z3;
        this.j = z4;
    }

    public static int a(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static zzjn a() {
        return new zzjn("reward_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    public static zzjn a(Context context) {
        return new zzjn("320x50_mb", 0, 0, false, 0, 0, null, true, false, false);
    }

    public static int b(DisplayMetrics displayMetrics) {
        return (int) (c(displayMetrics) * displayMetrics.density);
    }

    private static int c(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    public final com.google.android.gms.ads.d b() {
        return com.google.android.gms.ads.m.a(this.e, this.f5804b, this.f5803a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5803a, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5804b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5805c);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f5806d);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, (Parcelable[]) this.g, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, this.j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
