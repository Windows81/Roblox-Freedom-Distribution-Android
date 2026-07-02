package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bbo implements bbc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaef f4767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final bbu f4768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f4769c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final bbe f4770d;
    private final boolean e;
    private final long f;
    private final long g;
    private final boolean l;
    private final String m;
    private final boolean o;
    private final Object i = new Object();
    private boolean j = false;
    private final Map<nd<bbl>, bbi> k = new HashMap();
    private List<bbl> n = new ArrayList();
    private final int h = 2;

    public bbo(Context context, zzaef zzaefVar, bbu bbuVar, bbe bbeVar, boolean z, boolean z2, String str, long j, long j2, int i, boolean z3) {
        this.f4769c = context;
        this.f4767a = zzaefVar;
        this.f4768b = bbuVar;
        this.f4770d = bbeVar;
        this.e = z;
        this.l = z2;
        this.m = str;
        this.f = j;
        this.g = j2;
        this.o = z3;
    }

    private final void a(nd<bbl> ndVar) {
        jm.f5184a.post(new bbq(this, ndVar));
    }

    private final bbl b(List<nd<bbl>> list) {
        synchronized (this.i) {
            if (this.j) {
                return new bbl(-1);
            }
            for (nd<bbl> ndVar : list) {
                try {
                    bbl bblVar = ndVar.get();
                    this.n.add(bblVar);
                    if (bblVar != null && bblVar.f4763a == 0) {
                        a(ndVar);
                        return bblVar;
                    }
                } catch (InterruptedException | ExecutionException e) {
                    jd.c("Exception while processing an adapter; continuing with other adapters", e);
                }
            }
            a((nd<bbl>) null);
            return new bbl(1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.google.android.gms.internal.ads.bbl c(java.util.List<com.google.android.gms.internal.ads.nd<com.google.android.gms.internal.ads.bbl>> r16) {
        /*
            Method dump skipped, instruction units count: 207
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bbo.c(java.util.List):com.google.android.gms.internal.ads.bbl");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00f5  */
    @Override // com.google.android.gms.internal.ads.bbc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.ads.bbl a(java.util.List<com.google.android.gms.internal.ads.bbd> r22) {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bbo.a(java.util.List):com.google.android.gms.internal.ads.bbl");
    }

    @Override // com.google.android.gms.internal.ads.bbc
    public final void a() {
        synchronized (this.i) {
            this.j = true;
            Iterator<bbi> it = this.k.values().iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bbc
    public final List<bbl> b() {
        return this.n;
    }
}
