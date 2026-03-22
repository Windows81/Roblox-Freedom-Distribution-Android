package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class l implements ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f3121a;

    public l(m mVar) {
        this.f3121a = mVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("name");
        if (str == null) {
            jd.e("App event with no name parameter.");
        } else {
            this.f3121a.a(str, map.get("info"));
        }
    }
}
