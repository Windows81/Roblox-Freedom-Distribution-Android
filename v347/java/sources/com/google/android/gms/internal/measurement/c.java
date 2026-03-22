package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class c extends com.google.android.gms.analytics.q<c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f5951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f5952b;

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        c cVar = (c) qVar;
        if (!TextUtils.isEmpty(this.f5951a)) {
            cVar.f5951a = this.f5951a;
        }
        if (this.f5952b) {
            cVar.f5952b = this.f5952b;
        }
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("description", this.f5951a);
        map.put("fatal", Boolean.valueOf(this.f5952b));
        return a((Object) map);
    }
}
