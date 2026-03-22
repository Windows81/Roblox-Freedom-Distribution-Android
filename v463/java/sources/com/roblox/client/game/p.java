package com.roblox.client.game;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class p implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AtomicBoolean f6312a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicBoolean f6313b = new AtomicBoolean(true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AtomicInteger f6314c = new AtomicInteger(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6315d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ScheduledExecutorService f6316e;
    private ScheduledFuture f;

    public abstract void a(int i);

    public static long a() {
        return com.roblox.client.m.c.a().cF();
    }

    public static boolean b() {
        return com.roblox.client.m.c.a().cE();
    }

    public static boolean c() {
        return com.roblox.client.m.c.a().cG() && a() > 0;
    }

    @Override // java.lang.Runnable
    public synchronized void run() {
        a(d());
        this.f6312a.set(true);
    }

    private synchronized int d() {
        return this.f6315d;
    }

    public synchronized void b(int i) {
        if (!this.f6312a.get() && this.f6314c.incrementAndGet() < 3) {
            if (this.f6313b.getAndSet(false) && c()) {
                com.roblox.client.ae.k.b("rbx.game", "skip orientation: " + i);
                return;
            }
            long jA = a();
            if (jA <= 0) {
                a(i);
                return;
            }
            com.roblox.client.ae.k.b("rbx.game", "queue orientation: " + i);
            this.f6315d = i;
            if (this.f == null) {
                a(jA);
            }
            return;
        }
        if (this.f != null) {
            this.f.cancel(false);
        }
        this.f6315d = i;
        a(i);
        this.f6312a.set(true);
    }

    private ScheduledExecutorService e() {
        if (this.f6316e == null) {
            this.f6316e = Executors.newSingleThreadScheduledExecutor();
        }
        return this.f6316e;
    }

    private void a(long j) {
        this.f = e().schedule(this, j, TimeUnit.MILLISECONDS);
    }
}
