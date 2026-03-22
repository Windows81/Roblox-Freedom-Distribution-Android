package com.google.android.gms.internal.c;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap<d, List<Throwable>> f3993a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ReferenceQueue<Throwable> f3994b = new ReferenceQueue<>();

    c() {
    }

    public final List<Throwable> a(Throwable th, boolean z) {
        Reference<? extends Throwable> referencePoll = this.f3994b.poll();
        while (referencePoll != null) {
            this.f3993a.remove(referencePoll);
            referencePoll = this.f3994b.poll();
        }
        List<Throwable> list = this.f3993a.get(new d(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> listPutIfAbsent = this.f3993a.putIfAbsent(new d(th, this.f3994b), vector);
        return listPutIfAbsent == null ? vector : listPutIfAbsent;
    }
}
