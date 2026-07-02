package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final qd f4993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4995c;

    public f(qd qdVar, Map<String, String> map) {
        this.f4993a = qdVar;
        this.f4995c = map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.f4994b = Boolean.parseBoolean(map.get("allowOrientationChange"));
        } else {
            this.f4994b = true;
        }
    }

    public final void a() {
        if (this.f4993a == null) {
            jd.e("AdWebView is null");
        } else {
            this.f4993a.setRequestedOrientation("portrait".equalsIgnoreCase(this.f4995c) ? com.google.android.gms.ads.internal.aw.g().b() : "landscape".equalsIgnoreCase(this.f4995c) ? com.google.android.gms.ads.internal.aw.g().a() : this.f4994b ? -1 : com.google.android.gms.ads.internal.aw.g().c());
        }
    }
}
