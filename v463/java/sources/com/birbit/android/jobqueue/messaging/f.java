package com.birbit.android.jobqueue.messaging;

import com.birbit.android.jobqueue.timer.Timer;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f extends h implements MessageQueue {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f3021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Timer f3022d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f3023e;
    private boolean f;
    private final c g;

    public f(Timer timer, c cVar, String str) {
        super(cVar, str);
        this.f3020b = new Object();
        this.f3021c = new AtomicBoolean(false);
        this.f = false;
        this.g = cVar;
        this.f3022d = timer;
        this.f3023e = new a(cVar);
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void consume(d dVar) {
        if (this.f3021c.getAndSet(true)) {
            throw new IllegalStateException("only 1 consumer per MQ");
        }
        dVar.a();
        while (this.f3021c.get()) {
            b bVarA = a(dVar);
            if (bVarA != null) {
                dVar.a(bVarA);
                this.g.a(bVarA);
            }
        }
        com.birbit.android.jobqueue.log.a.a("[%s] finished queue", this.f3030a);
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void stop() {
        this.f3021c.set(false);
        synchronized (this.f3020b) {
            this.f3022d.notifyObject(this.f3020b);
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.h, com.birbit.android.jobqueue.messaging.MessageQueue
    public void clear() {
        synchronized (this.f3020b) {
            super.clear();
        }
    }

    b a(d dVar) {
        long jNanoTime;
        Long lA;
        boolean z = false;
        while (this.f3021c.get()) {
            synchronized (this.f3020b) {
                jNanoTime = this.f3022d.nanoTime();
                lA = this.f3023e.a(jNanoTime, this);
                b bVarA = super.a();
                if (bVarA != null) {
                    return bVarA;
                }
                this.f = false;
            }
            if (!z) {
                dVar.b();
                z = true;
            }
            synchronized (this.f3020b) {
                if (!this.f) {
                    if (lA != null && lA.longValue() <= jNanoTime) {
                        com.birbit.android.jobqueue.log.a.a("[%s] next message is ready, requery", this.f3030a);
                    } else if (this.f3021c.get()) {
                        if (lA == null) {
                            try {
                                com.birbit.android.jobqueue.log.a.a("[%s] will wait on the lock forever", this.f3030a);
                                this.f3022d.waitOnObject(this.f3020b);
                            } catch (InterruptedException unused) {
                            }
                        } else {
                            com.birbit.android.jobqueue.log.a.a("[%s] will wait on the lock until %d", this.f3030a, lA);
                            this.f3022d.waitOnObjectUntilNs(this.f3020b, lA.longValue());
                        }
                    }
                }
            }
        }
        return null;
    }

    @Override // com.birbit.android.jobqueue.messaging.h, com.birbit.android.jobqueue.messaging.MessageQueue
    public void post(b bVar) {
        synchronized (this.f3020b) {
            this.f = true;
            super.post(bVar);
            this.f3022d.notifyObject(this.f3020b);
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void postAt(b bVar, long j) {
        synchronized (this.f3020b) {
            this.f = true;
            this.f3023e.a(bVar, j);
            this.f3022d.notifyObject(this.f3020b);
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void cancelMessages(MessagePredicate messagePredicate) {
        synchronized (this.f3020b) {
            super.a(messagePredicate);
            this.f3023e.a(messagePredicate);
        }
    }
}
