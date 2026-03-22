package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class h extends com.google.android.gms.analytics.q<h> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4457a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f4458b;

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        h hVar = (h) qVar;
        if (!TextUtils.isEmpty(this.f4457a)) {
            hVar.f4457a = this.f4457a;
        }
        boolean z = this.f4458b;
        if (z) {
            hVar.f4458b = z;
        }
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("description", this.f4457a);
        map.put("fatal", Boolean.valueOf(this.f4458b));
        return a((Object) map);
    }
}
