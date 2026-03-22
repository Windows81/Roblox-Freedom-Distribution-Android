package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class ast extends aur implements ati {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<ass> f4452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private aub f4454d;
    private String e;
    private double f;
    private String g;
    private String h;
    private aso i;
    private Bundle j;
    private aqc k;
    private View l;
    private com.google.android.gms.b.a m;
    private String n;
    private Object o = new Object();
    private ate p;

    public ast(String str, List<ass> list, String str2, aub aubVar, String str3, double d2, String str4, String str5, aso asoVar, Bundle bundle, aqc aqcVar, View view, com.google.android.gms.b.a aVar, String str6) {
        this.f4451a = str;
        this.f4452b = list;
        this.f4453c = str2;
        this.f4454d = aubVar;
        this.e = str3;
        this.f = d2;
        this.g = str4;
        this.h = str5;
        this.i = asoVar;
        this.j = bundle;
        this.k = aqcVar;
        this.l = view;
        this.m = aVar;
        this.n = str6;
    }

    static /* synthetic */ ate a(ast astVar, ate ateVar) {
        astVar.p = null;
        return null;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final String a() {
        return this.f4451a;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final void a(Bundle bundle) {
        synchronized (this.o) {
            if (this.p == null) {
                jd.c("#001 Attempt to perform click before app native ad initialized.");
            } else {
                this.p.b(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final void a(ate ateVar) {
        synchronized (this.o) {
            this.p = ateVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.auq, com.google.android.gms.internal.ads.ati
    public final List b() {
        return this.f4452b;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final boolean b(Bundle bundle) {
        boolean zA;
        synchronized (this.o) {
            if (this.p == null) {
                jd.c("#002 Attempt to record impression before native ad initialized.");
                zA = false;
            } else {
                zA = this.p.a(bundle);
            }
        }
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final String c() {
        return this.f4453c;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final void c(Bundle bundle) {
        synchronized (this.o) {
            if (this.p == null) {
                jd.c("#003 Attempt to report touch event before native ad initialized.");
            } else {
                this.p.c(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final aub d() {
        return this.f4454d;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final String e() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final double f() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final String g() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final String h() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final aqc i() {
        return this.k;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final com.google.android.gms.b.a j() {
        return com.google.android.gms.b.b.a(this.p);
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final String k() {
        return "2";
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final String l() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final aso m() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final Bundle n() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final View o() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final com.google.android.gms.b.a p() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final String q() {
        return this.n;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final atx r() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.auq
    public final void s() {
        jm.f5184a.post(new asu(this));
        this.f4451a = null;
        this.f4452b = null;
        this.f4453c = null;
        this.f4454d = null;
        this.e = null;
        this.f = 0.0d;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.o = null;
        this.k = null;
        this.l = null;
    }
}
