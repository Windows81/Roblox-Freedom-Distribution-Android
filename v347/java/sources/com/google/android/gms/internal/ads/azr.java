package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class azr implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bab f4688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ayy f4689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ azk f4690c;

    azr(azk azkVar, bab babVar, ayy ayyVar) {
        this.f4690c = azkVar;
        this.f4688a = babVar;
        this.f4689b = ayyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4690c.f4667a) {
            if (this.f4688a.b() == -1 || this.f4688a.b() == 1) {
                return;
            }
            this.f4688a.a();
            Executor executor = nj.f5346a;
            ayy ayyVar = this.f4689b;
            ayyVar.getClass();
            executor.execute(azs.a(ayyVar));
            jd.a("Could not receive loaded message in a timely manner. Rejecting.");
        }
    }
}
