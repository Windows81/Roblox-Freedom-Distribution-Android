package com.b.a.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList<String> f2424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TreeSet<String> f2425b = new TreeSet<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, Long> f2426c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f2427d = Long.MAX_VALUE;
    private final com.b.a.a.k.b e;

    public r(com.b.a.a.k.b bVar) {
        this.e = bVar;
    }

    public synchronized void a(String str, long j) {
        com.b.a.a.f.b.a("add group delay to %s until %s", str, Long.valueOf(j));
        Long l = this.f2426c.get(str);
        if (l == null || l.longValue() <= j) {
            this.f2426c.put(str, Long.valueOf(j));
            this.f2427d = c();
            this.f2424a = null;
        }
    }

    public synchronized Collection<String> a() {
        long jA = this.e.a();
        if (this.f2424a == null || jA > this.f2427d) {
            if (this.f2426c.isEmpty()) {
                this.f2424a = new ArrayList<>(this.f2425b);
                this.f2427d = Long.MAX_VALUE;
            } else {
                TreeSet treeSet = new TreeSet((SortedSet) this.f2425b);
                Iterator<Map.Entry<String, Long>> it = this.f2426c.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, Long> next = it.next();
                    if (next.getValue().longValue() > jA) {
                        if (!treeSet.contains(next.getKey())) {
                            treeSet.add(next.getKey());
                        }
                    } else {
                        it.remove();
                    }
                }
                this.f2424a = new ArrayList<>(treeSet);
                this.f2427d = c();
            }
        }
        return this.f2424a;
    }

    public Long b() {
        if (this.f2427d == Long.MAX_VALUE) {
            return null;
        }
        return Long.valueOf(this.f2427d);
    }

    private long c() {
        long jLongValue = Long.MAX_VALUE;
        Iterator<Long> it = this.f2426c.values().iterator();
        while (true) {
            long j = jLongValue;
            if (it.hasNext()) {
                Long next = it.next();
                jLongValue = next.longValue() < j ? next.longValue() : j;
            } else {
                return j;
            }
        }
    }

    public synchronized void a(String str) {
        if (str != null) {
            if (this.f2425b.add(str)) {
                this.f2424a = null;
            }
        }
    }

    public synchronized void b(String str) {
        if (str != null) {
            if (this.f2425b.remove(str)) {
                this.f2424a = null;
            }
        }
    }
}
