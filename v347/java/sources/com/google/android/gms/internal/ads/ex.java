package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ex implements com.google.android.gms.ads.internal.gmsg.ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ eu f4988a;

    ex(eu euVar) {
        this.f4988a = euVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        synchronized (this.f4988a.f4983b) {
            if (this.f4988a.e.isDone()) {
                return;
            }
            fa faVar = new fa(-2, map);
            if (this.f4988a.f4984c.equals(faVar.h())) {
                this.f4988a.e.b(faVar);
            }
        }
    }
}
