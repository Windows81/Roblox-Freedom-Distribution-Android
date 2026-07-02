package com.b.a.a.g;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class h extends j implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f2336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f2337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.a.k.b f2338d;
    private final a e;
    private boolean f;
    private final c g;

    public h(com.b.a.a.k.b bVar, c cVar, String str) {
        super(cVar, str);
        this.f2336b = new Object();
        this.f2337c = new AtomicBoolean(false);
        this.f = false;
        this.g = cVar;
        this.f2338d = bVar;
        this.e = new a(cVar);
    }

    public void a(f fVar) {
        if (this.f2337c.getAndSet(true)) {
            throw new IllegalStateException("only 1 consumer per MQ");
        }
        fVar.a();
        while (this.f2337c.get()) {
            b bVarB = b(fVar);
            if (bVarB != null) {
                fVar.a(bVarB);
                this.g.a(bVarB);
            }
        }
        com.b.a.a.f.b.a("[%s] finished queue", this.f2344a);
    }

    public void a() {
        this.f2337c.set(false);
        synchronized (this.f2336b) {
            this.f2338d.b(this.f2336b);
        }
    }

    @Override // com.b.a.a.g.j
    public void b() {
        synchronized (this.f2336b) {
            super.b();
        }
    }

    b b(f fVar) {
        long jA;
        Long lA;
        boolean z = false;
        while (this.f2337c.get()) {
            synchronized (this.f2336b) {
                jA = this.f2338d.a();
                lA = this.e.a(jA, this);
                b bVarC = super.c();
                if (bVarC != null) {
                    return bVarC;
                }
                this.f = false;
            }
            if (!z) {
                fVar.b();
                z = true;
            }
            synchronized (this.f2336b) {
                if (!this.f) {
                    if (lA != null && lA.longValue() <= jA) {
                        com.b.a.a.f.b.a("[%s] next message is ready, requery", this.f2344a);
                    } else if (this.f2337c.get()) {
                        if (lA == null) {
                            try {
                                com.b.a.a.f.b.a("[%s] will wait on the lock forever", this.f2344a);
                                this.f2338d.a(this.f2336b);
                            } catch (InterruptedException e) {
                            }
                        } else {
                            com.b.a.a.f.b.a("[%s] will wait on the lock until %d", this.f2344a, lA);
                            this.f2338d.a(this.f2336b, lA.longValue());
                        }
                    }
                }
            }
        }
        return null;
    }

    @Override // com.b.a.a.g.j, com.b.a.a.g.e
    public void a(b bVar) {
        synchronized (this.f2336b) {
            this.f = true;
            super.a(bVar);
            this.f2338d.b(this.f2336b);
        }
    }

    public void a(b bVar, long j) {
        synchronized (this.f2336b) {
            this.f = true;
            this.e.a(bVar, j);
            this.f2338d.b(this.f2336b);
        }
    }

    public void a(d dVar) {
        synchronized (this.f2336b) {
            super.b(dVar);
            this.e.a(dVar);
        }
    }
}
