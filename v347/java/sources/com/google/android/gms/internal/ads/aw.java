package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class aw extends iy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ap f4537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzaej f4538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ij f4539c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ay f4540d;
    private final Object e;
    private Future<ii> f;

    public aw(Context context, com.google.android.gms.ads.internal.ad adVar, ij ijVar, agv agvVar, ap apVar, asb asbVar) {
        this(ijVar, apVar, new ay(context, adVar, new kw(context), agvVar, ijVar, asbVar));
    }

    private aw(ij ijVar, ap apVar, ay ayVar) {
        this.e = new Object();
        this.f4539c = ijVar;
        this.f4538b = ijVar.f5118b;
        this.f4537a = apVar;
        this.f4540d = ayVar;
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        ii iiVar;
        int i = -2;
        try {
            synchronized (this.e) {
                this.f = jk.a(this.f4540d);
            }
            iiVar = this.f.get(60000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            i = 0;
            iiVar = null;
        } catch (CancellationException e2) {
            i = 0;
            iiVar = null;
        } catch (ExecutionException e3) {
            i = 0;
            iiVar = null;
        } catch (TimeoutException e4) {
            jd.e("Timed out waiting for native ad.");
            i = 2;
            this.f.cancel(true);
            iiVar = null;
        }
        if (iiVar == null) {
            iiVar = new ii(this.f4539c.f5117a.f5760c, null, null, i, null, null, this.f4538b.k, this.f4538b.j, this.f4539c.f5117a.i, false, null, null, null, null, null, this.f4538b.h, this.f4539c.f5120d, this.f4538b.f, this.f4539c.f, this.f4538b.m, this.f4538b.n, this.f4539c.h, null, null, null, null, this.f4539c.f5118b.D, this.f4539c.f5118b.E, null, null, this.f4538b.L, this.f4539c.i, this.f4539c.f5118b.O, false, this.f4539c.f5118b.Q, null, this.f4539c.f5118b.S, this.f4539c.f5118b.T);
        }
        jm.f5184a.post(new ax(this, iiVar));
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void b_() {
        synchronized (this.e) {
            if (this.f != null) {
                this.f.cancel(true);
            }
        }
    }
}
