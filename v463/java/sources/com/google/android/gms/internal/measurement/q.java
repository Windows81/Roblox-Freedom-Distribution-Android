package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class q extends com.google.android.gms.analytics.q<q> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4680c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4681d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4682e;
    private String f;
    private boolean g;
    private double h;

    public final String a() {
        return this.f4678a;
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        q qVar2 = (q) qVar;
        if (!TextUtils.isEmpty(this.f4678a)) {
            qVar2.f4678a = this.f4678a;
        }
        if (!TextUtils.isEmpty(this.f4679b)) {
            qVar2.f4679b = this.f4679b;
        }
        if (!TextUtils.isEmpty(this.f4680c)) {
            qVar2.f4680c = this.f4680c;
        }
        if (!TextUtils.isEmpty(this.f4681d)) {
            qVar2.f4681d = this.f4681d;
        }
        if (this.f4682e) {
            qVar2.f4682e = true;
        }
        if (!TextUtils.isEmpty(this.f)) {
            qVar2.f = this.f;
        }
        boolean z = this.g;
        if (z) {
            qVar2.g = z;
        }
        double d2 = this.h;
        if (d2 != 0.0d) {
            com.google.android.gms.common.internal.aa.b(d2 >= 0.0d && d2 <= 100.0d, "Sample rate must be between 0% and 100%");
            qVar2.h = d2;
        }
    }

    public final void a(String str) {
        this.f4678a = str;
    }

    public final void a(boolean z) {
        this.f4682e = z;
    }

    public final String b() {
        return this.f4679b;
    }

    public final void b(String str) {
        this.f4679b = str;
    }

    public final void b(boolean z) {
        this.g = true;
    }

    public final String c() {
        return this.f4680c;
    }

    public final void c(String str) {
        this.f4680c = str;
    }

    public final String d() {
        return this.f4681d;
    }

    public final void d(String str) {
        this.f4681d = str;
    }

    public final boolean e() {
        return this.f4682e;
    }

    public final String f() {
        return this.f;
    }

    public final boolean g() {
        return this.g;
    }

    public final double h() {
        return this.h;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("hitType", this.f4678a);
        map.put("clientId", this.f4679b);
        map.put("userId", this.f4680c);
        map.put("androidAdId", this.f4681d);
        map.put("AdTargetingEnabled", Boolean.valueOf(this.f4682e));
        map.put("sessionControl", this.f);
        map.put("nonInteraction", Boolean.valueOf(this.g));
        map.put("sampleRate", Double.valueOf(this.h));
        return a((Object) map);
    }
}
