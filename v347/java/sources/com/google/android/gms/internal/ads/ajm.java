package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ajm implements aku {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ate f4083a;

    public ajm(ate ateVar) {
        this.f4083a = ateVar;
    }

    @Override // com.google.android.gms.internal.ads.aku
    public final View a() {
        if (this.f4083a != null) {
            return this.f4083a.l();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.aku
    public final boolean b() {
        return this.f4083a == null;
    }

    @Override // com.google.android.gms.internal.ads.aku
    public final aku c() {
        return this;
    }
}
