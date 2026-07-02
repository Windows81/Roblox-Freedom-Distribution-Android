package com.google.android.gms.ads.internal;

import android.os.Debug;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.jd;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
final class aa extends TimerTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ CountDownLatch f2985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Timer f2986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ a f2987c;

    aa(a aVar, CountDownLatch countDownLatch, Timer timer) {
        this.f2987c = aVar;
        this.f2985a = countDownLatch;
        this.f2986b = timer;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (((Integer) aoo.f().a(aro.cp)).intValue() != this.f2985a.getCount()) {
            jd.b("Stopping method tracing");
            Debug.stopMethodTracing();
            if (this.f2985a.getCount() == 0) {
                this.f2986b.cancel();
                return;
            }
        }
        String strConcat = String.valueOf(this.f2987c.e.f3036c.getPackageName()).concat("_adsTrace_");
        try {
            jd.b("Starting method tracing");
            this.f2985a.countDown();
            Debug.startMethodTracing(new StringBuilder(String.valueOf(strConcat).length() + 20).append(strConcat).append(aw.l().a()).toString(), ((Integer) aoo.f().a(aro.cq)).intValue());
        } catch (Exception e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }
}
