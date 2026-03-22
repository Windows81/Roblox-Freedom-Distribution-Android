package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class akz implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aky f4149a;

    akz(aky akyVar) {
        this.f4149a = akyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4149a.f4147c) {
            if (this.f4149a.f4148d && this.f4149a.e) {
                aky.a(this.f4149a, false);
                jd.b("App went background");
                Iterator it = this.f4149a.f.iterator();
                while (it.hasNext()) {
                    try {
                        ((ala) it.next()).a(false);
                    } catch (Exception e) {
                        mj.b("", e);
                    }
                }
            } else {
                jd.b("App is still foreground");
            }
        }
    }
}
