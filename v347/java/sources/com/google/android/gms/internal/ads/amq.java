package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class amq implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f4217a;

    public amq(Handler handler) {
        this.f4217a = new anr(this, handler);
    }

    @Override // com.google.android.gms.internal.ads.b
    public final void a(avg<?> avgVar, bbg<?> bbgVar) {
        a(avgVar, bbgVar, null);
    }

    @Override // com.google.android.gms.internal.ads.b
    public final void a(avg<?> avgVar, bbg<?> bbgVar, Runnable runnable) {
        avgVar.k();
        avgVar.b("post-response");
        this.f4217a.execute(new aom(this, avgVar, bbgVar, runnable));
    }

    @Override // com.google.android.gms.internal.ads.b
    public final void a(avg<?> avgVar, df dfVar) {
        avgVar.b("post-error");
        this.f4217a.execute(new aom(this, avgVar, bbg.a(dfVar), null));
    }
}
