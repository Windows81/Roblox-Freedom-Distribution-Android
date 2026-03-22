package com.google.android.gms.internal.ads;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class zf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap<zg, List<Throwable>> f5729a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ReferenceQueue<Throwable> f5730b = new ReferenceQueue<>();

    zf() {
    }

    public final List<Throwable> a(Throwable th, boolean z) {
        Reference<? extends Throwable> referencePoll = this.f5730b.poll();
        while (referencePoll != null) {
            this.f5729a.remove(referencePoll);
            referencePoll = this.f5730b.poll();
        }
        return this.f5729a.get(new zg(th, null));
    }
}
