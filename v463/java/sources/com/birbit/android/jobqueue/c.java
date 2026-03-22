package com.birbit.android.jobqueue;

import com.birbit.android.jobqueue.CancelResult;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Set<String> f2918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o f2919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String[] f2920c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Collection<h> f2921d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Collection<h> f2922e = new ArrayList();
    private final CancelResult.AsyncCancelCallback f;

    c(o oVar, String[] strArr, CancelResult.AsyncCancelCallback asyncCancelCallback) {
        this.f2919b = oVar;
        this.f2920c = strArr;
        this.f = asyncCancelCallback;
    }

    void a(j jVar, e eVar) {
        this.f2918a = eVar.a(this.f2919b, this.f2920c);
        d dVar = jVar.f2972e;
        dVar.j();
        dVar.a(jVar.f2968a.nanoTime());
        dVar.a(this.f2919b);
        dVar.b(this.f2918a);
        dVar.a(this.f2920c);
        dVar.c(true);
        Set<h> setFindJobs = jVar.f2970c.findJobs(dVar);
        Set<h> setFindJobs2 = jVar.f2969b.findJobs(dVar);
        for (h hVar : setFindJobs) {
            hVar.m();
            this.f2921d.add(hVar);
            jVar.f2970c.onJobCancelled(hVar);
        }
        for (h hVar2 : setFindJobs2) {
            hVar2.m();
            this.f2921d.add(hVar2);
            jVar.f2969b.onJobCancelled(hVar2);
        }
    }

    void a(j jVar) {
        for (h hVar : this.f2921d) {
            try {
                hVar.d(3);
            } catch (Throwable th) {
                com.birbit.android.jobqueue.log.a.a(th, "job's on cancel has thrown an exception. Ignoring...", new Object[0]);
            }
            if (hVar.j().e()) {
                jVar.f2970c.remove(hVar);
            }
        }
        if (this.f != null) {
            ArrayList arrayList = new ArrayList(this.f2921d.size());
            ArrayList arrayList2 = new ArrayList(this.f2922e.size());
            Iterator<h> it = this.f2921d.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().j());
            }
            Iterator<h> it2 = this.f2922e.iterator();
            while (it2.hasNext()) {
                arrayList2.add(it2.next().j());
            }
            jVar.f.a(new CancelResult(arrayList, arrayList2), this.f);
        }
        Iterator<h> it3 = this.f2921d.iterator();
        while (it3.hasNext()) {
            jVar.f.a(it3.next().j(), true);
        }
    }

    void a(h hVar, int i) {
        if (this.f2918a.remove(hVar.a())) {
            if (i == 3) {
                this.f2921d.add(hVar);
            } else {
                this.f2922e.add(hVar);
            }
        }
    }

    boolean a() {
        return this.f2918a.isEmpty();
    }
}
