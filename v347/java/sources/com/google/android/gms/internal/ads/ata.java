package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class ata extends avy implements ati {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4468a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<ass> f4469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4470c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private aub f4471d;
    private String e;
    private String f;
    private double g;
    private String h;
    private String i;
    private aso j;
    private aqc k;
    private View l;
    private com.google.android.gms.b.a m;
    private String n;
    private Bundle o;
    private Object p = new Object();
    private ate q;

    public ata(String str, List<ass> list, String str2, aub aubVar, String str3, String str4, double d2, String str5, String str6, aso asoVar, aqc aqcVar, View view, com.google.android.gms.b.a aVar, String str7, Bundle bundle) {
        this.f4468a = str;
        this.f4469b = list;
        this.f4470c = str2;
        this.f4471d = aubVar;
        this.e = str3;
        this.f = str4;
        this.g = d2;
        this.h = str5;
        this.i = str6;
        this.j = asoVar;
        this.k = aqcVar;
        this.l = view;
        this.m = aVar;
        this.n = str7;
        this.o = bundle;
    }

    static /* synthetic */ ate a(ata ataVar, ate ateVar) {
        ataVar.q = null;
        return null;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final String a() {
        return this.f4468a;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final void a(Bundle bundle) {
        synchronized (this.p) {
            if (this.q == null) {
                jd.c("#001 Attempt to perform click before app native ad initialized.");
            } else {
                this.q.b(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final void a(ate ateVar) {
        synchronized (this.p) {
            this.q = ateVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final void a(avv avvVar) {
        this.q.a(avvVar);
    }

    @Override // com.google.android.gms.internal.ads.avx, com.google.android.gms.internal.ads.ati
    public final List b() {
        return this.f4469b;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final boolean b(Bundle bundle) {
        boolean zA;
        synchronized (this.p) {
            if (this.q == null) {
                jd.c("#002 Attempt to record impression before native ad initialized.");
                zA = false;
            } else {
                zA = this.q.a(bundle);
            }
        }
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final String c() {
        return this.f4470c;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final void c(Bundle bundle) {
        synchronized (this.p) {
            if (this.q == null) {
                jd.c("#003 Attempt to report touch event before native ad initialized.");
            } else {
                this.q.c(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final aub d() {
        return this.f4471d;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final String e() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final String f() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final double g() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final String h() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final String i() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final aqc j() {
        return this.k;
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final String k() {
        return "6";
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final String l() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final aso m() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final com.google.android.gms.b.a n() {
        return com.google.android.gms.b.b.a(this.q);
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final View o() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final com.google.android.gms.b.a p() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final String q() {
        return this.n;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final Bundle r() {
        return this.o;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final atx s() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final void t() {
        jm.f5184a.post(new atb(this));
    }

    @Override // com.google.android.gms.internal.ads.avx
    public final void u() {
        this.q.c();
    }
}
