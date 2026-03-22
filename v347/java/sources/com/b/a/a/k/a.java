package com.b.a.a.k;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final long f2404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final long f2405b;

    public a() {
        com.b.a.a.f.b.a("creating system timer", new Object[0]);
        this.f2404a = TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
        this.f2405b = System.nanoTime();
    }

    @Override // com.b.a.a.k.b
    public long a() {
        return (System.nanoTime() - this.f2405b) + this.f2404a;
    }

    @Override // com.b.a.a.k.b
    public void a(Object obj, long j) throws InterruptedException {
        long jA = a();
        if (jA > j) {
            obj.wait(1L);
        } else {
            TimeUnit.NANOSECONDS.timedWait(obj, j - jA);
        }
    }

    @Override // com.b.a.a.k.b
    public void a(Object obj) throws InterruptedException {
        obj.wait();
    }

    @Override // com.b.a.a.k.b
    public void b(Object obj) {
        obj.notifyAll();
    }
}
