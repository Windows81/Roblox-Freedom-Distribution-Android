package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class s extends com.google.android.gms.analytics.q<s> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f4689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f4690c;

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        s sVar = (s) qVar;
        if (!TextUtils.isEmpty(this.f4688a)) {
            sVar.f4688a = this.f4688a;
        }
        if (!TextUtils.isEmpty(this.f4689b)) {
            sVar.f4689b = this.f4689b;
        }
        if (TextUtils.isEmpty(this.f4690c)) {
            return;
        }
        sVar.f4690c = this.f4690c;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("network", this.f4688a);
        map.put("action", this.f4689b);
        map.put("target", this.f4690c);
        return a((Object) map);
    }
}
