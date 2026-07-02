package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class aze {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f4655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<avg<?>> f4656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PriorityBlockingQueue<avg<?>> f4657c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PriorityBlockingQueue<avg<?>> f4658d;
    private final zm e;
    private final aqn f;
    private final b g;
    private final ard[] h;
    private ahn i;
    private final List<baf> j;

    public aze(zm zmVar, aqn aqnVar) {
        this(zmVar, aqnVar, 4);
    }

    private aze(zm zmVar, aqn aqnVar, int i) {
        this(zmVar, aqnVar, 4, new amq(new Handler(Looper.getMainLooper())));
    }

    private aze(zm zmVar, aqn aqnVar, int i, b bVar) {
        this.f4655a = new AtomicInteger();
        this.f4656b = new HashSet();
        this.f4657c = new PriorityBlockingQueue<>();
        this.f4658d = new PriorityBlockingQueue<>();
        this.j = new ArrayList();
        this.e = zmVar;
        this.f = aqnVar;
        this.h = new ard[4];
        this.g = bVar;
    }

    public final <T> avg<T> a(avg<T> avgVar) {
        avgVar.a(this);
        synchronized (this.f4656b) {
            this.f4656b.add(avgVar);
        }
        avgVar.a(this.f4655a.incrementAndGet());
        avgVar.b("add-to-queue");
        if (avgVar.h()) {
            this.f4657c.add(avgVar);
        } else {
            this.f4658d.add(avgVar);
        }
        return avgVar;
    }

    public final void a() {
        if (this.i != null) {
            this.i.a();
        }
        for (ard ardVar : this.h) {
            if (ardVar != null) {
                ardVar.a();
            }
        }
        this.i = new ahn(this.f4657c, this.f4658d, this.e, this.g);
        this.i.start();
        for (int i = 0; i < this.h.length; i++) {
            ard ardVar2 = new ard(this.f4658d, this.f, this.e, this.g);
            this.h[i] = ardVar2;
            ardVar2.start();
        }
    }

    final <T> void b(avg<T> avgVar) {
        synchronized (this.f4656b) {
            this.f4656b.remove(avgVar);
        }
        synchronized (this.j) {
            Iterator<baf> it = this.j.iterator();
            while (it.hasNext()) {
                it.next().a(avgVar);
            }
        }
    }
}
