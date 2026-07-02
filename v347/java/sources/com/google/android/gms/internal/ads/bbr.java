package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bbr implements bbc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaef f4775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final bbu f4776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f4777c;
    private final bbe e;
    private final boolean f;
    private final long g;
    private final long h;
    private final asb i;
    private final boolean j;
    private final String k;
    private bbi m;
    private final boolean o;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f4778d = new Object();
    private boolean l = false;
    private List<bbl> n = new ArrayList();

    public bbr(Context context, zzaef zzaefVar, bbu bbuVar, bbe bbeVar, boolean z, boolean z2, String str, long j, long j2, asb asbVar, boolean z3) {
        this.f4777c = context;
        this.f4775a = zzaefVar;
        this.f4776b = bbuVar;
        this.e = bbeVar;
        this.f = z;
        this.j = z2;
        this.k = str;
        this.g = j;
        this.h = j2;
        this.i = asbVar;
        this.o = z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x019b  */
    @Override // com.google.android.gms.internal.ads.bbc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.ads.bbl a(java.util.List<com.google.android.gms.internal.ads.bbd> r25) {
        /*
            Method dump skipped, instruction units count: 414
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bbr.a(java.util.List):com.google.android.gms.internal.ads.bbl");
    }

    @Override // com.google.android.gms.internal.ads.bbc
    public final void a() {
        synchronized (this.f4778d) {
            this.l = true;
            if (this.m != null) {
                this.m.a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bbc
    public final List<bbl> b() {
        return this.n;
    }
}
