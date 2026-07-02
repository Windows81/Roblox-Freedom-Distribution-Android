package com.b.a.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final r f2303a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2306d;
    private final int e;
    private final long f;
    private final int g;
    private final int h;
    private final l j;
    private final com.b.a.a.k.b k;
    private final com.b.a.a.g.c l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<a> f2304b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<a> f2305c = new ArrayList();
    private CopyOnWriteArrayList<Runnable> n = new CopyOnWriteArrayList<>();
    private final Map<String, j> m = new HashMap();
    private final ThreadGroup i = new ThreadGroup("JobConsumers");

    f(l lVar, com.b.a.a.k.b bVar, com.b.a.a.g.c cVar, com.b.a.a.c.a aVar) {
        this.j = lVar;
        this.k = bVar;
        this.l = cVar;
        this.h = aVar.k();
        this.e = aVar.i();
        this.f2306d = aVar.h();
        this.f = ((long) (aVar.f() * 1000)) * 1000000;
        this.g = aVar.p();
        this.f2303a = new r(bVar);
    }

    void a() {
        a(false);
    }

    void b() {
        a(true);
    }

    void c() {
        Iterator<a> it = this.f2305c.iterator();
        while (it.hasNext()) {
            com.b.a.a.g.h hVar = it.next().f2308a;
            com.b.a.a.g.a.e eVar = (com.b.a.a.g.a.e) this.l.a(com.b.a.a.g.a.e.class);
            eVar.a(2);
            hVar.a(eVar);
        }
        if (this.f2305c.isEmpty()) {
            Iterator<Runnable> it2 = this.n.iterator();
            while (it2.hasNext()) {
                it2.next().run();
            }
        }
    }

    private void a(boolean z) {
        com.b.a.a.f.b.a("considering adding a new consumer. Should poke all waiting? %s isRunning? %s waiting workers? %d", Boolean.valueOf(z), Boolean.valueOf(this.j.c()), Integer.valueOf(this.f2304b.size()));
        if (!this.j.c()) {
            com.b.a.a.f.b.a("jobqueue is not running, no consumers will be added", new Object[0]);
            return;
        }
        if (this.f2304b.size() > 0) {
            com.b.a.a.f.b.a("there are waiting workers, will poke them instead", new Object[0]);
            for (int size = this.f2304b.size() - 1; size >= 0; size--) {
                a aVarRemove = this.f2304b.remove(size);
                com.b.a.a.g.a.e eVar = (com.b.a.a.g.a.e) this.l.a(com.b.a.a.g.a.e.class);
                eVar.a(2);
                aVarRemove.f2308a.a(eVar);
                if (!z) {
                    break;
                }
            }
            com.b.a.a.f.b.a("there were waiting workers, poked them and I'm done", new Object[0]);
            return;
        }
        boolean zG = g();
        com.b.a.a.f.b.a("nothing has been poked. are we above load factor? %s", Boolean.valueOf(zG));
        if (zG) {
            f();
        }
    }

    private void f() {
        com.b.a.a.f.b.a("adding another consumer", new Object[0]);
        a aVar = new a(this.j.g, new com.b.a.a.g.h(this.k, this.l, "consumer"), this.l, this.k);
        Thread thread = new Thread(this.i, aVar, "job-queue-worker-" + UUID.randomUUID());
        thread.setPriority(this.g);
        this.f2305c.add(aVar);
        thread.start();
    }

    private boolean g() {
        int size = this.f2305c.size();
        if (size >= this.f2306d) {
            com.b.a.a.f.b.a("too many consumers, clearly above load factor %s", Integer.valueOf(size));
            return false;
        }
        int iD = this.j.d();
        int size2 = this.m.size();
        boolean z = this.h * size < iD + size2 || (size < this.e && size < iD + size2);
        com.b.a.a.f.b.a("check above load factor: totalCons:%s minCons:%s maxConsCount: %s, loadFactor %s remainingJobs: %s runningsHolders: %s. isAbove:%s", Integer.valueOf(size), Integer.valueOf(this.e), Integer.valueOf(this.f2306d), Integer.valueOf(this.h), Integer.valueOf(iD), Integer.valueOf(size2), Boolean.valueOf(z));
        return z;
    }

    boolean a(com.b.a.a.g.a.g gVar) {
        j jVarA;
        a aVar = (a) gVar.d();
        if (aVar.e) {
            return true;
        }
        boolean zC = this.j.c();
        if (!zC) {
            jVarA = null;
        } else {
            jVarA = this.j.a(this.f2303a.a());
        }
        if (jVarA != null) {
            aVar.e = true;
            this.f2303a.a(jVarA.k());
            com.b.a.a.g.a.i iVar = (com.b.a.a.g.a.i) this.l.a(com.b.a.a.g.a.i.class);
            iVar.a(jVarA);
            this.m.put(jVarA.j().a(), jVarA);
            if (jVarA.k() != null) {
                this.f2303a.a(jVarA.k());
            }
            aVar.f2308a.a(iVar);
            return true;
        }
        long jC = gVar.c() + this.f;
        com.b.a.a.f.b.a("keep alive: %s", Long.valueOf(jC));
        boolean z = this.f2305c.size() > this.e;
        boolean z2 = !zC || (z && jC < this.k.a());
        com.b.a.a.f.b.a("Consumer idle, will kill? %s . isRunning: %s", Boolean.valueOf(z2), Boolean.valueOf(zC));
        if (z2) {
            com.b.a.a.g.a.e eVar = (com.b.a.a.g.a.e) this.l.a(com.b.a.a.g.a.e.class);
            eVar.a(1);
            aVar.f2308a.a(eVar);
            this.f2304b.remove(aVar);
            this.f2305c.remove(aVar);
            com.b.a.a.f.b.a("killed consumers. remaining consumers %d", Integer.valueOf(this.f2305c.size()));
            if (this.f2305c.isEmpty() && this.n != null) {
                Iterator<Runnable> it = this.n.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
            }
        } else {
            if (!this.f2304b.contains(aVar)) {
                this.f2304b.add(aVar);
            }
            if (z || !this.j.a()) {
                com.b.a.a.g.a.e eVar2 = (com.b.a.a.g.a.e) this.l.a(com.b.a.a.g.a.e.class);
                eVar2.a(2);
                if (!z) {
                    jC = this.k.a() + this.f;
                }
                aVar.f2308a.a(eVar2, jC);
                com.b.a.a.f.b.a("poke consumer manager at %s", Long.valueOf(jC));
            }
        }
        return false;
    }

    Set<String> a(s sVar, String[] strArr) {
        return a(sVar, strArr, false);
    }

    Set<String> b(s sVar, String[] strArr) {
        return a(sVar, strArr, true);
    }

    private Set<String> a(s sVar, String[] strArr, boolean z) {
        HashSet hashSet = new HashSet();
        for (j jVar : this.m.values()) {
            com.b.a.a.f.b.a("checking job tag %s. tags of job: %s", jVar.j(), jVar.j().d());
            if (jVar.q() && !jVar.n() && sVar.a(strArr, jVar.l())) {
                hashSet.add(jVar.a());
                if (z) {
                    jVar.o();
                } else {
                    jVar.m();
                }
            }
        }
        return hashSet;
    }

    void a(com.b.a.a.g.a.j jVar, j jVar2, q qVar) {
        a aVar = (a) jVar.e();
        if (!aVar.e) {
            throw new IllegalStateException("this worker should not have a job");
        }
        aVar.e = false;
        this.m.remove(jVar2.j().a());
        if (jVar2.k() != null) {
            this.f2303a.b(jVar2.k());
            if (qVar != null && qVar.d() && qVar.b().longValue() > 0) {
                this.f2303a.a(jVar2.k(), this.k.a() + (qVar.b().longValue() * 1000000));
            }
        }
    }

    boolean a(String str) {
        return this.m.get(str) != null;
    }

    public int d() {
        return this.f2305c.size();
    }

    public boolean a(com.b.a.a.j.b bVar, long j) {
        for (j jVar : this.m.values()) {
            if (jVar.j().e()) {
                if (bVar.c() == 2 && jVar.a(j)) {
                    return true;
                }
                if (bVar.c() == 3 && jVar.b(j)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean e() {
        return this.f2304b.size() == this.f2305c.size();
    }

    static class a implements Runnable {
        static final com.b.a.a.g.d g = new com.b.a.a.g.d() { // from class: com.b.a.a.f.a.1
            @Override // com.b.a.a.g.d
            public boolean a(com.b.a.a.g.b bVar) {
                return bVar.f2327a == com.b.a.a.g.i.COMMAND && ((com.b.a.a.g.a.e) bVar).c() == 2;
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final com.b.a.a.g.h f2308a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final com.b.a.a.g.e f2309b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final com.b.a.a.g.c f2310c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final com.b.a.a.k.b f2311d;
        boolean e;
        long f;
        final com.b.a.a.g.f h = new com.b.a.a.g.f() { // from class: com.b.a.a.f.a.2
            @Override // com.b.a.a.g.f
            public void a(com.b.a.a.g.b bVar) {
                switch (bVar.f2327a) {
                    case RUN_JOB:
                        a.this.a((com.b.a.a.g.a.i) bVar);
                        a.this.f = a.this.f2311d.a();
                        a.this.a();
                        break;
                    case COMMAND:
                        a.this.a((com.b.a.a.g.a.e) bVar);
                        break;
                }
            }

            @Override // com.b.a.a.g.f
            public void b() {
                com.b.a.a.f.b.a("consumer manager on idle", new Object[0]);
                com.b.a.a.g.a.g gVar = (com.b.a.a.g.a.g) a.this.f2310c.a(com.b.a.a.g.a.g.class);
                gVar.a(a.this);
                gVar.a(a.this.f);
                a.this.f2309b.a(gVar);
            }
        };

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.f2308a.a(g);
        }

        public a(com.b.a.a.g.e eVar, com.b.a.a.g.h hVar, com.b.a.a.g.c cVar, com.b.a.a.k.b bVar) {
            this.f2308a = hVar;
            this.f2310c = cVar;
            this.f2309b = eVar;
            this.f2311d = bVar;
            this.f = bVar.a();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2308a.a(this.h);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(com.b.a.a.g.a.e eVar) {
            switch (eVar.c()) {
                case 1:
                    this.f2308a.a();
                    break;
                case 2:
                    com.b.a.a.f.b.a("Consumer has been poked.", new Object[0]);
                    break;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(com.b.a.a.g.a.i iVar) {
            com.b.a.a.f.b.a("running job %s", iVar.c().getClass().getSimpleName());
            j jVarC = iVar.c();
            int iA = jVarC.a(jVarC.f());
            com.b.a.a.g.a.j jVar = (com.b.a.a.g.a.j) this.f2310c.a(com.b.a.a.g.a.j.class);
            jVar.a(jVarC);
            jVar.a(iA);
            jVar.a(this);
            this.f2309b.a(jVar);
        }
    }
}
