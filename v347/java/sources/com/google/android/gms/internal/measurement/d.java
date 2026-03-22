package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class d extends com.google.android.gms.analytics.q<d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5977c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5978d;
    private boolean e;
    private String f;
    private boolean g;
    private double h;

    public final String a() {
        return this.f5975a;
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        d dVar = (d) qVar;
        if (!TextUtils.isEmpty(this.f5975a)) {
            dVar.f5975a = this.f5975a;
        }
        if (!TextUtils.isEmpty(this.f5976b)) {
            dVar.f5976b = this.f5976b;
        }
        if (!TextUtils.isEmpty(this.f5977c)) {
            dVar.f5977c = this.f5977c;
        }
        if (!TextUtils.isEmpty(this.f5978d)) {
            dVar.f5978d = this.f5978d;
        }
        if (this.e) {
            dVar.e = true;
        }
        if (!TextUtils.isEmpty(this.f)) {
            dVar.f = this.f;
        }
        if (this.g) {
            dVar.g = this.g;
        }
        if (this.h != 0.0d) {
            double d2 = this.h;
            com.google.android.gms.common.internal.w.b(d2 >= 0.0d && d2 <= 100.0d, "Sample rate must be between 0% and 100%");
            dVar.h = d2;
        }
    }

    public final void a(String str) {
        this.f5975a = str;
    }

    public final void a(boolean z) {
        this.e = z;
    }

    public final String b() {
        return this.f5976b;
    }

    public final void b(String str) {
        this.f5976b = str;
    }

    public final void b(boolean z) {
        this.g = true;
    }

    public final String c() {
        return this.f5977c;
    }

    public final void c(String str) {
        this.f5977c = str;
    }

    public final String d() {
        return this.f5978d;
    }

    public final void d(String str) {
        this.f5978d = str;
    }

    public final boolean e() {
        return this.e;
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
        map.put("hitType", this.f5975a);
        map.put("clientId", this.f5976b);
        map.put("userId", this.f5977c);
        map.put("androidAdId", this.f5978d);
        map.put("AdTargetingEnabled", Boolean.valueOf(this.e));
        map.put("sessionControl", this.f);
        map.put("nonInteraction", Boolean.valueOf(this.g));
        map.put("sampleRate", Double.valueOf(this.h));
        return a((Object) map);
    }
}
