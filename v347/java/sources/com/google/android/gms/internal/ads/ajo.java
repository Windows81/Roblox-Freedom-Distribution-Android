package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class ajo implements aku {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<View> f4086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference<ii> f4087b;

    public ajo(View view, ii iiVar) {
        this.f4086a = new WeakReference<>(view);
        this.f4087b = new WeakReference<>(iiVar);
    }

    @Override // com.google.android.gms.internal.ads.aku
    public final View a() {
        return this.f4086a.get();
    }

    @Override // com.google.android.gms.internal.ads.aku
    public final boolean b() {
        return this.f4086a.get() == null || this.f4087b.get() == null;
    }

    @Override // com.google.android.gms.internal.ads.aku
    public final aku c() {
        return new ajn(this.f4086a.get(), this.f4087b.get());
    }
}
