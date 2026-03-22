package com.birbit.android.jobqueue;

import com.birbit.android.jobqueue.messaging.MessagePredicate;
import com.birbit.android.jobqueue.messaging.MessageQueue;
import com.birbit.android.jobqueue.timer.Timer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final n f2934a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2937d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f2938e;
    private final long f;
    private final int g;
    private final int h;
    private final j j;
    private final Timer k;
    private final com.birbit.android.jobqueue.messaging.c l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<a> f2935b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<a> f2936c = new ArrayList();
    private CopyOnWriteArrayList<Runnable> n = new CopyOnWriteArrayList<>();
    private final Map<String, h> m = new HashMap();
    private final ThreadGroup i = new ThreadGroup("JobConsumers");

    e(j jVar, Timer timer, com.birbit.android.jobqueue.messaging.c cVar, com.birbit.android.jobqueue.b.a aVar) {
        this.j = jVar;
        this.k = timer;
        this.l = cVar;
        this.h = aVar.k();
        this.f2938e = aVar.i();
        this.f2937d = aVar.h();
        this.f = ((long) (aVar.f() * 1000)) * 1000000;
        this.g = aVar.p();
        this.f2934a = new n(timer);
    }

    void a() {
        a(false);
    }

    void b() {
        a(true);
    }

    void c() {
        Iterator<a> it = this.f2936c.iterator();
        while (it.hasNext()) {
            com.birbit.android.jobqueue.messaging.f fVar = it.next().f2940a;
            com.birbit.android.jobqueue.messaging.a.e eVar = (com.birbit.android.jobqueue.messaging.a.e) this.l.a(com.birbit.android.jobqueue.messaging.a.e.class);
            eVar.a(2);
            fVar.post(eVar);
        }
        if (this.f2936c.isEmpty()) {
            Iterator<Runnable> it2 = this.n.iterator();
            while (it2.hasNext()) {
                it2.next().run();
            }
        }
    }

    private void a(boolean z) {
        com.birbit.android.jobqueue.log.a.a("considering adding a new consumer. Should poke all waiting? %s isRunning? %s waiting workers? %d", Boolean.valueOf(z), Boolean.valueOf(this.j.c()), Integer.valueOf(this.f2935b.size()));
        if (!this.j.c()) {
            com.birbit.android.jobqueue.log.a.a("jobqueue is not running, no consumers will be added", new Object[0]);
            return;
        }
        if (this.f2935b.size() > 0) {
            com.birbit.android.jobqueue.log.a.a("there are waiting workers, will poke them instead", new Object[0]);
            for (int size = this.f2935b.size() - 1; size >= 0; size--) {
                a aVarRemove = this.f2935b.remove(size);
                com.birbit.android.jobqueue.messaging.a.e eVar = (com.birbit.android.jobqueue.messaging.a.e) this.l.a(com.birbit.android.jobqueue.messaging.a.e.class);
                eVar.a(2);
                aVarRemove.f2940a.post(eVar);
                if (!z) {
                    break;
                }
            }
            com.birbit.android.jobqueue.log.a.a("there were waiting workers, poked them and I'm done", new Object[0]);
            return;
        }
        boolean zG = g();
        com.birbit.android.jobqueue.log.a.a("nothing has been poked. are we above load factor? %s", Boolean.valueOf(zG));
        if (zG) {
            f();
        }
    }

    private void f() {
        com.birbit.android.jobqueue.log.a.a("adding another consumer", new Object[0]);
        a aVar = new a(this.j.g, new com.birbit.android.jobqueue.messaging.f(this.k, this.l, "consumer"), this.l, this.k);
        Thread thread = new Thread(this.i, aVar, "job-queue-worker-" + UUID.randomUUID());
        thread.setPriority(this.g);
        this.f2936c.add(aVar);
        thread.start();
    }

    private boolean g() {
        int size = this.f2936c.size();
        if (size >= this.f2937d) {
            com.birbit.android.jobqueue.log.a.a("too many consumers, clearly above load factor %s", Integer.valueOf(size));
            return false;
        }
        int iD = this.j.d();
        int size2 = this.m.size();
        int i = iD + size2;
        boolean z = this.h * size < i || (size < this.f2938e && size < i);
        com.birbit.android.jobqueue.log.a.a("check above load factor: totalCons:%s minCons:%s maxConsCount: %s, loadFactor %s remainingJobs: %s runningsHolders: %s. isAbove:%s", Integer.valueOf(size), Integer.valueOf(this.f2938e), Integer.valueOf(this.f2937d), Integer.valueOf(this.h), Integer.valueOf(iD), Integer.valueOf(size2), Boolean.valueOf(z));
        return z;
    }

    boolean a(com.birbit.android.jobqueue.messaging.a.g gVar) {
        CopyOnWriteArrayList<Runnable> copyOnWriteArrayList;
        a aVar = (a) gVar.d();
        if (aVar.f2944e) {
            return true;
        }
        boolean zC = this.j.c();
        h hVarA = zC ? this.j.a(this.f2934a.a()) : null;
        if (hVarA != null) {
            aVar.f2944e = true;
            this.f2934a.a(hVarA.k());
            com.birbit.android.jobqueue.messaging.a.i iVar = (com.birbit.android.jobqueue.messaging.a.i) this.l.a(com.birbit.android.jobqueue.messaging.a.i.class);
            iVar.a(hVarA);
            this.m.put(hVarA.j().a(), hVarA);
            if (hVarA.k() != null) {
                this.f2934a.a(hVarA.k());
            }
            aVar.f2940a.post(iVar);
            return true;
        }
        long jC = gVar.c() + this.f;
        com.birbit.android.jobqueue.log.a.a("keep alive: %s", Long.valueOf(jC));
        boolean z = this.f2936c.size() > this.f2938e;
        boolean z2 = !zC || (z && jC < this.k.nanoTime());
        com.birbit.android.jobqueue.log.a.a("Consumer idle, will kill? %s . isRunning: %s", Boolean.valueOf(z2), Boolean.valueOf(zC));
        if (z2) {
            com.birbit.android.jobqueue.messaging.a.e eVar = (com.birbit.android.jobqueue.messaging.a.e) this.l.a(com.birbit.android.jobqueue.messaging.a.e.class);
            eVar.a(1);
            aVar.f2940a.post(eVar);
            this.f2935b.remove(aVar);
            this.f2936c.remove(aVar);
            com.birbit.android.jobqueue.log.a.a("killed consumers. remaining consumers %d", Integer.valueOf(this.f2936c.size()));
            if (this.f2936c.isEmpty() && (copyOnWriteArrayList = this.n) != null) {
                Iterator<Runnable> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
            }
        } else {
            if (!this.f2935b.contains(aVar)) {
                this.f2935b.add(aVar);
            }
            if (z || !this.j.a()) {
                com.birbit.android.jobqueue.messaging.a.e eVar2 = (com.birbit.android.jobqueue.messaging.a.e) this.l.a(com.birbit.android.jobqueue.messaging.a.e.class);
                eVar2.a(2);
                if (!z) {
                    jC = this.k.nanoTime() + this.f;
                }
                aVar.f2940a.postAt(eVar2, jC);
                com.birbit.android.jobqueue.log.a.a("poke consumer manager at %s", Long.valueOf(jC));
            }
        }
        return false;
    }

    Set<String> a(o oVar, String[] strArr) {
        return a(oVar, strArr, false);
    }

    Set<String> b(o oVar, String[] strArr) {
        return a(oVar, strArr, true);
    }

    private Set<String> a(o oVar, String[] strArr, boolean z) {
        HashSet hashSet = new HashSet();
        for (h hVar : this.m.values()) {
            com.birbit.android.jobqueue.log.a.a("checking job tag %s. tags of job: %s", hVar.j(), hVar.j().d());
            if (hVar.q() && !hVar.n() && oVar.a(strArr, hVar.l())) {
                hashSet.add(hVar.a());
                if (z) {
                    hVar.o();
                } else {
                    hVar.m();
                }
            }
        }
        return hashSet;
    }

    void a(com.birbit.android.jobqueue.messaging.a.j jVar, h hVar, m mVar) {
        a aVar = (a) jVar.e();
        if (!aVar.f2944e) {
            throw new IllegalStateException("this worker should not have a job");
        }
        aVar.f2944e = false;
        this.m.remove(hVar.j().a());
        if (hVar.k() != null) {
            this.f2934a.b(hVar.k());
            if (mVar == null || !mVar.d() || mVar.b().longValue() <= 0) {
                return;
            }
            this.f2934a.a(hVar.k(), this.k.nanoTime() + (mVar.b().longValue() * 1000000));
        }
    }

    boolean a(String str) {
        return this.m.get(str) != null;
    }

    public int d() {
        return this.f2936c.size();
    }

    public boolean a(com.birbit.android.jobqueue.scheduling.a aVar, long j) {
        for (h hVar : this.m.values()) {
            if (hVar.j().e()) {
                if (aVar.c() == 2 && hVar.a(j)) {
                    return true;
                }
                if (aVar.c() == 3 && hVar.b(j)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean e() {
        return this.f2935b.size() == this.f2936c.size();
    }

    static class a implements Runnable {
        static final MessagePredicate g = new MessagePredicate() { // from class: com.birbit.android.jobqueue.e.a.1
            @Override // com.birbit.android.jobqueue.messaging.MessagePredicate
            public boolean onMessage(com.birbit.android.jobqueue.messaging.b bVar) {
                return bVar.f3010a == com.birbit.android.jobqueue.messaging.g.COMMAND && ((com.birbit.android.jobqueue.messaging.a.e) bVar).c() == 2;
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final com.birbit.android.jobqueue.messaging.f f2940a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final MessageQueue f2941b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final com.birbit.android.jobqueue.messaging.c f2942c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Timer f2943d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f2944e;
        long f;
        final com.birbit.android.jobqueue.messaging.d h = new com.birbit.android.jobqueue.messaging.d() { // from class: com.birbit.android.jobqueue.e.a.2
            @Override // com.birbit.android.jobqueue.messaging.d
            public void a(com.birbit.android.jobqueue.messaging.b bVar) {
                int i = AnonymousClass1.f2939a[bVar.f3010a.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        return;
                    }
                    a.this.a((com.birbit.android.jobqueue.messaging.a.e) bVar);
                } else {
                    a.this.a((com.birbit.android.jobqueue.messaging.a.i) bVar);
                    a aVar = a.this;
                    aVar.f = aVar.f2943d.nanoTime();
                    a.this.a();
                }
            }

            @Override // com.birbit.android.jobqueue.messaging.d
            public void b() {
                com.birbit.android.jobqueue.log.a.a("consumer manager on idle", new Object[0]);
                com.birbit.android.jobqueue.messaging.a.g gVar = (com.birbit.android.jobqueue.messaging.a.g) a.this.f2942c.a(com.birbit.android.jobqueue.messaging.a.g.class);
                gVar.a(a.this);
                gVar.a(a.this.f);
                a.this.f2941b.post(gVar);
            }
        };

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.f2940a.cancelMessages(g);
        }

        public a(MessageQueue messageQueue, com.birbit.android.jobqueue.messaging.f fVar, com.birbit.android.jobqueue.messaging.c cVar, Timer timer) {
            this.f2940a = fVar;
            this.f2942c = cVar;
            this.f2941b = messageQueue;
            this.f2943d = timer;
            this.f = timer.nanoTime();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2940a.consume(this.h);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(com.birbit.android.jobqueue.messaging.a.e eVar) {
            int iC = eVar.c();
            if (iC == 1) {
                this.f2940a.stop();
            } else {
                if (iC != 2) {
                    return;
                }
                com.birbit.android.jobqueue.log.a.a("Consumer has been poked.", new Object[0]);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(com.birbit.android.jobqueue.messaging.a.i iVar) {
            com.birbit.android.jobqueue.log.a.a("running job %s", iVar.c().getClass().getSimpleName());
            h hVarC = iVar.c();
            int iA = hVarC.a(hVarC.f());
            com.birbit.android.jobqueue.messaging.a.j jVar = (com.birbit.android.jobqueue.messaging.a.j) this.f2942c.a(com.birbit.android.jobqueue.messaging.a.j.class);
            jVar.a(hVarC);
            jVar.a(iA);
            jVar.a(this);
            this.f2941b.post(jVar);
        }
    }

    /* JADX INFO: renamed from: com.birbit.android.jobqueue.e$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2939a;

        static {
            int[] iArr = new int[com.birbit.android.jobqueue.messaging.g.values().length];
            f2939a = iArr;
            try {
                iArr[com.birbit.android.jobqueue.messaging.g.RUN_JOB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2939a[com.birbit.android.jobqueue.messaging.g.COMMAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
