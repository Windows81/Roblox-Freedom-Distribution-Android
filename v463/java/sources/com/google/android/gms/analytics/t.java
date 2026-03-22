package com.google.android.gms.analytics;

import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class t implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ o f3296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ s f3297b;

    t(s sVar, o oVar) {
        this.f3297b = sVar;
        this.f3296a = oVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3296a.h().a(this.f3296a);
        Iterator it = this.f3297b.f3291c.iterator();
        while (it.hasNext()) {
            ((v) it.next()).a(this.f3296a);
        }
        s sVar = this.f3297b;
        s.b(this.f3296a);
    }
}
