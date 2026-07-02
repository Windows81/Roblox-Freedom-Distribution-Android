package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.ii;
import com.google.android.gms.internal.ads.ij;

/* JADX INFO: loaded from: classes.dex */
final class ae implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ij f2990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ad f2991b;

    ae(ad adVar, ij ijVar) {
        this.f2991b = adVar;
        this.f2990a = ijVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2991b.b(new ii(this.f2990a, null, null, null, null, null, null, null));
    }
}
