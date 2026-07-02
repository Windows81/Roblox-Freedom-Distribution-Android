package com.b.a.a;

import com.b.a.a.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Set<String> f2283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s f2284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String[] f2285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Collection<j> f2286d = new ArrayList();
    private final Collection<j> e = new ArrayList();
    private final d.a f;

    c(s sVar, String[] strArr, d.a aVar) {
        this.f2284b = sVar;
        this.f2285c = strArr;
        this.f = aVar;
    }

    void a(l lVar, f fVar) {
        this.f2283a = fVar.a(this.f2284b, this.f2285c);
        e eVar = lVar.e;
        eVar.j();
        eVar.a(lVar.f2406a.a());
        eVar.a(this.f2284b);
        eVar.b(this.f2283a);
        eVar.a(this.f2285c);
        eVar.c(true);
        Set<j> setD = lVar.f2408c.d(eVar);
        Set<j> setD2 = lVar.f2407b.d(eVar);
        for (j jVar : setD) {
            jVar.m();
            this.f2286d.add(jVar);
            lVar.f2408c.d(jVar);
        }
        for (j jVar2 : setD2) {
            jVar2.m();
            this.f2286d.add(jVar2);
            lVar.f2407b.d(jVar2);
        }
    }

    void a(l lVar) {
        for (j jVar : this.f2286d) {
            try {
                jVar.d(3);
            } catch (Throwable th) {
                com.b.a.a.f.b.a(th, "job's on cancel has thrown an exception. Ignoring...", new Object[0]);
            }
            if (jVar.j().e()) {
                lVar.f2408c.c(jVar);
            }
        }
        if (this.f != null) {
            ArrayList arrayList = new ArrayList(this.f2286d.size());
            ArrayList arrayList2 = new ArrayList(this.e.size());
            Iterator<j> it = this.f2286d.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().j());
            }
            Iterator<j> it2 = this.e.iterator();
            while (it2.hasNext()) {
                arrayList2.add(it2.next().j());
            }
            lVar.f.a(new d(arrayList, arrayList2), this.f);
        }
        Iterator<j> it3 = this.f2286d.iterator();
        while (it3.hasNext()) {
            lVar.f.a(it3.next().j(), true);
        }
    }

    void a(j jVar, int i) {
        if (this.f2283a.remove(jVar.a())) {
            if (i == 3) {
                this.f2286d.add(jVar);
            } else {
                this.e.add(jVar);
            }
        }
    }

    boolean a() {
        return this.f2283a.isEmpty();
    }
}
