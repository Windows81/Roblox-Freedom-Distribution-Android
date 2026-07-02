package com.google.android.gms.analytics;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class t implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ o f3278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ s f3279b;

    t(s sVar, o oVar) {
        this.f3279b = sVar;
        this.f3278a = oVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3278a.h().a(this.f3278a);
        Iterator it = this.f3279b.f3274c.iterator();
        while (it.hasNext()) {
            ((v) it.next()).a(this.f3278a);
        }
        s sVar = this.f3279b;
        s.b(this.f3278a);
    }
}
