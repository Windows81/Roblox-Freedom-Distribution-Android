package com.b.a.a;

import android.content.Context;
import com.b.a.a.h.a;
import com.b.a.a.j;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
class l implements a.InterfaceC0049a, Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final com.b.a.a.k.b f2406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final m f2407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final m f2408c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final f f2409d;
    final b f;
    final com.b.a.a.g.g g;
    com.b.a.a.j.a h;
    private final Context i;
    private final long j;
    private final com.b.a.a.h.b k;
    private final com.b.a.a.d.a l;
    private final com.b.a.a.g.c m;
    private List<c> n;
    private List<com.b.a.a.j.b> o;
    final e e = new e();
    private boolean p = true;
    private boolean q = false;

    l(com.b.a.a.c.a aVar, com.b.a.a.g.g gVar, com.b.a.a.g.c cVar) {
        this.g = gVar;
        if (aVar.j() != null) {
            com.b.a.a.f.b.a(aVar.j());
        }
        this.m = cVar;
        this.f2406a = aVar.m();
        this.i = aVar.a();
        this.j = this.f2406a.a();
        this.h = aVar.o();
        if (this.h != null && aVar.c() && !(this.h instanceof a)) {
            this.h = new a(this.h, this.f2406a);
        }
        this.f2407b = aVar.d().a(aVar, this.j);
        this.f2408c = aVar.d().b(aVar, this.j);
        this.k = aVar.g();
        this.l = aVar.e();
        if (this.k instanceof com.b.a.a.h.a) {
            ((com.b.a.a.h.a) this.k).a(this);
        }
        this.f2409d = new f(this, this.f2406a, cVar, aVar);
        this.f = new b(cVar, this.f2406a);
    }

    boolean a() {
        return this.k instanceof com.b.a.a.h.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.b.a.a.g.a.a aVar) {
        i iVarC = aVar.c();
        long jA = iVarC.c() > 0 ? this.f2406a.a() + (iVarC.c() * 1000000) : Long.MIN_VALUE;
        iVarC.c(this.f2406a);
        j jVarA = new j.a().a(iVarC.b()).a(iVarC).a(iVarC.j()).a(this.f2406a.a()).b(jA).d(Long.MIN_VALUE).a();
        j jVarA2 = a(iVarC.k());
        boolean z = jVarA2 == null || this.f2409d.a(jVarA2.a());
        if (z) {
            m mVar = iVarC.e() ? this.f2407b : this.f2408c;
            if (jVarA2 != null) {
                this.f2409d.b(s.ANY, new String[]{iVarC.k()});
                mVar.a(jVarA, jVarA2);
            } else {
                mVar.a(jVarA);
            }
            if (com.b.a.a.f.b.b()) {
                com.b.a.a.f.b.a("added job class: %s priority: %d delay: %d group : %s persistent: %s requires network: %s", iVarC.getClass().getSimpleName(), Integer.valueOf(iVarC.b()), Long.valueOf(iVarC.c()), iVarC.j(), Boolean.valueOf(iVarC.e()), Boolean.valueOf(iVarC.a(this.f2406a)));
            }
        } else {
            com.b.a.a.f.b.a("another job with same singleId: %s was already queued", iVarC.k());
        }
        if (this.l != null) {
            this.l.a(iVarC);
        }
        jVarA.a(this.i);
        try {
            jVarA.j().f();
        } catch (Throwable th) {
            com.b.a.a.f.b.a(th, "job's onAdded did throw an exception, ignoring...", new Object[0]);
        }
        this.f.a(jVarA.j());
        if (z) {
            this.f2409d.a();
            if (iVarC.e()) {
                a(iVarC);
                return;
            }
            return;
        }
        a(jVarA, 1);
        this.f.b(jVarA.j());
    }

    private void a(i iVar) {
        int i;
        if (this.h != null) {
            boolean zA = iVar.a(this.f2406a);
            boolean zB = iVar.b(this.f2406a);
            long jC = iVar.c();
            if (jC <= 0) {
                jC = 0;
            }
            if (zA || zB || jC >= 30000) {
                com.b.a.a.j.b bVar = new com.b.a.a.j.b(UUID.randomUUID().toString());
                if (zB) {
                    i = 3;
                } else {
                    i = zA ? 2 : 1;
                }
                bVar.a(i);
                bVar.a(jC);
                this.h.b(bVar);
                this.q = true;
            }
        }
    }

    private j a(String str) {
        if (str != null) {
            this.e.j();
            this.e.a(new String[]{str});
            this.e.a(s.ANY);
            Set<j> setD = this.f2408c.d(this.e);
            setD.addAll(this.f2407b.d(this.e));
            if (!setD.isEmpty()) {
                for (j jVar : setD) {
                    if (!this.f2409d.a(jVar.a())) {
                        return jVar;
                    }
                }
                return setD.iterator().next();
            }
        }
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.g.a(new com.b.a.a.g.f() { // from class: com.b.a.a.l.1
            @Override // com.b.a.a.g.f
            public void a(com.b.a.a.g.b bVar) {
                switch (AnonymousClass2.f2411a[bVar.f2327a.ordinal()]) {
                    case 1:
                        l.this.a((com.b.a.a.g.a.a) bVar);
                        break;
                    case 2:
                        if (!l.this.f2409d.a((com.b.a.a.g.a.g) bVar)) {
                            l.this.e();
                        }
                        break;
                    case 3:
                        l.this.a((com.b.a.a.g.a.j) bVar);
                        break;
                    case 4:
                        l.this.f2409d.b();
                        break;
                    case 5:
                        l.this.a((com.b.a.a.g.a.c) bVar);
                        break;
                    case 6:
                        l.this.a((com.b.a.a.g.a.h) bVar);
                        break;
                    case 7:
                        l.this.a((com.b.a.a.g.a.e) bVar);
                        break;
                    case 8:
                        l.this.a((com.b.a.a.g.a.k) bVar);
                        break;
                }
            }

            @Override // com.b.a.a.g.f
            public void b() {
                com.b.a.a.f.b.a("joq idle. running:? %s", Boolean.valueOf(l.this.p));
                if (l.this.p) {
                    Long lA = l.this.a(true);
                    com.b.a.a.f.b.a("Job queue idle. next job at: %s", lA);
                    if (lA != null) {
                        l.this.g.a((com.b.a.a.g.a.f) l.this.m.a(com.b.a.a.g.a.f.class), lA.longValue());
                    } else if (l.this.h != null && l.this.q && l.this.f2407b.a() == 0) {
                        l.this.q = false;
                        l.this.h.a();
                    }
                }
            }
        });
    }

    /* JADX INFO: renamed from: com.b.a.a.l$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2411a = new int[com.b.a.a.g.i.values().length];

        static {
            try {
                f2411a[com.b.a.a.g.i.ADD_JOB.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2411a[com.b.a.a.g.i.JOB_CONSUMER_IDLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2411a[com.b.a.a.g.i.RUN_JOB_RESULT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2411a[com.b.a.a.g.i.CONSTRAINT_CHANGE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2411a[com.b.a.a.g.i.CANCEL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2411a[com.b.a.a.g.i.PUBLIC_QUERY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2411a[com.b.a.a.g.i.COMMAND.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2411a[com.b.a.a.g.i.SCHEDULER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.h != null && this.o != null && !this.o.isEmpty() && this.f2409d.e()) {
            for (int size = this.o.size() - 1; size >= 0; size--) {
                com.b.a.a.j.b bVarRemove = this.o.remove(size);
                this.h.a(bVarRemove, a(bVarRemove));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.b.a.a.g.a.k kVar) {
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

    private boolean a(com.b.a.a.j.b bVar) {
        if (this.f2409d.a(bVar, this.f2406a.a())) {
            return true;
        }
        this.e.j();
        this.e.a(this.f2406a.a());
        this.e.a(bVar.c());
        return this.f2407b.a(this.e) > 0;
    }

    private void b(com.b.a.a.j.b bVar) {
        List<com.b.a.a.j.b> list = this.o;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size).a().equals(bVar.a())) {
                    list.remove(size);
                }
            }
        }
        if (this.h != null && a(bVar)) {
            this.h.b(bVar);
        }
    }

    private void c(com.b.a.a.j.b bVar) {
        if (!c()) {
            if (this.h != null) {
                this.h.a(bVar, true);
            }
        } else if (!a(bVar)) {
            if (this.h != null) {
                this.h.a(bVar, false);
            }
        } else {
            if (this.o == null) {
                this.o = new ArrayList();
            }
            this.o.add(bVar);
            this.f2409d.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.b.a.a.g.a.e eVar) {
        if (eVar.c() == 1) {
            this.g.b();
            this.g.a();
        }
    }

    int b() {
        return this.f2407b.a() + this.f2408c.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.b.a.a.g.a.h hVar) {
        switch (hVar.d()) {
            case 0:
                hVar.c().a(b());
                return;
            case 1:
                hVar.c().a(b(g()));
                return;
            case 2:
                com.b.a.a.f.b.a("handling start request...", new Object[0]);
                if (!this.p) {
                    this.p = true;
                    this.f2409d.b();
                    return;
                }
                return;
            case 3:
                com.b.a.a.f.b.a("handling stop request...", new Object[0]);
                this.p = false;
                this.f2409d.c();
                return;
            case 4:
                hVar.c().a(b(hVar.e()).ordinal());
                return;
            case 5:
                f();
                if (hVar.c() != null) {
                    hVar.c().a(0);
                    return;
                }
                return;
            case 6:
                hVar.c().a(this.f2409d.d());
                return;
            case 101:
                hVar.c().a(0);
                return;
            default:
                throw new IllegalArgumentException("cannot handle public query with type " + hVar.d());
        }
    }

    private void f() {
        this.f2408c.b();
        this.f2407b.b();
    }

    private n b(String str) {
        if (this.f2409d.a(str)) {
            return n.RUNNING;
        }
        j jVarA = this.f2408c.a(str);
        if (jVarA == null) {
            jVarA = this.f2407b.a(str);
        }
        if (jVarA == null) {
            return n.UNKNOWN;
        }
        int iG = g();
        long jA = this.f2406a.a();
        if (iG == 1 && jVarA.a(jA)) {
            return n.WAITING_NOT_READY;
        }
        if (iG != 3 && jVarA.b(jA)) {
            return n.WAITING_NOT_READY;
        }
        if (jVarA.i() > jA) {
            return n.WAITING_NOT_READY;
        }
        return n.WAITING_READY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.b.a.a.g.a.c cVar) {
        c cVar2 = new c(cVar.c(), cVar.d(), cVar.e());
        cVar2.a(this, this.f2409d);
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
    public void a(com.b.a.a.g.a.j jVar) {
        int i;
        int i2;
        int i3 = 0;
        int iD = jVar.d();
        j jVarC = jVar.c();
        this.f.a(jVarC.j(), iD);
        q qVarS = null;
        switch (iD) {
            case 1:
                jVarC.r();
                c(jVarC);
                break;
            case 2:
                a(jVarC, 2);
                c(jVarC);
                break;
            case 3:
                com.b.a.a.f.b.a("running job failed and cancelled, doing nothing. Will be removed after it's onCancel is called by the CancelHandler", new Object[0]);
                break;
            case 4:
                qVarS = jVarC.s();
                a(jVarC);
                break;
            case 5:
                a(jVarC, 5);
                c(jVarC);
                break;
            case 6:
                a(jVarC, 6);
                c(jVarC);
                break;
            default:
                com.b.a.a.f.b.b("unknown job holder result", new Object[0]);
                break;
        }
        this.f2409d.a(jVar, jVarC, qVarS);
        this.f.b(jVarC.j(), iD);
        if (this.n != null) {
            int size = this.n.size();
            while (i3 < size) {
                c cVar = this.n.get(i3);
                cVar.a(jVarC, iD);
                if (cVar.a()) {
                    cVar.a(this);
                    this.n.remove(i3);
                    i = i3 - 1;
                    i2 = size - 1;
                } else {
                    i = i3;
                    i2 = size;
                }
                size = i2;
                i3 = i + 1;
            }
        }
    }

    private void a(j jVar, int i) {
        try {
            jVar.d(i);
        } catch (Throwable th) {
            com.b.a.a.f.b.a(th, "job's onCancel did throw an exception, ignoring...", new Object[0]);
        }
        this.f.a(jVar.j(), false);
    }

    private void a(j jVar) {
        long jA;
        q qVarS = jVar.s();
        if (qVarS == null) {
            b(jVar);
            return;
        }
        if (qVarS.c() != null) {
            jVar.b(qVarS.c().intValue());
        }
        long jLongValue = -1;
        if (qVarS.b() != null) {
            jLongValue = qVarS.b().longValue();
        }
        if (jLongValue > 0) {
            jA = (jLongValue * 1000000) + this.f2406a.a();
        } else {
            jA = Long.MIN_VALUE;
        }
        jVar.d(jA);
        b(jVar);
    }

    private void b(j jVar) {
        if (!jVar.n()) {
            if (jVar.j().e()) {
                this.f2407b.b(jVar);
                return;
            } else {
                this.f2408c.b(jVar);
                return;
            }
        }
        com.b.a.a.f.b.a("not re-adding cancelled job " + jVar, new Object[0]);
    }

    private void c(j jVar) {
        if (jVar.j().e()) {
            this.f2407b.c(jVar);
        } else {
            this.f2408c.c(jVar);
        }
        this.f.b(jVar.j());
    }

    @Override // com.b.a.a.h.a.InterfaceC0049a
    public void a(int i) {
        this.g.a((com.b.a.a.g.a.f) this.m.a(com.b.a.a.g.a.f.class));
    }

    boolean c() {
        return this.p;
    }

    int d() {
        return b(g());
    }

    private int b(int i) {
        Collection<String> collectionA = this.f2409d.f2303a.a();
        this.e.j();
        this.e.a(this.f2406a.a());
        this.e.a(i);
        this.e.a(collectionA);
        this.e.c(true);
        this.e.a(Long.valueOf(this.f2406a.a()));
        return 0 + this.f2408c.a(this.e) + this.f2407b.a(this.e);
    }

    private int g() {
        if (this.k == null) {
            return 3;
        }
        return this.k.a(this.i);
    }

    Long a(boolean z) {
        Long lB = this.f2409d.f2303a.b();
        int iG = g();
        Collection<String> collectionA = this.f2409d.f2303a.a();
        this.e.j();
        this.e.a(this.f2406a.a());
        this.e.a(iG);
        this.e.a(collectionA);
        this.e.c(true);
        Long lC = this.f2408c.c(this.e);
        Long lC2 = this.f2407b.c(this.e);
        if (lB == null) {
            lB = null;
        }
        if (lC != null) {
            lB = Long.valueOf(lB == null ? lC.longValue() : Math.min(lC.longValue(), lB.longValue()));
        }
        if (lC2 != null) {
            lB = Long.valueOf(lB == null ? lC2.longValue() : Math.min(lC2.longValue(), lB.longValue()));
        }
        if (!z || (this.k instanceof com.b.a.a.h.a)) {
            return lB;
        }
        long jA = this.f2406a.a() + k.f2399a;
        if (lB != null) {
            jA = Math.min(jA, lB.longValue());
        }
        return Long.valueOf(jA);
    }

    j a(Collection<String> collection) {
        return a(collection, false);
    }

    j a(Collection<String> collection, boolean z) {
        j jVar;
        boolean z2 = false;
        if (!this.p && !z) {
            return null;
        }
        int iG = g();
        com.b.a.a.f.b.a("looking for next job", new Object[0]);
        this.e.j();
        this.e.a(this.f2406a.a());
        this.e.a(iG);
        this.e.a(collection);
        this.e.c(true);
        this.e.a(Long.valueOf(this.f2406a.a()));
        j jVarB = this.f2408c.b(this.e);
        com.b.a.a.f.b.a("non persistent result %s", jVarB);
        if (jVarB == null) {
            j jVarB2 = this.f2407b.b(this.e);
            com.b.a.a.f.b.a("persistent result %s", jVarB2);
            z2 = true;
            jVar = jVarB2;
        } else {
            jVar = jVarB;
        }
        if (jVar == null) {
            return null;
        }
        if (z2 && this.l != null) {
            this.l.a(jVar.j());
        }
        jVar.a(this.i);
        return jVar;
    }
}
