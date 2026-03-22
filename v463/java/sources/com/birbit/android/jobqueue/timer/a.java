package com.birbit.android.jobqueue.timer;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements Timer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final long f3087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final long f3088b;

    public a() {
        com.birbit.android.jobqueue.log.a.a("creating system timer", new Object[0]);
        this.f3087a = TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
        this.f3088b = System.nanoTime();
    }

    @Override // com.birbit.android.jobqueue.timer.Timer
    public long nanoTime() {
        return (System.nanoTime() - this.f3088b) + this.f3087a;
    }

    @Override // com.birbit.android.jobqueue.timer.Timer
    public void waitOnObjectUntilNs(Object obj, long j) throws InterruptedException {
        long jNanoTime = nanoTime();
        if (jNanoTime > j) {
            obj.wait(1L);
        } else {
            TimeUnit.NANOSECONDS.timedWait(obj, j - jNanoTime);
        }
    }

    @Override // com.birbit.android.jobqueue.timer.Timer
    public void waitOnObject(Object obj) throws InterruptedException {
        obj.wait();
    }

    @Override // com.birbit.android.jobqueue.timer.Timer
    public void notifyObject(Object obj) {
        obj.notifyAll();
    }
}
