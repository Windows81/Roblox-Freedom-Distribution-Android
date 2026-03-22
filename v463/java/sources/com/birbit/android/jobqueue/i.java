package com.birbit.android.jobqueue;

import com.birbit.android.jobqueue.scheduling.Scheduler;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f2962a = TimeUnit.MILLISECONDS.toNanos(10000);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final j f2963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.birbit.android.jobqueue.messaging.e f2964c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.birbit.android.jobqueue.messaging.c f2965d = new com.birbit.android.jobqueue.messaging.c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Thread f2966e;

    public i(com.birbit.android.jobqueue.b.a aVar) {
        com.birbit.android.jobqueue.messaging.e eVar = new com.birbit.android.jobqueue.messaging.e(aVar.m(), this.f2965d);
        this.f2964c = eVar;
        this.f2963b = new j(aVar, eVar, this.f2965d);
        this.f2966e = new Thread(this.f2963b, "job-manager");
        if (aVar.o() != null) {
            aVar.o().a(aVar.a(), a());
        }
        this.f2966e.start();
    }

    private Scheduler.Callback a() {
        return new Scheduler.Callback() { // from class: com.birbit.android.jobqueue.i.1
            @Override // com.birbit.android.jobqueue.scheduling.Scheduler.Callback
            public boolean start(com.birbit.android.jobqueue.scheduling.a aVar) {
                i.this.a(aVar);
                return true;
            }

            @Override // com.birbit.android.jobqueue.scheduling.Scheduler.Callback
            public boolean stop(com.birbit.android.jobqueue.scheduling.a aVar) {
                i.this.b(aVar);
                return false;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.birbit.android.jobqueue.scheduling.a aVar) {
        com.birbit.android.jobqueue.messaging.a.k kVar = (com.birbit.android.jobqueue.messaging.a.k) this.f2965d.a(com.birbit.android.jobqueue.messaging.a.k.class);
        kVar.a(1, aVar);
        this.f2964c.post(kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.birbit.android.jobqueue.scheduling.a aVar) {
        com.birbit.android.jobqueue.messaging.a.k kVar = (com.birbit.android.jobqueue.messaging.a.k) this.f2965d.a(com.birbit.android.jobqueue.messaging.a.k.class);
        kVar.a(2, aVar);
        this.f2964c.post(kVar);
    }

    public void a(g gVar) {
        com.birbit.android.jobqueue.messaging.a.a aVar = (com.birbit.android.jobqueue.messaging.a.a) this.f2965d.a(com.birbit.android.jobqueue.messaging.a.a.class);
        aVar.a(gVar);
        this.f2964c.post(aVar);
    }
}
