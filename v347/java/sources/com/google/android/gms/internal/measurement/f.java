package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class f extends com.google.android.gms.analytics.q<f> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f5983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f5984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f5985c;

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        f fVar = (f) qVar;
        if (!TextUtils.isEmpty(this.f5983a)) {
            fVar.f5983a = this.f5983a;
        }
        if (!TextUtils.isEmpty(this.f5984b)) {
            fVar.f5984b = this.f5984b;
        }
        if (TextUtils.isEmpty(this.f5985c)) {
            return;
        }
        fVar.f5985c = this.f5985c;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("network", this.f5983a);
        map.put("action", this.f5984b);
        map.put("target", this.f5985c);
        return a((Object) map);
    }
}
