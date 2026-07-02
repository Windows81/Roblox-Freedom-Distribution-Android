package com.b.a.a.g;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class g implements e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f2334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.a.k.b f2335d;
    private final c g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f2332a = new Object();
    private final AtomicBoolean e = new AtomicBoolean(false);
    private boolean f = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j[] f2333b = new j[i.o + 1];

    public g(com.b.a.a.k.b bVar, c cVar) {
        this.f2334c = new a(cVar);
        this.g = cVar;
        this.f2335d = bVar;
    }

    public void a(f fVar) {
        if (this.e.getAndSet(true)) {
            throw new IllegalStateException("only 1 consumer per MQ");
        }
        while (this.e.get()) {
            b bVarB = b(fVar);
            if (bVarB != null) {
                com.b.a.a.f.b.a("[%s] consuming message of type %s", "priority_mq", bVarB.f2327a);
                fVar.a(bVarB);
                this.g.a(bVarB);
            }
        }
    }

    public void a() {
        synchronized (this.f2332a) {
            for (int i = i.o; i >= 0; i--) {
                j jVar = this.f2333b[i];
                if (jVar != null) {
                    jVar.b();
                }
            }
        }
    }

    public void b() {
        this.e.set(false);
        synchronized (this.f2332a) {
            this.f2335d.b(this.f2332a);
        }
    }

    public b b(f fVar) {
        long jA;
        Long lA;
        b bVarC;
        boolean z = false;
        while (this.e.get()) {
            synchronized (this.f2332a) {
                jA = this.f2335d.a();
                com.b.a.a.f.b.a("[%s] looking for next message at time %s", "priority_mq", Long.valueOf(jA));
                lA = this.f2334c.a(jA, this);
                com.b.a.a.f.b.a("[%s] next delayed job %s", "priority_mq", lA);
                for (int i = i.o; i >= 0; i--) {
                    j jVar = this.f2333b[i];
                    if (jVar != null && (bVarC = jVar.c()) != null) {
                        return bVarC;
                    }
                }
                this.f = false;
            }
            if (!z) {
                fVar.b();
                z = true;
            }
            synchronized (this.f2332a) {
                com.b.a.a.f.b.a("[%s] did on idle post a message? %s", "priority_mq", Boolean.valueOf(this.f));
                if (!this.f) {
                    if (lA == null || lA.longValue() > jA) {
                        if (this.e.get()) {
                            if (lA == null) {
                                try {
                                    this.f2335d.a(this.f2332a);
                                } catch (InterruptedException e) {
                                }
                            } else {
                                this.f2335d.a(this.f2332a, lA.longValue());
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    @Override // com.b.a.a.g.e
    public void a(b bVar) {
        synchronized (this.f2332a) {
            this.f = true;
            int i = bVar.f2327a.n;
            if (this.f2333b[i] == null) {
                this.f2333b[i] = new j(this.g, "queue_" + bVar.f2327a.name());
            }
            this.f2333b[i].a(bVar);
            this.f2335d.b(this.f2332a);
        }
    }

    public void a(b bVar, long j) {
        synchronized (this.f2332a) {
            this.f = true;
            this.f2334c.a(bVar, j);
            this.f2335d.b(this.f2332a);
        }
    }
}
