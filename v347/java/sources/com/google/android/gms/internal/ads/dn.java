package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class dn extends du {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<dc> f4943a;

    public dn(dc dcVar) {
        this.f4943a = new WeakReference<>(dcVar);
    }

    @Override // com.google.android.gms.internal.ads.dt
    public final void a(zzaej zzaejVar) {
        dc dcVar = this.f4943a.get();
        if (dcVar != null) {
            dcVar.a(zzaejVar);
        }
    }
}
