package com.b.a.a;

import com.b.a.a.d;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final com.b.a.a.g.h f2276a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.b.a.a.g.c f2278c;
    private final com.b.a.a.k.b e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicInteger f2279d = new AtomicInteger(0);
    private final AtomicBoolean f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList<com.b.a.a.b.a> f2277b = new CopyOnWriteArrayList<>();

    public b(com.b.a.a.g.c cVar, com.b.a.a.k.b bVar) {
        this.e = bVar;
        this.f2276a = new com.b.a.a.g.h(bVar, cVar, "jq_callback");
        this.f2278c = cVar;
    }

    private void a() {
        if (!this.f.getAndSet(true)) {
            b();
        }
    }

    private void b() {
        new Thread(new Runnable() { // from class: com.b.a.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                b.this.f2276a.a(new com.b.a.a.g.f() { // from class: com.b.a.a.b.1.1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    long f2281a = Long.MIN_VALUE;

                    @Override // com.b.a.a.g.f
                    public void a() {
                    }

                    @Override // com.b.a.a.g.f
                    public void a(com.b.a.a.g.b bVar) {
                        if (bVar.f2327a == com.b.a.a.g.i.CALLBACK) {
                            b.this.a((com.b.a.a.g.a.b) bVar);
                            this.f2281a = b.this.e.a();
                        } else if (bVar.f2327a == com.b.a.a.g.i.CANCEL_RESULT_CALLBACK) {
                            b.this.a((com.b.a.a.g.a.d) bVar);
                            this.f2281a = b.this.e.a();
                        } else {
                            if (bVar.f2327a == com.b.a.a.g.i.COMMAND) {
                                if (((com.b.a.a.g.a.e) bVar).c() == 1) {
                                    b.this.f2276a.a();
                                    b.this.f.set(false);
                                    return;
                                }
                                return;
                            }
                            if (bVar.f2327a == com.b.a.a.g.i.PUBLIC_QUERY) {
                                ((com.b.a.a.g.a.h) bVar).c().a(0);
                            }
                        }
                    }

                    @Override // com.b.a.a.g.f
                    public void b() {
                    }
                });
            }
        }, "job-manager-callbacks").start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.b.a.a.g.a.d dVar) {
        dVar.c().a(dVar.d());
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.b.a.a.g.a.b bVar) {
        switch (bVar.c()) {
            case 1:
                d(bVar.f());
                break;
            case 2:
                c(bVar.f(), bVar.d());
                break;
            case 3:
                b(bVar.f(), bVar.e());
                break;
            case 4:
                c(bVar.f());
                break;
            case 5:
                d(bVar.f(), bVar.d());
                break;
        }
    }

    private void b(i iVar, boolean z) {
        Iterator<com.b.a.a.b.a> it = this.f2277b.iterator();
        while (it.hasNext()) {
            it.next().a(iVar, z);
        }
    }

    private void c(i iVar, int i) {
        Iterator<com.b.a.a.b.a> it = this.f2277b.iterator();
        while (it.hasNext()) {
            it.next().a(iVar, i);
        }
    }

    private void d(i iVar, int i) {
        Iterator<com.b.a.a.b.a> it = this.f2277b.iterator();
        while (it.hasNext()) {
            it.next().b(iVar, i);
        }
    }

    private void c(i iVar) {
        Iterator<com.b.a.a.b.a> it = this.f2277b.iterator();
        while (it.hasNext()) {
            it.next().b(iVar);
        }
    }

    private void d(i iVar) {
        Iterator<com.b.a.a.b.a> it = this.f2277b.iterator();
        while (it.hasNext()) {
            it.next().a(iVar);
        }
    }

    public void a(i iVar, int i) {
        if (c()) {
            com.b.a.a.g.a.b bVar = (com.b.a.a.g.a.b) this.f2278c.a(com.b.a.a.g.a.b.class);
            bVar.a(iVar, 2, i);
            this.f2276a.a(bVar);
        }
    }

    private boolean c() {
        return this.f2279d.get() > 0;
    }

    public void b(i iVar, int i) {
        if (c()) {
            com.b.a.a.g.a.b bVar = (com.b.a.a.g.a.b) this.f2278c.a(com.b.a.a.g.a.b.class);
            bVar.a(iVar, 5, i);
            this.f2276a.a(bVar);
        }
    }

    public void a(i iVar, boolean z) {
        if (c()) {
            com.b.a.a.g.a.b bVar = (com.b.a.a.g.a.b) this.f2278c.a(com.b.a.a.g.a.b.class);
            bVar.a(iVar, 3, z);
            this.f2276a.a(bVar);
        }
    }

    public void a(i iVar) {
        if (c()) {
            com.b.a.a.g.a.b bVar = (com.b.a.a.g.a.b) this.f2278c.a(com.b.a.a.g.a.b.class);
            bVar.a(iVar, 1);
            this.f2276a.a(bVar);
        }
    }

    public void b(i iVar) {
        if (c()) {
            com.b.a.a.g.a.b bVar = (com.b.a.a.g.a.b) this.f2278c.a(com.b.a.a.g.a.b.class);
            bVar.a(iVar, 4);
            this.f2276a.a(bVar);
        }
    }

    public void a(d dVar, d.a aVar) {
        com.b.a.a.g.a.d dVar2 = (com.b.a.a.g.a.d) this.f2278c.a(com.b.a.a.g.a.d.class);
        dVar2.a(aVar, dVar);
        this.f2276a.a(dVar2);
        a();
    }
}
