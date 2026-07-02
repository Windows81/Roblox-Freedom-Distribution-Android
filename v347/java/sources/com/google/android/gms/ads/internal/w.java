package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.qd;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
final class w implements com.google.android.gms.ads.internal.gmsg.ae<qd> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ CountDownLatch f3195a;

    w(CountDownLatch countDownLatch) {
        this.f3195a = countDownLatch;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        jd.e("Adapter returned an ad, but assets substitution failed");
        this.f3195a.countDown();
        qdVar.destroy();
    }
}
