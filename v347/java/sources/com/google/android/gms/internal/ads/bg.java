package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
final class bg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicInteger f4844a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ int f4845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ no f4846c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ List f4847d;

    bg(AtomicInteger atomicInteger, int i, no noVar, List list) {
        this.f4844a = atomicInteger;
        this.f4845b = i;
        this.f4846c = noVar;
        this.f4847d = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4844a.incrementAndGet() >= this.f4845b) {
            try {
                this.f4846c.b(ay.b(this.f4847d));
            } catch (InterruptedException | ExecutionException e) {
                jd.c("Unable to convert list of futures to a future of list", e);
            }
        }
    }
}
