package com.birbit.android.jobqueue;

import android.content.Context;
import com.birbit.android.jobqueue.di.DependencyInjector;
import com.birbit.android.jobqueue.h;
import com.birbit.android.jobqueue.network.NetworkEventProvider;
import com.birbit.android.jobqueue.network.NetworkUtil;
import com.birbit.android.jobqueue.scheduling.Scheduler;
import com.birbit.android.jobqueue.timer.Timer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class j implements NetworkEventProvider.Listener, Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Timer f2968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final JobQueue f2969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final JobQueue f2970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final e f2971d;
    final b f;
    final com.birbit.android.jobqueue.messaging.e g;
    Scheduler h;
    private final Context i;
    private final long j;
    private final NetworkUtil k;
    private final DependencyInjector l;
    private final com.birbit.android.jobqueue.messaging.c m;
    private List<c> n;
    private List<com.birbit.android.jobqueue.scheduling.a> o;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final d f2972e = new d();
    private boolean p = true;
    private boolean q = false;

    j(com.birbit.android.jobqueue.b.a aVar, com.birbit.android.jobqueue.messaging.e eVar, com.birbit.android.jobqueue.messaging.c cVar) {
        this.g = eVar;
        if (aVar.j() != null) {
            com.birbit.android.jobqueue.log.a.a(aVar.j());
        }
        this.m = cVar;
        this.f2968a = aVar.m();
        this.i = aVar.a();
        this.j = this.f2968a.nanoTime();
        Scheduler schedulerO = aVar.o();
        this.h = schedulerO;
        if (schedulerO != null && aVar.c()) {
            Scheduler scheduler = this.h;
            if (!(scheduler instanceof a)) {
                this.h = new a(scheduler, this.f2968a);
            }
        }
        this.f2969b = aVar.d().createPersistentQueue(aVar, this.j);
        this.f2970c = aVar.d().createNonPersistent(aVar, this.j);
        this.k = aVar.g();
        this.l = aVar.e();
        NetworkUtil networkUtil = this.k;
        if (networkUtil instanceof NetworkEventProvider) {
            ((NetworkEventProvider) networkUtil).setListener(this);
        }
        this.f2971d = new e(this, this.f2968a, cVar, aVar);
        this.f = new b(cVar, this.f2968a);
    }

    boolean a() {
        return this.k instanceof NetworkEventProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.birbit.android.jobqueue.messaging.a.a aVar) {
        g gVarC = aVar.c();
        long jNanoTime = gVarC.c() > 0 ? this.f2968a.nanoTime() + (gVarC.c() * 1000000) : Long.MIN_VALUE;
        gVarC.c(this.f2968a);
        h hVarA = new h.a().a(gVarC.b()).a(gVarC).a(gVarC.j()).a(this.f2968a.nanoTime()).b(jNanoTime).d(Long.MIN_VALUE).a();
        h hVarA2 = a(gVarC.k());
        boolean z = hVarA2 == null || this.f2971d.a(hVarA2.a());
        if (z) {
            JobQueue jobQueue = gVarC.e() ? this.f2969b : this.f2970c;
            if (hVarA2 != null) {
                this.f2971d.b(o.ANY, new String[]{gVarC.k()});
                jobQueue.substitute(hVarA, hVarA2);
            } else {
                jobQueue.insert(hVarA);
            }
            if (com.birbit.android.jobqueue.log.a.b()) {
                com.birbit.android.jobqueue.log.a.a("added job class: %s priority: %d delay: %d group : %s persistent: %s requires network: %s", gVarC.getClass().getSimpleName(), Integer.valueOf(gVarC.b()), Long.valueOf(gVarC.c()), gVarC.j(), Boolean.valueOf(gVarC.e()), Boolean.valueOf(gVarC.a(this.f2968a)));
            }
        } else {
            com.birbit.android.jobqueue.log.a.a("another job with same singleId: %s was already queued", gVarC.k());
        }
        DependencyInjector dependencyInjector = this.l;
        if (dependencyInjector != null) {
            dependencyInjector.inject(gVarC);
        }
        hVarA.a(this.i);
        try {
            hVarA.j().f();
        } catch (Throwable th) {
            com.birbit.android.jobqueue.log.a.a(th, "job's onAdded did throw an exception, ignoring...", new Object[0]);
        }
        this.f.a(hVarA.j());
        if (z) {
            this.f2971d.a();
            if (gVarC.e()) {
                a(gVarC);
                return;
            }
            return;
        }
        a(hVarA, 1);
        this.f.b(hVarA.j());
    }

    private void a(g gVar) {
        if (this.h == null) {
            return;
        }
        boolean zA = gVar.a(this.f2968a);
        boolean zB = gVar.b(this.f2968a);
        long jC = gVar.c();
        if (jC <= 0) {
            jC = 0;
        }
        if (zA || zB || jC >= 30000) {
            com.birbit.android.jobqueue.scheduling.a aVar = new com.birbit.android.jobqueue.scheduling.a(UUID.randomUUID().toString());
            aVar.a(zB ? 3 : zA ? 2 : 1);
            aVar.a(jC);
            this.h.b(aVar);
            this.q = true;
        }
    }

    private h a(String str) {
        if (str == null) {
            return null;
        }
        this.f2972e.j();
        this.f2972e.a(new String[]{str});
        this.f2972e.a(o.ANY);
        Set<h> setFindJobs = this.f2970c.findJobs(this.f2972e);
        setFindJobs.addAll(this.f2969b.findJobs(this.f2972e));
        if (setFindJobs.isEmpty()) {
            return null;
        }
        for (h hVar : setFindJobs) {
            if (!this.f2971d.a(hVar.a())) {
                return hVar;
            }
        }
        return setFindJobs.iterator().next();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.g.consume(new com.birbit.android.jobqueue.messaging.d() { // from class: com.birbit.android.jobqueue.j.1
            @Override // com.birbit.android.jobqueue.messaging.d
            public void a(com.birbit.android.jobqueue.messaging.b bVar) {
                switch (AnonymousClass2.f2974a[bVar.f3010a.ordinal()]) {
                    case 1:
                        j.this.a((com.birbit.android.jobqueue.messaging.a.a) bVar);
                        break;
                    case 2:
                        if (!j.this.f2971d.a((com.birbit.android.jobqueue.messaging.a.g) bVar)) {
                            j.this.e();
                        }
                        break;
                    case 3:
                        j.this.a((com.birbit.android.jobqueue.messaging.a.j) bVar);
                        break;
                    case 4:
                        j.this.f2971d.b();
                        break;
                    case 5:
                        j.this.a((com.birbit.android.jobqueue.messaging.a.c) bVar);
                        break;
                    case 6:
                        j.this.a((com.birbit.android.jobqueue.messaging.a.h) bVar);
                        break;
                    case 7:
                        j.this.a((com.birbit.android.jobqueue.messaging.a.e) bVar);
                        break;
                    case 8:
                        j.this.a((com.birbit.android.jobqueue.messaging.a.k) bVar);
                        break;
                }
            }

            @Override // com.birbit.android.jobqueue.messaging.d
            public void b() {
                com.birbit.android.jobqueue.log.a.a("joq idle. running:? %s", Boolean.valueOf(j.this.p));
                if (j.this.p) {
                    Long lA = j.this.a(true);
                    com.birbit.android.jobqueue.log.a.a("Job queue idle. next job at: %s", lA);
                    if (lA != null) {
                        j.this.g.postAt((com.birbit.android.jobqueue.messaging.a.f) j.this.m.a(com.birbit.android.jobqueue.messaging.a.f.class), lA.longValue());
                    } else if (j.this.h != null && j.this.q && j.this.f2969b.count() == 0) {
                        j.this.q = false;
                        j.this.h.a();
                    }
                }
            }
        });
    }

    /* JADX INFO: renamed from: com.birbit.android.jobqueue.j$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2974a;

        static {
            int[] iArr = new int[com.birbit.android.jobqueue.messaging.g.values().length];
            f2974a = iArr;
            try {
                iArr[com.birbit.android.jobqueue.messaging.g.ADD_JOB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2974a[com.birbit.android.jobqueue.messaging.g.JOB_CONSUMER_IDLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2974a[com.birbit.android.jobqueue.messaging.g.RUN_JOB_RESULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2974a[com.birbit.android.jobqueue.messaging.g.CONSTRAINT_CHANGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2974a[com.birbit.android.jobqueue.messaging.g.CANCEL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2974a[com.birbit.android.jobqueue.messaging.g.PUBLIC_QUERY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2974a[com.birbit.android.jobqueue.messaging.g.COMMAND.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2974a[com.birbit.android.jobqueue.messaging.g.SCHEDULER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        List<com.birbit.android.jobqueue.scheduling.a> list;
        if (this.h == null || (list = this.o) == null || list.isEmpty() || !this.f2971d.e()) {
            return;
        }
        for (int size = this.o.size() - 1; size >= 0; size--) {
            com.birbit.android.jobqueue.scheduling.a aVarRemove = this.o.remove(size);
            this.h.a(aVarRemove, a(aVarRemove));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.birbit.android.jobqueue.messaging.a.k kVar) {
        int iC = kVar.c();
        if (iC == 1) {
            c(kVar.d());
        } else {
            if (iC == 2) {
                b(kVar.d());
                return;
            }
            throw new IllegalArgumentException("Unknown scheduler message with what " + iC);
        }
    }

    private boolean a(com.birbit.android.jobqueue.scheduling.a aVar) {
        if (this.f2971d.a(aVar, this.f2968a.nanoTime())) {
            return true;
        }
        this.f2972e.j();
        this.f2972e.a(this.f2968a.nanoTime());
        this.f2972e.a(aVar.c());
        return this.f2969b.countReadyJobs(this.f2972e) > 0;
    }

    private void b(com.birbit.android.jobqueue.scheduling.a aVar) {
        List<com.birbit.android.jobqueue.scheduling.a> list = this.o;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size).a().equals(aVar.a())) {
                    list.remove(size);
                }
            }
        }
        if (this.h != null && a(aVar)) {
            this.h.b(aVar);
        }
    }

    private void c(com.birbit.android.jobqueue.scheduling.a aVar) {
        if (!c()) {
            Scheduler scheduler = this.h;
            if (scheduler != null) {
                scheduler.a(aVar, true);
                return;
            }
            return;
        }
        if (!a(aVar)) {
            Scheduler scheduler2 = this.h;
            if (scheduler2 != null) {
                scheduler2.a(aVar, false);
                return;
            }
            return;
        }
        if (this.o == null) {
            this.o = new ArrayList();
        }
        this.o.add(aVar);
        this.f2971d.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.birbit.android.jobqueue.messaging.a.e eVar) {
        if (eVar.c() == 1) {
            this.g.stop();
            this.g.clear();
        }
    }

    int b() {
        return this.f2969b.count() + this.f2970c.count();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.birbit.android.jobqueue.messaging.a.h hVar) {
        int iD = hVar.d();
        if (iD != 101) {
            switch (iD) {
                case 0:
                    hVar.c().onResult(b());
                    return;
                case 1:
                    hVar.c().onResult(a(g()));
                    return;
                case 2:
                    com.birbit.android.jobqueue.log.a.a("handling start request...", new Object[0]);
                    if (this.p) {
                        return;
                    }
                    this.p = true;
                    this.f2971d.b();
                    return;
                case 3:
                    com.birbit.android.jobqueue.log.a.a("handling stop request...", new Object[0]);
                    this.p = false;
                    this.f2971d.c();
                    return;
                case 4:
                    hVar.c().onResult(b(hVar.e()).ordinal());
                    return;
                case 5:
                    f();
                    if (hVar.c() != null) {
                        hVar.c().onResult(0);
                        return;
                    }
                    return;
                case 6:
                    hVar.c().onResult(this.f2971d.d());
                    return;
                default:
                    throw new IllegalArgumentException("cannot handle public query with type " + hVar.d());
            }
        }
        hVar.c().onResult(0);
    }

    private void f() {
        this.f2970c.clear();
        this.f2969b.clear();
    }

    private k b(String str) {
        if (this.f2971d.a(str)) {
            return k.RUNNING;
        }
        h hVarFindJobById = this.f2970c.findJobById(str);
        if (hVarFindJobById == null) {
            hVarFindJobById = this.f2969b.findJobById(str);
        }
        if (hVarFindJobById == null) {
            return k.UNKNOWN;
        }
        int iG = g();
        long jNanoTime = this.f2968a.nanoTime();
        if (iG == 1 && hVarFindJobById.a(jNanoTime)) {
            return k.WAITING_NOT_READY;
        }
        if (iG != 3 && hVarFindJobById.b(jNanoTime)) {
            return k.WAITING_NOT_READY;
        }
        if (hVarFindJobById.i() > jNanoTime) {
            return k.WAITING_NOT_READY;
        }
        return k.WAITING_READY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.birbit.android.jobqueue.messaging.a.c cVar) {
        c cVar2 = new c(cVar.c(), cVar.d(), cVar.e());
        cVar2.a(this, this.f2971d);
        if (cVar2.a()) {
            cVar2.a(this);
            return;
        }
        if (this.n == null) {
            this.n = new ArrayList();
        }
        this.n.add(cVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.birbit.android.jobqueue.messaging.a.j jVar) {
        m mVarS;
        int iD = jVar.d();
        h hVarC = jVar.c();
        this.f.a(hVarC.j(), iD);
        int i = 0;
        switch (iD) {
            case 1:
                hVarC.r();
                c(hVarC);
                mVarS = null;
                break;
            case 2:
                a(hVarC, 2);
                c(hVarC);
                mVarS = null;
                break;
            case 3:
                com.birbit.android.jobqueue.log.a.a("running job failed and cancelled, doing nothing. Will be removed after it's onCancel is called by the CancelHandler", new Object[0]);
                mVarS = null;
                break;
            case 4:
                mVarS = hVarC.s();
                a(hVarC);
                break;
            case 5:
                a(hVarC, 5);
                c(hVarC);
                mVarS = null;
                break;
            case 6:
                a(hVarC, 6);
                c(hVarC);
                mVarS = null;
                break;
            default:
                com.birbit.android.jobqueue.log.a.b("unknown job holder result", new Object[0]);
                mVarS = null;
                break;
        }
        this.f2971d.a(jVar, hVarC, mVarS);
        this.f.b(hVarC.j(), iD);
        List<c> list = this.n;
        if (list != null) {
            int size = list.size();
            while (i < size) {
                c cVar = this.n.get(i);
                cVar.a(hVarC, iD);
                if (cVar.a()) {
                    cVar.a(this);
                    this.n.remove(i);
                    i--;
                    size--;
                }
                i++;
            }
        }
    }

    private void a(h hVar, int i) {
        try {
            hVar.d(i);
        } catch (Throwable th) {
            com.birbit.android.jobqueue.log.a.a(th, "job's onCancel did throw an exception, ignoring...", new Object[0]);
        }
        this.f.a(hVar.j(), false);
    }

    private void a(h hVar) {
        m mVarS = hVar.s();
        if (mVarS == null) {
            b(hVar);
            return;
        }
        if (mVarS.c() != null) {
            hVar.b(mVarS.c().intValue());
        }
        long jLongValue = mVarS.b() != null ? mVarS.b().longValue() : -1L;
        hVar.d(jLongValue > 0 ? this.f2968a.nanoTime() + (jLongValue * 1000000) : Long.MIN_VALUE);
        b(hVar);
    }

    private void b(h hVar) {
        if (!hVar.n()) {
            if (hVar.j().e()) {
                this.f2969b.insertOrReplace(hVar);
                return;
            } else {
                this.f2970c.insertOrReplace(hVar);
                return;
            }
        }
        com.birbit.android.jobqueue.log.a.a("not re-adding cancelled job " + hVar, new Object[0]);
    }

    private void c(h hVar) {
        if (hVar.j().e()) {
            this.f2969b.remove(hVar);
        } else {
            this.f2970c.remove(hVar);
        }
        this.f.b(hVar.j());
    }

    @Override // com.birbit.android.jobqueue.network.NetworkEventProvider.Listener
    public void onNetworkChange(int i) {
        this.g.post((com.birbit.android.jobqueue.messaging.a.f) this.m.a(com.birbit.android.jobqueue.messaging.a.f.class));
    }

    boolean c() {
        return this.p;
    }

    int d() {
        return a(g());
    }

    private int a(int i) {
        Collection<String> collectionA = this.f2971d.f2934a.a();
        this.f2972e.j();
        this.f2972e.a(this.f2968a.nanoTime());
        this.f2972e.a(i);
        this.f2972e.a(collectionA);
        this.f2972e.c(true);
        this.f2972e.a(Long.valueOf(this.f2968a.nanoTime()));
        return this.f2970c.countReadyJobs(this.f2972e) + 0 + this.f2969b.countReadyJobs(this.f2972e);
    }

    private int g() {
        NetworkUtil networkUtil = this.k;
        if (networkUtil == null) {
            return 3;
        }
        return networkUtil.getNetworkStatus(this.i);
    }

    Long a(boolean z) {
        Long lB = this.f2971d.f2934a.b();
        int iG = g();
        Collection<String> collectionA = this.f2971d.f2934a.a();
        this.f2972e.j();
        this.f2972e.a(this.f2968a.nanoTime());
        this.f2972e.a(iG);
        this.f2972e.a(collectionA);
        this.f2972e.c(true);
        Long nextJobDelayUntilNs = this.f2970c.getNextJobDelayUntilNs(this.f2972e);
        Long nextJobDelayUntilNs2 = this.f2969b.getNextJobDelayUntilNs(this.f2972e);
        if (lB == null) {
            lB = null;
        }
        if (nextJobDelayUntilNs != null) {
            lB = Long.valueOf(lB == null ? nextJobDelayUntilNs.longValue() : Math.min(nextJobDelayUntilNs.longValue(), lB.longValue()));
        }
        if (nextJobDelayUntilNs2 != null) {
            lB = Long.valueOf(lB == null ? nextJobDelayUntilNs2.longValue() : Math.min(nextJobDelayUntilNs2.longValue(), lB.longValue()));
        }
        if (!z || (this.k instanceof NetworkEventProvider)) {
            return lB;
        }
        long jNanoTime = this.f2968a.nanoTime() + i.f2962a;
        if (lB != null) {
            jNanoTime = Math.min(jNanoTime, lB.longValue());
        }
        return Long.valueOf(jNanoTime);
    }

    h a(Collection<String> collection) {
        return a(collection, false);
    }

    h a(Collection<String> collection, boolean z) {
        DependencyInjector dependencyInjector;
        if (!this.p && !z) {
            return null;
        }
        int iG = g();
        boolean z2 = false;
        com.birbit.android.jobqueue.log.a.a("looking for next job", new Object[0]);
        this.f2972e.j();
        this.f2972e.a(this.f2968a.nanoTime());
        this.f2972e.a(iG);
        this.f2972e.a(collection);
        this.f2972e.c(true);
        this.f2972e.a(Long.valueOf(this.f2968a.nanoTime()));
        h hVarNextJobAndIncRunCount = this.f2970c.nextJobAndIncRunCount(this.f2972e);
        com.birbit.android.jobqueue.log.a.a("non persistent result %s", hVarNextJobAndIncRunCount);
        if (hVarNextJobAndIncRunCount == null) {
            hVarNextJobAndIncRunCount = this.f2969b.nextJobAndIncRunCount(this.f2972e);
            com.birbit.android.jobqueue.log.a.a("persistent result %s", hVarNextJobAndIncRunCount);
            z2 = true;
        }
        if (hVarNextJobAndIncRunCount == null) {
            return null;
        }
        if (z2 && (dependencyInjector = this.l) != null) {
            dependencyInjector.inject(hVarNextJobAndIncRunCount.j());
        }
        hVarNextJobAndIncRunCount.a(this.i);
        return hVarNextJobAndIncRunCount;
    }
}
