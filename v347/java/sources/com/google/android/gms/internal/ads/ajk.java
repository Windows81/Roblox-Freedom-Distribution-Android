package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ajk implements aku {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<ate> f4081a;

    public ajk(ate ateVar) {
        this.f4081a = new WeakReference<>(ateVar);
    }

    @Override // com.google.android.gms.internal.ads.aku
    public final View a() {
        ate ateVar = this.f4081a.get();
        if (ateVar != null) {
            return ateVar.l();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.aku
    public final boolean b() {
        return this.f4081a.get() == null;
    }

    @Override // com.google.android.gms.internal.ads.aku
    public final aku c() {
        return new ajm(this.f4081a.get());
    }
}
