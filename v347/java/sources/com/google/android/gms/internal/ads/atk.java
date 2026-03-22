package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class atk implements com.google.android.gms.ads.internal.gmsg.ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<atg> f4483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4484b;

    public atk(atg atgVar, String str) {
        this.f4483a = new WeakReference<>(atgVar);
        this.f4484b = str;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        atg atgVar;
        String str = map.get("ads_id");
        String str2 = map.get("eventName");
        if (TextUtils.isEmpty(str) || !this.f4484b.equals(str)) {
            return;
        }
        try {
            Integer.parseInt(map.get("eventType"));
        } catch (Exception e) {
            jd.b("Parse Scion log event type error", e);
        }
        if ("_ai".equals(str2)) {
            atg atgVar2 = this.f4483a.get();
            if (atgVar2 != null) {
                atgVar2.x();
                return;
            }
            return;
        }
        if (!"_ac".equals(str2) || (atgVar = this.f4483a.get()) == null) {
            return;
        }
        atgVar.y();
    }
}
