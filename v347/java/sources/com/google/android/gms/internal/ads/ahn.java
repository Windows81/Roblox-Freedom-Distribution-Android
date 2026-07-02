package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final class ahn extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f4008a = eb.f4947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BlockingQueue<avg<?>> f4009b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final BlockingQueue<avg<?>> f4010c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zm f4011d;
    private final b e;
    private volatile boolean f = false;
    private final ajp g = new ajp(this);

    public ahn(BlockingQueue<avg<?>> blockingQueue, BlockingQueue<avg<?>> blockingQueue2, zm zmVar, b bVar) {
        this.f4009b = blockingQueue;
        this.f4010c = blockingQueue2;
        this.f4011d = zmVar;
        this.e = bVar;
    }

    private final void b() throws InterruptedException {
        avg<?> avgVarTake = this.f4009b.take();
        avgVarTake.b("cache-queue-take");
        avgVarTake.g();
        agm agmVarA = this.f4011d.a(avgVarTake.e());
        if (agmVarA == null) {
            avgVarTake.b("cache-miss");
            if (this.g.b(avgVarTake)) {
                return;
            }
            this.f4010c.put(avgVarTake);
            return;
        }
        if (agmVarA.a()) {
            avgVarTake.b("cache-hit-expired");
            avgVarTake.a(agmVarA);
            if (this.g.b(avgVarTake)) {
                return;
            }
            this.f4010c.put(avgVarTake);
            return;
        }
        avgVarTake.b("cache-hit");
        bbg<?> bbgVarA = avgVarTake.a(new atf(agmVarA.f3961a, agmVarA.g));
        avgVarTake.b("cache-hit-parsed");
        if (agmVarA.f < System.currentTimeMillis()) {
            avgVarTake.b("cache-hit-refresh-needed");
            avgVarTake.a(agmVarA);
            bbgVarA.f4752d = true;
            if (!this.g.b(avgVarTake)) {
                this.e.a(avgVarTake, bbgVarA, new aio(this, avgVarTake));
                return;
            }
        }
        this.e.a(avgVarTake, bbgVarA);
    }

    public final void a() {
        this.f = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f4008a) {
            eb.a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f4011d.a();
        while (true) {
            try {
                b();
            } catch (InterruptedException e) {
                if (this.f) {
                    return;
                }
            }
        }
    }
}
