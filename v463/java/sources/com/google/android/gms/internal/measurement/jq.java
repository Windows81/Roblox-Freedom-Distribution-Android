package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class jq extends com.google.android.gms.analytics.q<jq> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4624a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4626c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4627d;

    public final String a() {
        return this.f4624a;
    }

    @Override // com.google.android.gms.analytics.q
    public final void a(jq jqVar) {
        if (!TextUtils.isEmpty(this.f4624a)) {
            jqVar.f4624a = this.f4624a;
        }
        if (!TextUtils.isEmpty(this.f4625b)) {
            jqVar.f4625b = this.f4625b;
        }
        if (!TextUtils.isEmpty(this.f4626c)) {
            jqVar.f4626c = this.f4626c;
        }
        if (TextUtils.isEmpty(this.f4627d)) {
            return;
        }
        jqVar.f4627d = this.f4627d;
    }

    public final void a(String str) {
        this.f4624a = str;
    }

    public final String b() {
        return this.f4625b;
    }

    public final void b(String str) {
        this.f4625b = str;
    }

    public final String c() {
        return this.f4626c;
    }

    public final void c(String str) {
        this.f4626c = str;
    }

    public final String d() {
        return this.f4627d;
    }

    public final void d(String str) {
        this.f4627d = str;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("appName", this.f4624a);
        map.put("appVersion", this.f4625b);
        map.put("appId", this.f4626c);
        map.put("appInstallerId", this.f4627d);
        return a((Object) map);
    }
}
