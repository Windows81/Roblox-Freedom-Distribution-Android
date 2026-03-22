package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class asv extends auv implements ati {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<ass> f4457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4458c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private aub f4459d;
    private String e;
    private String f;
    private aso g;
    private Bundle h;
    private aqc i;
    private View j;
    private com.google.android.gms.b.a k;
    private String l;
    private Object m = new Object();
    private ate n;

    public asv(String str, List<ass> list, String str2, aub aubVar, String str3, String str4, aso asoVar, Bundle bundle, aqc aqcVar, View view, com.google.android.gms.b.a aVar, String str5) {
        this.f4456a = str;
        this.f4457b = list;
        this.f4458c = str2;
        this.f4459d = aubVar;
        this.e = str3;
        this.f = str4;
        this.g = asoVar;
        this.h = bundle;
        this.i = aqcVar;
        this.j = view;
        this.k = aVar;
        this.l = str5;
    }

    static /* synthetic */ ate a(asv asvVar, ate ateVar) {
        asvVar.n = null;
        return null;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final String a() {
        return this.f4456a;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final void a(Bundle bundle) {
        synchronized (this.m) {
            if (this.n == null) {
                jd.c("#001 Attempt to perform click before app native ad initialized.");
            } else {
                this.n.b(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final void a(ate ateVar) {
        synchronized (this.m) {
            this.n = ateVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.auu, com.google.android.gms.internal.ads.ati
    public final List b() {
        return this.f4457b;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final boolean b(Bundle bundle) {
        boolean zA;
        synchronized (this.m) {
            if (this.n == null) {
                jd.c("#002 Attempt to record impression before native ad initialized.");
                zA = false;
            } else {
                zA = this.n.a(bundle);
            }
        }
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final com.google.android.gms.b.a c() {
        return this.k;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final void c(Bundle bundle) {
        synchronized (this.m) {
            if (this.n == null) {
                jd.c("#003 Attempt to report touch event before native ad initialized.");
            } else {
                this.n.c(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final String d() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final String e() {
        return this.f4458c;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final aub f() {
        return this.f4459d;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final String g() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final String h() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final aqc i() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final com.google.android.gms.b.a j() {
        return com.google.android.gms.b.b.a(this.n);
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final String k() {
        return "1";
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final String l() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final aso m() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final Bundle n() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final View o() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final atx p() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.auu
    public final void q() {
        jm.f5184a.post(new asw(this));
        this.f4456a = null;
        this.f4457b = null;
        this.f4458c = null;
        this.f4459d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.m = null;
        this.i = null;
        this.j = null;
    }
}
