package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class b extends com.google.android.gms.analytics.q<b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5893c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f5894d;

    public final String a() {
        return this.f5891a;
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        b bVar = (b) qVar;
        if (!TextUtils.isEmpty(this.f5891a)) {
            bVar.f5891a = this.f5891a;
        }
        if (!TextUtils.isEmpty(this.f5892b)) {
            bVar.f5892b = this.f5892b;
        }
        if (!TextUtils.isEmpty(this.f5893c)) {
            bVar.f5893c = this.f5893c;
        }
        if (this.f5894d != 0) {
            bVar.f5894d = this.f5894d;
        }
    }

    public final String b() {
        return this.f5892b;
    }

    public final String c() {
        return this.f5893c;
    }

    public final long d() {
        return this.f5894d;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("category", this.f5891a);
        map.put("action", this.f5892b);
        map.put("label", this.f5893c);
        map.put("value", Long.valueOf(this.f5894d));
        return a((Object) map);
    }
}
