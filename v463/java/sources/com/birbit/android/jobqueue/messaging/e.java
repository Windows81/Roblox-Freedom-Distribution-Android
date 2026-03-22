package com.birbit.android.jobqueue.messaging;

import com.birbit.android.jobqueue.timer.Timer;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e implements MessageQueue {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f3017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Timer f3018d;
    private final c g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3015a = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f3019e = new AtomicBoolean(false);
    private boolean f = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h[] f3016b = new h[g.o + 1];

    public e(Timer timer, c cVar) {
        this.f3017c = new a(cVar);
        this.g = cVar;
        this.f3018d = timer;
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void consume(d dVar) {
        if (this.f3019e.getAndSet(true)) {
            throw new IllegalStateException("only 1 consumer per MQ");
        }
        while (this.f3019e.get()) {
            b bVarA = a(dVar);
            if (bVarA != null) {
                com.birbit.android.jobqueue.log.a.a("[%s] consuming message of type %s", "priority_mq", bVarA.f3010a);
                dVar.a(bVarA);
                this.g.a(bVarA);
            }
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void clear() {
        synchronized (this.f3015a) {
            for (int i = g.o; i >= 0; i--) {
                h hVar = this.f3016b[i];
                if (hVar != null) {
                    hVar.clear();
                }
            }
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void stop() {
        this.f3019e.set(false);
        synchronized (this.f3015a) {
            this.f3018d.notifyObject(this.f3015a);
        }
    }

    public b a(d dVar) {
        long jNanoTime;
        Long lA;
        b bVarA;
        boolean z = false;
        while (this.f3019e.get()) {
            synchronized (this.f3015a) {
                jNanoTime = this.f3018d.nanoTime();
                com.birbit.android.jobqueue.log.a.a("[%s] looking for next message at time %s", "priority_mq", Long.valueOf(jNanoTime));
                lA = this.f3017c.a(jNanoTime, this);
                com.birbit.android.jobqueue.log.a.a("[%s] next delayed job %s", "priority_mq", lA);
                for (int i = g.o; i >= 0; i--) {
                    h hVar = this.f3016b[i];
                    if (hVar != null && (bVarA = hVar.a()) != null) {
                        return bVarA;
                    }
                }
                this.f = false;
            }
            if (!z) {
                dVar.b();
                z = true;
            }
            synchronized (this.f3015a) {
                com.birbit.android.jobqueue.log.a.a("[%s] did on idle post a message? %s", "priority_mq", Boolean.valueOf(this.f));
                if (!this.f) {
                    if (lA == null || lA.longValue() > jNanoTime) {
                        if (this.f3019e.get()) {
                            if (lA == null) {
                                try {
                                    this.f3018d.waitOnObject(this.f3015a);
                                } catch (InterruptedException unused) {
                                }
                            } else {
                                this.f3018d.waitOnObjectUntilNs(this.f3015a, lA.longValue());
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void post(b bVar) {
        synchronized (this.f3015a) {
            this.f = true;
            int i = bVar.f3010a.n;
            if (this.f3016b[i] == null) {
                this.f3016b[i] = new h(this.g, "queue_" + bVar.f3010a.name());
            }
            this.f3016b[i].post(bVar);
            this.f3018d.notifyObject(this.f3015a);
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void postAt(b bVar, long j) {
        synchronized (this.f3015a) {
            this.f = true;
            this.f3017c.a(bVar, j);
            this.f3018d.notifyObject(this.f3015a);
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void cancelMessages(MessagePredicate messagePredicate) {
        synchronized (this.f3015a) {
            for (int i = 0; i <= g.o; i++) {
                h hVar = this.f3016b[i];
                if (hVar != null) {
                    hVar.a(messagePredicate);
                }
            }
            this.f3017c.a(messagePredicate);
        }
    }
}
