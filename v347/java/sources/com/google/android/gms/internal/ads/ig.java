package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class ig implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f5111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ no f5112b;

    ig(Cif cif, Context context, no noVar) {
        this.f5111a = context;
        this.f5112b = noVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f5112b.b(com.google.android.gms.ads.a.a.a(this.f5111a));
        } catch (com.google.android.gms.common.h | com.google.android.gms.common.i | IOException | IllegalStateException e) {
            this.f5112b.a(e);
            mj.b("Exception while getting advertising Id info", e);
        }
    }
}
