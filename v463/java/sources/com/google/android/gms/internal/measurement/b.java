package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class b extends com.google.android.gms.analytics.q<b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4062c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f4063d;

    public final String a() {
        return this.f4060a;
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        b bVar = (b) qVar;
        if (!TextUtils.isEmpty(this.f4060a)) {
            bVar.f4060a = this.f4060a;
        }
        if (!TextUtils.isEmpty(this.f4061b)) {
            bVar.f4061b = this.f4061b;
        }
        if (!TextUtils.isEmpty(this.f4062c)) {
            bVar.f4062c = this.f4062c;
        }
        long j = this.f4063d;
        if (j != 0) {
            bVar.f4063d = j;
        }
    }

    public final String b() {
        return this.f4061b;
    }

    public final String c() {
        return this.f4062c;
    }

    public final long d() {
        return this.f4063d;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("category", this.f4060a);
        map.put("action", this.f4061b);
        map.put("label", this.f4062c);
        map.put("value", Long.valueOf(this.f4063d));
        return a((Object) map);
    }
}
