package com.birbit.android.jobqueue;

import android.content.Context;
import com.birbit.android.jobqueue.scheduling.Scheduler;
import com.birbit.android.jobqueue.timer.Timer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends Scheduler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f2894a = TimeUnit.SECONDS.toMillis(900);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Scheduler f2897d;
    private final Timer f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2895b = f2894a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f2896c = TimeUnit.MILLISECONDS.toNanos(this.f2895b);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<C0069a> f2898e = new ArrayList();

    public a(Scheduler scheduler, Timer timer) {
        this.f2897d = scheduler;
        this.f = timer;
    }

    @Override // com.birbit.android.jobqueue.scheduling.Scheduler
    public void a(Context context, Scheduler.Callback callback) {
        super.a(context, callback);
        this.f2897d.a(context, new Scheduler.Callback() { // from class: com.birbit.android.jobqueue.a.1
            @Override // com.birbit.android.jobqueue.scheduling.Scheduler.Callback
            public boolean start(com.birbit.android.jobqueue.scheduling.a aVar) {
                a.this.e(aVar);
                return a.this.c(aVar);
            }

            @Override // com.birbit.android.jobqueue.scheduling.Scheduler.Callback
            public boolean stop(com.birbit.android.jobqueue.scheduling.a aVar) {
                return a.this.d(aVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(com.birbit.android.jobqueue.scheduling.a aVar) {
        synchronized (this.f2898e) {
            for (int size = this.f2898e.size() - 1; size >= 0; size--) {
                if (this.f2898e.get(size).f2901b.a().equals(aVar.a())) {
                    this.f2898e.remove(size);
                }
            }
        }
    }

    protected boolean a(com.birbit.android.jobqueue.scheduling.a aVar) {
        long jNanoTime = this.f.nanoTime();
        long nanos = TimeUnit.MILLISECONDS.toNanos(aVar.b()) + jNanoTime;
        synchronized (this.f2898e) {
            Iterator<C0069a> it = this.f2898e.iterator();
            while (it.hasNext()) {
                if (a(it.next(), aVar, nanos)) {
                    return false;
                }
            }
            long jB = ((aVar.b() / this.f2895b) + 1) * this.f2895b;
            aVar.a(jB);
            this.f2898e.add(new C0069a(jNanoTime + TimeUnit.MILLISECONDS.toNanos(jB), aVar));
            return true;
        }
    }

    private boolean a(C0069a c0069a, com.birbit.android.jobqueue.scheduling.a aVar, long j) {
        if (c0069a.f2901b.c() != aVar.c()) {
            return false;
        }
        long j2 = c0069a.f2900a - j;
        return j2 > 0 && j2 <= this.f2896c;
    }

    @Override // com.birbit.android.jobqueue.scheduling.Scheduler
    public void b(com.birbit.android.jobqueue.scheduling.a aVar) {
        if (a(aVar)) {
            this.f2897d.b(aVar);
        }
    }

    @Override // com.birbit.android.jobqueue.scheduling.Scheduler
    public void a(com.birbit.android.jobqueue.scheduling.a aVar, boolean z) {
        e(aVar);
        this.f2897d.a(aVar, false);
        if (z) {
            b(aVar);
        }
    }

    @Override // com.birbit.android.jobqueue.scheduling.Scheduler
    public void a() {
        synchronized (this.f2898e) {
            this.f2898e.clear();
        }
        this.f2897d.a();
    }

    /* JADX INFO: renamed from: com.birbit.android.jobqueue.a$a, reason: collision with other inner class name */
    private static class C0069a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long f2900a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final com.birbit.android.jobqueue.scheduling.a f2901b;

        public C0069a(long j, com.birbit.android.jobqueue.scheduling.a aVar) {
            this.f2900a = j;
            this.f2901b = aVar;
        }
    }
}
