package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzaq;
import com.google.android.gms.b.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.ads.anv;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.zzang;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new l();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzc f3151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final anv f3152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m f3153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final qd f3154d;
    public final com.google.android.gms.ads.internal.gmsg.m e;
    public final String f;
    public final boolean g;
    public final String h;
    public final s i;
    public final int j;
    public final int k;
    public final String l;
    public final zzang m;
    public final String n;
    public final zzaq o;
    public final com.google.android.gms.ads.internal.gmsg.k p;

    AdOverlayInfoParcel(zzc zzcVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, zzang zzangVar, String str4, zzaq zzaqVar, IBinder iBinder6) {
        this.f3151a = zzcVar;
        this.f3152b = (anv) com.google.android.gms.b.b.a(a.AbstractBinderC0065a.a(iBinder));
        this.f3153c = (m) com.google.android.gms.b.b.a(a.AbstractBinderC0065a.a(iBinder2));
        this.f3154d = (qd) com.google.android.gms.b.b.a(a.AbstractBinderC0065a.a(iBinder3));
        this.p = (com.google.android.gms.ads.internal.gmsg.k) com.google.android.gms.b.b.a(a.AbstractBinderC0065a.a(iBinder6));
        this.e = (com.google.android.gms.ads.internal.gmsg.m) com.google.android.gms.b.b.a(a.AbstractBinderC0065a.a(iBinder4));
        this.f = str;
        this.g = z;
        this.h = str2;
        this.i = (s) com.google.android.gms.b.b.a(a.AbstractBinderC0065a.a(iBinder5));
        this.j = i;
        this.k = i2;
        this.l = str3;
        this.m = zzangVar;
        this.n = str4;
        this.o = zzaqVar;
    }

    public AdOverlayInfoParcel(zzc zzcVar, anv anvVar, m mVar, s sVar, zzang zzangVar) {
        this.f3151a = zzcVar;
        this.f3152b = anvVar;
        this.f3153c = mVar;
        this.f3154d = null;
        this.p = null;
        this.e = null;
        this.f = null;
        this.g = false;
        this.h = null;
        this.i = sVar;
        this.j = -1;
        this.k = 4;
        this.l = null;
        this.m = zzangVar;
        this.n = null;
        this.o = null;
    }

    public AdOverlayInfoParcel(anv anvVar, m mVar, com.google.android.gms.ads.internal.gmsg.k kVar, com.google.android.gms.ads.internal.gmsg.m mVar2, s sVar, qd qdVar, boolean z, int i, String str, zzang zzangVar) {
        this.f3151a = null;
        this.f3152b = anvVar;
        this.f3153c = mVar;
        this.f3154d = qdVar;
        this.p = kVar;
        this.e = mVar2;
        this.f = null;
        this.g = z;
        this.h = null;
        this.i = sVar;
        this.j = i;
        this.k = 3;
        this.l = str;
        this.m = zzangVar;
        this.n = null;
        this.o = null;
    }

    public AdOverlayInfoParcel(anv anvVar, m mVar, com.google.android.gms.ads.internal.gmsg.k kVar, com.google.android.gms.ads.internal.gmsg.m mVar2, s sVar, qd qdVar, boolean z, int i, String str, String str2, zzang zzangVar) {
        this.f3151a = null;
        this.f3152b = anvVar;
        this.f3153c = mVar;
        this.f3154d = qdVar;
        this.p = kVar;
        this.e = mVar2;
        this.f = str2;
        this.g = z;
        this.h = str;
        this.i = sVar;
        this.j = i;
        this.k = 3;
        this.l = null;
        this.m = zzangVar;
        this.n = null;
        this.o = null;
    }

    public AdOverlayInfoParcel(anv anvVar, m mVar, s sVar, qd qdVar, int i, zzang zzangVar, String str, zzaq zzaqVar) {
        this.f3151a = null;
        this.f3152b = anvVar;
        this.f3153c = mVar;
        this.f3154d = qdVar;
        this.p = null;
        this.e = null;
        this.f = null;
        this.g = false;
        this.h = null;
        this.i = sVar;
        this.j = i;
        this.k = 1;
        this.l = null;
        this.m = zzangVar;
        this.n = str;
        this.o = zzaqVar;
    }

    public AdOverlayInfoParcel(anv anvVar, m mVar, s sVar, qd qdVar, boolean z, int i, zzang zzangVar) {
        this.f3151a = null;
        this.f3152b = anvVar;
        this.f3153c = mVar;
        this.f3154d = qdVar;
        this.p = null;
        this.e = null;
        this.f = null;
        this.g = z;
        this.h = null;
        this.i = sVar;
        this.j = i;
        this.k = 2;
        this.l = null;
        this.m = zzangVar;
        this.n = null;
        this.o = null;
    }

    public static AdOverlayInfoParcel a(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            return null;
        }
    }

    public static void a(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f3151a, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, com.google.android.gms.b.b.a(this.f3152b).asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, com.google.android.gms.b.b.a(this.f3153c).asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, com.google.android.gms.b.b.a(this.f3154d).asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, com.google.android.gms.b.b.a(this.e).asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, com.google.android.gms.b.b.a(this.i).asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, this.j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, this.l, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, (Parcelable) this.m, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, this.n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 17, (Parcelable) this.o, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 18, com.google.android.gms.b.b.a(this.p).asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
