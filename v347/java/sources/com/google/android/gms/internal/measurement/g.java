package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class g extends com.google.android.gms.analytics.q<g> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f5986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f5987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f5988c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f5989d;

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        g gVar = (g) qVar;
        if (!TextUtils.isEmpty(this.f5986a)) {
            gVar.f5986a = this.f5986a;
        }
        if (this.f5987b != 0) {
            gVar.f5987b = this.f5987b;
        }
        if (!TextUtils.isEmpty(this.f5988c)) {
            gVar.f5988c = this.f5988c;
        }
        if (TextUtils.isEmpty(this.f5989d)) {
            return;
        }
        gVar.f5989d = this.f5989d;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("variableName", this.f5986a);
        map.put("timeInMillis", Long.valueOf(this.f5987b));
        map.put("category", this.f5988c);
        map.put("label", this.f5989d);
        return a((Object) map);
    }
}
