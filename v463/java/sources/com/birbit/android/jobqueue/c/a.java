package com.birbit.android.jobqueue.c;

import com.birbit.android.jobqueue.JobQueue;
import com.birbit.android.jobqueue.d;
import com.birbit.android.jobqueue.h;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements JobQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TreeSet<h> f2923a = new TreeSet<>(new Comparator<h>() { // from class: com.birbit.android.jobqueue.c.a.1
        private int a(int i, int i2) {
            if (i > i2) {
                return -1;
            }
            return i2 > i ? 1 : 0;
        }

        private int a(long j, long j2) {
            if (j > j2) {
                return -1;
            }
            return j2 > j ? 1 : 0;
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(h hVar, h hVar2) {
            if (hVar.j().a().equals(hVar2.j().a())) {
                return 0;
            }
            int iA = a(hVar.d(), hVar2.d());
            if (iA != 0) {
                return iA;
            }
            int i = -a(hVar.g(), hVar2.g());
            return i != 0 ? i : -a(hVar.e().longValue(), hVar2.e().longValue());
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, h> f2924b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicLong f2925c = new AtomicLong(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<String> f2926d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f2927e;

    public a(com.birbit.android.jobqueue.b.a aVar, long j) {
        this.f2927e = j;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public boolean insert(h hVar) {
        hVar.c(this.f2925c.incrementAndGet());
        if (this.f2924b.get(hVar.a()) != null) {
            throw new IllegalArgumentException("cannot add a job with the same id twice");
        }
        this.f2924b.put(hVar.a(), hVar);
        this.f2923a.add(hVar);
        return true;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public boolean insertOrReplace(h hVar) {
        if (hVar.e() == null) {
            return insert(hVar);
        }
        h hVar2 = this.f2924b.get(hVar.a());
        if (hVar2 != null) {
            remove(hVar2);
        }
        this.f2924b.put(hVar.a(), hVar);
        this.f2923a.add(hVar);
        return true;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void substitute(h hVar, h hVar2) {
        remove(hVar2);
        insert(hVar);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void remove(h hVar) {
        this.f2924b.remove(hVar.a());
        this.f2923a.remove(hVar);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public int count() {
        return this.f2923a.size();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public int countReadyJobs(d dVar) {
        this.f2926d.clear();
        int i = 0;
        for (h hVar : this.f2923a) {
            String strK = hVar.k();
            if (strK == null || !this.f2926d.contains(strK)) {
                if (a(hVar, dVar)) {
                    i++;
                    if (strK != null) {
                        this.f2926d.add(strK);
                    }
                }
            }
        }
        this.f2926d.clear();
        return i;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public h nextJobAndIncRunCount(d dVar) {
        for (h hVar : this.f2923a) {
            if (a(hVar, dVar)) {
                remove(hVar);
                hVar.c(hVar.f() + 1);
                hVar.e(this.f2927e);
                return hVar;
            }
        }
        return null;
    }

    private static Long a(h hVar, boolean z, boolean z2) {
        long jB = hVar.b();
        long jC = hVar.c();
        long jI = hVar.i();
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

    @Override // com.birbit.android.jobqueue.JobQueue
    public Long getNextJobDelayUntilNs(d dVar) {
        Long lA;
        boolean z = !dVar.a();
        boolean z2 = !dVar.b();
        Long lValueOf = null;
        if (!z || !z2) {
            for (h hVar : this.f2923a) {
                if (a(hVar, dVar, true) && (lA = a(hVar, z, z2)) != null && (lValueOf == null || lA.longValue() < lValueOf.longValue())) {
                    lValueOf = lA;
                }
            }
        } else {
            for (h hVar2 : this.f2923a) {
                if (a(hVar2, dVar) && (lValueOf == null || hVar2.i() < lValueOf.longValue())) {
                    lValueOf = Long.valueOf(hVar2.i());
                }
            }
        }
        return lValueOf;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void clear() {
        this.f2923a.clear();
        this.f2924b.clear();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public h findJobById(String str) {
        return this.f2924b.get(str);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public Set<h> findJobs(d dVar) {
        HashSet hashSet = new HashSet();
        for (h hVar : this.f2923a) {
            if (a(hVar, dVar)) {
                hashSet.add(hVar);
            }
        }
        return hashSet;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void onJobCancelled(h hVar) {
        remove(hVar);
    }

    private static boolean a(h hVar, d dVar) {
        return a(hVar, dVar, false);
    }

    private static boolean a(h hVar, d dVar, boolean z) {
        if (!z) {
            if (dVar.a() && hVar.a(dVar.i())) {
                return false;
            }
            if (dVar.b() && hVar.b(dVar.i())) {
                return false;
            }
        }
        if (dVar.g() != null && hVar.i() > dVar.g().longValue()) {
            return false;
        }
        if ((hVar.k() != null && dVar.e().contains(hVar.k())) || dVar.h().contains(hVar.a())) {
            return false;
        }
        if (dVar.c() != null) {
            return (hVar.l() == null || dVar.d().isEmpty() || !dVar.c().a(dVar.d(), hVar.l())) ? false : true;
        }
        return true;
    }
}
