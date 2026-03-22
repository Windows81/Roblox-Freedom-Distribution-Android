package com.google.android.gms.internal.b;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap<f, List<Throwable>> f5835a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ReferenceQueue<Throwable> f5836b = new ReferenceQueue<>();

    e() {
    }

    public final List<Throwable> a(Throwable th, boolean z) {
        Reference<? extends Throwable> referencePoll = this.f5836b.poll();
        while (referencePoll != null) {
            this.f5835a.remove(referencePoll);
            referencePoll = this.f5836b.poll();
        }
        List<Throwable> list = this.f5835a.get(new f(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> listPutIfAbsent = this.f5835a.putIfAbsent(new f(th, this.f5836b), vector);
        return listPutIfAbsent == null ? vector : listPutIfAbsent;
    }
}
