package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final class ard extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BlockingQueue<avg<?>> f4383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final aqn f4384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zm f4385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f4386d;
    private volatile boolean e = false;

    public ard(BlockingQueue<avg<?>> blockingQueue, aqn aqnVar, zm zmVar, b bVar) {
        this.f4383a = blockingQueue;
        this.f4384b = aqnVar;
        this.f4385c = zmVar;
        this.f4386d = bVar;
    }

    private final void b() throws InterruptedException {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        avg<?> avgVarTake = this.f4383a.take();
        try {
            avgVarTake.b("network-queue-take");
            avgVarTake.g();
            TrafficStats.setThreadStatsTag(avgVarTake.d());
            atf atfVarA = this.f4384b.a(avgVarTake);
            avgVarTake.b("network-http-complete");
            if (atfVarA.e && avgVarTake.l()) {
                avgVarTake.c("not-modified");
                avgVarTake.m();
                return;
            }
            bbg<?> bbgVarA = avgVarTake.a(atfVarA);
            avgVarTake.b("network-parse-complete");
            if (avgVarTake.h() && bbgVarA.f4750b != null) {
                this.f4385c.a(avgVarTake.e(), bbgVarA.f4750b);
                avgVarTake.b("network-cache-written");
            }
            avgVarTake.k();
            this.f4386d.a(avgVarTake, bbgVarA);
            avgVarTake.a(bbgVarA);
        } catch (df e) {
            e.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
            this.f4386d.a(avgVarTake, e);
            avgVarTake.m();
        } catch (Exception e2) {
            eb.a(e2, "Unhandled exception %s", e2.toString());
            df dfVar = new df(e2);
            dfVar.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
            this.f4386d.a(avgVarTake, dfVar);
            avgVarTake.m();
        }
    }

    public final void a() {
        this.e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                b();
            } catch (InterruptedException e) {
                if (this.e) {
                    return;
                }
            }
        }
    }
}
