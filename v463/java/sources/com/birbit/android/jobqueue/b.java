package com.birbit.android.jobqueue;

import com.birbit.android.jobqueue.CancelResult;
import com.birbit.android.jobqueue.callback.JobManagerCallback;
import com.birbit.android.jobqueue.timer.Timer;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final com.birbit.android.jobqueue.messaging.f f2904a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.birbit.android.jobqueue.messaging.c f2906c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Timer f2908e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicInteger f2907d = new AtomicInteger(0);
    private final AtomicBoolean f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList<JobManagerCallback> f2905b = new CopyOnWriteArrayList<>();

    public b(com.birbit.android.jobqueue.messaging.c cVar, Timer timer) {
        this.f2908e = timer;
        this.f2904a = new com.birbit.android.jobqueue.messaging.f(timer, cVar, "jq_callback");
        this.f2906c = cVar;
    }

    private void a() {
        if (this.f.getAndSet(true)) {
            return;
        }
        b();
    }

    private void b() {
        new Thread(new Runnable() { // from class: com.birbit.android.jobqueue.b.1
            @Override // java.lang.Runnable
            public void run() {
                b.this.f2904a.consume(new com.birbit.android.jobqueue.messaging.d() { // from class: com.birbit.android.jobqueue.b.1.1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    long f2910a = Long.MIN_VALUE;

                    @Override // com.birbit.android.jobqueue.messaging.d
                    public void a() {
                    }

                    @Override // com.birbit.android.jobqueue.messaging.d
                    public void b() {
                    }

                    @Override // com.birbit.android.jobqueue.messaging.d
                    public void a(com.birbit.android.jobqueue.messaging.b bVar) {
                        if (bVar.f3010a == com.birbit.android.jobqueue.messaging.g.CALLBACK) {
                            b.this.a((com.birbit.android.jobqueue.messaging.a.b) bVar);
                            this.f2910a = b.this.f2908e.nanoTime();
                        } else if (bVar.f3010a == com.birbit.android.jobqueue.messaging.g.CANCEL_RESULT_CALLBACK) {
                            b.this.a((com.birbit.android.jobqueue.messaging.a.d) bVar);
                            this.f2910a = b.this.f2908e.nanoTime();
                        } else {
                            if (bVar.f3010a == com.birbit.android.jobqueue.messaging.g.COMMAND) {
                                if (((com.birbit.android.jobqueue.messaging.a.e) bVar).c() == 1) {
                                    b.this.f2904a.stop();
                                    b.this.f.set(false);
                                    return;
                                }
                                return;
                            }
                            if (bVar.f3010a == com.birbit.android.jobqueue.messaging.g.PUBLIC_QUERY) {
                                ((com.birbit.android.jobqueue.messaging.a.h) bVar).c().onResult(0);
                            }
                        }
                    }
                });
            }
        }, "job-manager-callbacks").start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.birbit.android.jobqueue.messaging.a.d dVar) {
        dVar.c().onCancelled(dVar.d());
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.birbit.android.jobqueue.messaging.a.b bVar) {
        int iC = bVar.c();
        if (iC == 1) {
            d(bVar.f());
            return;
        }
        if (iC == 2) {
            c(bVar.f(), bVar.d());
            return;
        }
        if (iC == 3) {
            b(bVar.f(), bVar.e());
        } else if (iC == 4) {
            c(bVar.f());
        } else {
            if (iC != 5) {
                return;
            }
            d(bVar.f(), bVar.d());
        }
    }

    private void b(g gVar, boolean z) {
        Iterator<JobManagerCallback> it = this.f2905b.iterator();
        while (it.hasNext()) {
            it.next().onJobCancelled(gVar, z);
        }
    }

    private void c(g gVar, int i) {
        Iterator<JobManagerCallback> it = this.f2905b.iterator();
        while (it.hasNext()) {
            it.next().onJobRun(gVar, i);
        }
    }

    private void d(g gVar, int i) {
        Iterator<JobManagerCallback> it = this.f2905b.iterator();
        while (it.hasNext()) {
            it.next().onAfterJobRun(gVar, i);
        }
    }

    private void c(g gVar) {
        Iterator<JobManagerCallback> it = this.f2905b.iterator();
        while (it.hasNext()) {
            it.next().onDone(gVar);
        }
    }

    private void d(g gVar) {
        Iterator<JobManagerCallback> it = this.f2905b.iterator();
        while (it.hasNext()) {
            it.next().onJobAdded(gVar);
        }
    }

    public void a(g gVar, int i) {
        if (c()) {
            com.birbit.android.jobqueue.messaging.a.b bVar = (com.birbit.android.jobqueue.messaging.a.b) this.f2906c.a(com.birbit.android.jobqueue.messaging.a.b.class);
            bVar.a(gVar, 2, i);
            this.f2904a.post(bVar);
        }
    }

    private boolean c() {
        return this.f2907d.get() > 0;
    }

    public void b(g gVar, int i) {
        if (c()) {
            com.birbit.android.jobqueue.messaging.a.b bVar = (com.birbit.android.jobqueue.messaging.a.b) this.f2906c.a(com.birbit.android.jobqueue.messaging.a.b.class);
            bVar.a(gVar, 5, i);
            this.f2904a.post(bVar);
        }
    }

    public void a(g gVar, boolean z) {
        if (c()) {
            com.birbit.android.jobqueue.messaging.a.b bVar = (com.birbit.android.jobqueue.messaging.a.b) this.f2906c.a(com.birbit.android.jobqueue.messaging.a.b.class);
            bVar.a(gVar, 3, z);
            this.f2904a.post(bVar);
        }
    }

    public void a(g gVar) {
        if (c()) {
            com.birbit.android.jobqueue.messaging.a.b bVar = (com.birbit.android.jobqueue.messaging.a.b) this.f2906c.a(com.birbit.android.jobqueue.messaging.a.b.class);
            bVar.a(gVar, 1);
            this.f2904a.post(bVar);
        }
    }

    public void b(g gVar) {
        if (c()) {
            com.birbit.android.jobqueue.messaging.a.b bVar = (com.birbit.android.jobqueue.messaging.a.b) this.f2906c.a(com.birbit.android.jobqueue.messaging.a.b.class);
            bVar.a(gVar, 4);
            this.f2904a.post(bVar);
        }
    }

    public void a(CancelResult cancelResult, CancelResult.AsyncCancelCallback asyncCancelCallback) {
        com.birbit.android.jobqueue.messaging.a.d dVar = (com.birbit.android.jobqueue.messaging.a.d) this.f2906c.a(com.birbit.android.jobqueue.messaging.a.d.class);
        dVar.a(asyncCancelCallback, cancelResult);
        this.f2904a.post(dVar);
        a();
    }
}
