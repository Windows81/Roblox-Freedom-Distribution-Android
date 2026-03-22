package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ev implements com.google.android.gms.ads.internal.gmsg.ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ eu f4986a;

    ev(eu euVar) {
        this.f4986a = euVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        synchronized (this.f4986a.f4983b) {
            if (this.f4986a.e.isDone()) {
                return;
            }
            if (this.f4986a.f4984c.equals(map.get("request_id"))) {
                fa faVar = new fa(1, map);
                String strF = faVar.f();
                String strValueOf = String.valueOf(faVar.b());
                jd.e(new StringBuilder(String.valueOf(strF).length() + 24 + String.valueOf(strValueOf).length()).append("Invalid ").append(strF).append(" request error: ").append(strValueOf).toString());
                this.f4986a.e.b(faVar);
            }
        }
    }
}
