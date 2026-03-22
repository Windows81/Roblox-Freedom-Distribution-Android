package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class cd extends com.google.android.gms.analytics.q<cd> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5962c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5963d;

    public final String a() {
        return this.f5960a;
    }

    @Override // com.google.android.gms.analytics.q
    public final void a(cd cdVar) {
        if (!TextUtils.isEmpty(this.f5960a)) {
            cdVar.f5960a = this.f5960a;
        }
        if (!TextUtils.isEmpty(this.f5961b)) {
            cdVar.f5961b = this.f5961b;
        }
        if (!TextUtils.isEmpty(this.f5962c)) {
            cdVar.f5962c = this.f5962c;
        }
        if (TextUtils.isEmpty(this.f5963d)) {
            return;
        }
        cdVar.f5963d = this.f5963d;
    }

    public final void a(String str) {
        this.f5960a = str;
    }

    public final String b() {
        return this.f5961b;
    }

    public final void b(String str) {
        this.f5961b = str;
    }

    public final String c() {
        return this.f5962c;
    }

    public final void c(String str) {
        this.f5962c = str;
    }

    public final String d() {
        return this.f5963d;
    }

    public final void d(String str) {
        this.f5963d = str;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("appName", this.f5960a);
        map.put("appVersion", this.f5961b);
        map.put("appId", this.f5962c);
        map.put("appInstallerId", this.f5963d);
        return a((Object) map);
    }
}
