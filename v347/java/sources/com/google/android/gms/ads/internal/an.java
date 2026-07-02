package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.zzjj;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class an implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ WeakReference f3015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ am f3016b;

    an(am amVar, WeakReference weakReference) {
        this.f3016b = amVar;
        this.f3015a = weakReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        am.a(this.f3016b, false);
        a aVar = (a) this.f3015a.get();
        if (aVar != null) {
            zzjj zzjjVar = this.f3016b.f3013c;
            if (aVar.c(zzjjVar)) {
                aVar.b(zzjjVar);
            } else {
                jd.d("Ad is not visible. Not refreshing ad.");
                aVar.f2984d.b(zzjjVar);
            }
        }
    }
}
