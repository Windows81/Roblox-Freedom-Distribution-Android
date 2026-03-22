package com.birbit.android.jobqueue;

import com.birbit.android.jobqueue.timer.Timer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList<String> f3034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TreeSet<String> f3035b = new TreeSet<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, Long> f3036c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f3037d = Long.MAX_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Timer f3038e;

    public n(Timer timer) {
        this.f3038e = timer;
    }

    public synchronized void a(String str, long j) {
        com.birbit.android.jobqueue.log.a.a("add group delay to %s until %s", str, Long.valueOf(j));
        Long l = this.f3036c.get(str);
        if (l == null || l.longValue() <= j) {
            this.f3036c.put(str, Long.valueOf(j));
            this.f3037d = c();
            this.f3034a = null;
        }
    }

    public synchronized Collection<String> a() {
        long jNanoTime = this.f3038e.nanoTime();
        if (this.f3034a == null || jNanoTime > this.f3037d) {
            if (this.f3036c.isEmpty()) {
                this.f3034a = new ArrayList<>(this.f3035b);
                this.f3037d = Long.MAX_VALUE;
            } else {
                TreeSet treeSet = new TreeSet((SortedSet) this.f3035b);
                Iterator<Map.Entry<String, Long>> it = this.f3036c.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, Long> next = it.next();
                    if (next.getValue().longValue() > jNanoTime) {
                        if (!treeSet.contains(next.getKey())) {
                            treeSet.add(next.getKey());
                        }
                    } else {
                        it.remove();
                    }
                }
                this.f3034a = new ArrayList<>(treeSet);
                this.f3037d = c();
            }
        }
        return this.f3034a;
    }

    public Long b() {
        long j = this.f3037d;
        if (j == Long.MAX_VALUE) {
            return null;
        }
        return Long.valueOf(j);
    }

    private long c() {
        long jLongValue = Long.MAX_VALUE;
        for (Long l : this.f3036c.values()) {
            if (l.longValue() < jLongValue) {
                jLongValue = l.longValue();
            }
        }
        return jLongValue;
    }

    public synchronized void a(String str) {
        if (str == null) {
            return;
        }
        if (this.f3035b.add(str)) {
            this.f3034a = null;
        }
    }

    public synchronized void b(String str) {
        if (str == null) {
            return;
        }
        if (this.f3035b.remove(str)) {
            this.f3034a = null;
        }
    }
}
