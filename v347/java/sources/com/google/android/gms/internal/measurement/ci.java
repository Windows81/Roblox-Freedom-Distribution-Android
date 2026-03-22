package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ci extends com.google.android.gms.analytics.q<ci> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5973c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5974d;
    public int e;
    private String f;

    public final String a() {
        return this.f;
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        ci ciVar = (ci) qVar;
        if (this.f5971a != 0) {
            ciVar.f5971a = this.f5971a;
        }
        if (this.f5972b != 0) {
            ciVar.f5972b = this.f5972b;
        }
        if (this.f5973c != 0) {
            ciVar.f5973c = this.f5973c;
        }
        if (this.f5974d != 0) {
            ciVar.f5974d = this.f5974d;
        }
        if (this.e != 0) {
            ciVar.e = this.e;
        }
        if (TextUtils.isEmpty(this.f)) {
            return;
        }
        ciVar.f = this.f;
    }

    public final void a(String str) {
        this.f = str;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("language", this.f);
        map.put("screenColors", Integer.valueOf(this.f5971a));
        map.put("screenWidth", Integer.valueOf(this.f5972b));
        map.put("screenHeight", Integer.valueOf(this.f5973c));
        map.put("viewportWidth", Integer.valueOf(this.f5974d));
        map.put("viewportHeight", Integer.valueOf(this.e));
        return a((Object) map);
    }
}
