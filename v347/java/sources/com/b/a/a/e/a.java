package com.b.a.a.e;

import com.b.a.a.e;
import com.b.a.a.j;
import com.b.a.a.m;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public class a implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TreeSet<j> f2298a = new TreeSet<>(new Comparator<j>() { // from class: com.b.a.a.e.a.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(j jVar, j jVar2) {
            if (jVar.j().a().equals(jVar2.j().a())) {
                return 0;
            }
            int iA = a(jVar.d(), jVar2.d());
            if (iA == 0) {
                int i = -a(jVar.g(), jVar2.g());
                return i == 0 ? -a(jVar.e().longValue(), jVar2.e().longValue()) : i;
            }
            return iA;
        }

        private int a(int i, int i2) {
            if (i > i2) {
                return -1;
            }
            if (i2 > i) {
                return 1;
            }
            return 0;
        }

        private int a(long j, long j2) {
            if (j > j2) {
                return -1;
            }
            if (j2 > j) {
                return 1;
            }
            return 0;
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, j> f2299b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicLong f2300c = new AtomicLong(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<String> f2301d = new ArrayList();
    private final long e;

    public a(com.b.a.a.c.a aVar, long j) {
        this.e = j;
    }

    @Override // com.b.a.a.m
    public boolean a(j jVar) {
        jVar.c(this.f2300c.incrementAndGet());
        if (this.f2299b.get(jVar.a()) != null) {
            throw new IllegalArgumentException("cannot add a job with the same id twice");
        }
        this.f2299b.put(jVar.a(), jVar);
        this.f2298a.add(jVar);
        return true;
    }

    @Override // com.b.a.a.m
    public boolean b(j jVar) {
        if (jVar.e() == null) {
            return a(jVar);
        }
        j jVar2 = this.f2299b.get(jVar.a());
        if (jVar2 != null) {
            c(jVar2);
        }
        this.f2299b.put(jVar.a(), jVar);
        this.f2298a.add(jVar);
        return true;
    }

    @Override // com.b.a.a.m
    public void a(j jVar, j jVar2) {
        c(jVar2);
        a(jVar);
    }

    @Override // com.b.a.a.m
    public void c(j jVar) {
        this.f2299b.remove(jVar.a());
        this.f2298a.remove(jVar);
    }

    @Override // com.b.a.a.m
    public int a() {
        return this.f2298a.size();
    }

    @Override // com.b.a.a.m
    public int a(e eVar) {
        int i = 0;
        this.f2301d.clear();
        Iterator<j> it = this.f2298a.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                j next = it.next();
                String strK = next.k();
                if ((strK == null || !this.f2301d.contains(strK)) && a(next, eVar)) {
                    i2++;
                    if (strK != null) {
                        this.f2301d.add(strK);
                    }
                }
                i = i2;
            } else {
                this.f2301d.clear();
                return i2;
            }
        }
    }

    @Override // com.b.a.a.m
    public j b(e eVar) {
        for (j jVar : this.f2298a) {
            if (a(jVar, eVar)) {
                c(jVar);
                jVar.c(jVar.f() + 1);
                jVar.e(this.e);
                return jVar;
            }
        }
        return null;
    }

    private static Long a(j jVar, boolean z, boolean z2) {
        long jB = jVar.b();
        long jC = jVar.c();
        long jI = jVar.i();
        if (!z) {
            if (jB == Long.MAX_VALUE) {
                return null;
            }
            jI = Math.max(jI, jB);
        }
        if (!z2) {
            if (jC == Long.MAX_VALUE) {
                return null;
            }
            jI = Math.max(jI, jC);
        }
        return Long.valueOf(jI);
    }

    @Override // com.b.a.a.m
    public Long c(e eVar) {
        Long lA;
        Long l = null;
        boolean z = !eVar.a();
        boolean z2 = !eVar.b();
        if (!z || !z2) {
            for (j jVar : this.f2298a) {
                if (a(jVar, eVar, true)) {
                    lA = a(jVar, z, z2);
                    if (lA != null) {
                        if (l != null && lA.longValue() >= l.longValue()) {
                        }
                        l = lA;
                    }
                }
                lA = l;
                l = lA;
            }
            return l;
        }
        Long lValueOf = null;
        for (j jVar2 : this.f2298a) {
            lValueOf = (!a(jVar2, eVar) || (lValueOf != null && jVar2.i() >= lValueOf.longValue())) ? lValueOf : Long.valueOf(jVar2.i());
        }
        return lValueOf;
    }

    @Override // com.b.a.a.m
    public void b() {
        this.f2298a.clear();
        this.f2299b.clear();
    }

    @Override // com.b.a.a.m
    public j a(String str) {
        return this.f2299b.get(str);
    }

    @Override // com.b.a.a.m
    public Set<j> d(e eVar) {
        HashSet hashSet = new HashSet();
        for (j jVar : this.f2298a) {
            if (a(jVar, eVar)) {
                hashSet.add(jVar);
            }
        }
        return hashSet;
    }

    @Override // com.b.a.a.m
    public void d(j jVar) {
        c(jVar);
    }

    private static boolean a(j jVar, e eVar) {
        return a(jVar, eVar, false);
    }

    private static boolean a(j jVar, e eVar, boolean z) {
        if (!z) {
            if (eVar.a() && jVar.a(eVar.i())) {
                return false;
            }
            if (eVar.b() && jVar.b(eVar.i())) {
                return false;
            }
        }
        if (eVar.g() != null && jVar.i() > eVar.g().longValue()) {
            return false;
        }
        if ((jVar.k() == null || !eVar.e().contains(jVar.k())) && !eVar.h().contains(jVar.a())) {
            return eVar.c() == null || !(jVar.l() == null || eVar.d().isEmpty() || !eVar.c().a(eVar.d(), jVar.l()));
        }
        return false;
    }
}
