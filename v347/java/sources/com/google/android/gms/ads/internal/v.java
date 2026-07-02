package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.qd;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
final class v implements com.google.android.gms.ads.internal.gmsg.ae<qd> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ CountDownLatch f3194a;

    v(CountDownLatch countDownLatch) {
        this.f3194a = countDownLatch;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        this.f3194a.countDown();
        qdVar.getView().setVisibility(0);
    }
}
