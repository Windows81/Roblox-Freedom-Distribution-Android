package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.g;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class awd extends avd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g.a f4545a;

    public awd(g.a aVar) {
        this.f4545a = aVar;
    }

    @Override // com.google.android.gms.internal.ads.avc
    public final void a(auq auqVar) {
        this.f4545a.onAppInstallAdLoaded(new aut(auqVar));
    }
}
