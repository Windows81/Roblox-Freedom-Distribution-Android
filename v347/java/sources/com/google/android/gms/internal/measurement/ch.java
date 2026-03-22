package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ch extends com.google.android.gms.analytics.q<ch> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, Object> f5970a = new HashMap();

    public final Map<String, Object> a() {
        return Collections.unmodifiableMap(this.f5970a);
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        ch chVar = (ch) qVar;
        com.google.android.gms.common.internal.w.a(chVar);
        chVar.f5970a.putAll(this.f5970a);
    }

    public final void a(String str, String str2) {
        com.google.android.gms.common.internal.w.a(str);
        if (str != null && str.startsWith("&")) {
            str = str.substring(1);
        }
        com.google.android.gms.common.internal.w.a(str, (Object) "Name can not be empty or \"&\"");
        this.f5970a.put(str, str2);
    }

    public final String toString() {
        return a((Object) this.f5970a);
    }
}
