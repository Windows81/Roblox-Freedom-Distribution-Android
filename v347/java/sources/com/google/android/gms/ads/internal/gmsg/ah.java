package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class ah implements ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ai f3104a;

    public ah(ai aiVar) {
        this.f3104a = aiVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        boolean zEquals = "1".equals(map.get("transparentBackground"));
        boolean zEquals2 = "1".equals(map.get("blur"));
        try {
        } catch (NumberFormatException e) {
            jd.b("Fail to parse float", e);
        }
        float f = map.get("blurRadius") != null ? Float.parseFloat(map.get("blurRadius")) : 0.0f;
        this.f3104a.a(zEquals);
        this.f3104a.a(zEquals2, f);
    }
}
