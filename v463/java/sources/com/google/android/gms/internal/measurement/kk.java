package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class kk extends com.google.android.gms.analytics.q<kk> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, Object> f4664a = new HashMap();

    public final Map<String, Object> a() {
        return Collections.unmodifiableMap(this.f4664a);
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        kk kkVar = (kk) qVar;
        com.google.android.gms.common.internal.aa.a(kkVar);
        kkVar.f4664a.putAll(this.f4664a);
    }

    public final void a(String str, String str2) {
        com.google.android.gms.common.internal.aa.a(str);
        if (str != null && str.startsWith("&")) {
            str = str.substring(1);
        }
        com.google.android.gms.common.internal.aa.a(str, (Object) "Name can not be empty or \"&\"");
        this.f4664a.put(str, str2);
    }

    public final String toString() {
        return a((Object) this.f4664a);
    }
}
