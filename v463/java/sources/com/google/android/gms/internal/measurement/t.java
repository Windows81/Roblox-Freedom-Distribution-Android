package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class t extends com.google.android.gms.analytics.q<t> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f4692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f4693c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4694d;

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        t tVar = (t) qVar;
        if (!TextUtils.isEmpty(this.f4691a)) {
            tVar.f4691a = this.f4691a;
        }
        long j = this.f4692b;
        if (j != 0) {
            tVar.f4692b = j;
        }
        if (!TextUtils.isEmpty(this.f4693c)) {
            tVar.f4693c = this.f4693c;
        }
        if (TextUtils.isEmpty(this.f4694d)) {
            return;
        }
        tVar.f4694d = this.f4694d;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("variableName", this.f4691a);
        map.put("timeInMillis", Long.valueOf(this.f4692b));
        map.put("category", this.f4693c);
        map.put("label", this.f4694d);
        return a((Object) map);
    }
}
