package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ajn implements aku {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f4084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ii f4085b;

    public ajn(View view, ii iiVar) {
        this.f4084a = view;
        this.f4085b = iiVar;
    }

    @Override // com.google.android.gms.internal.ads.aku
    public final View a() {
        return this.f4084a;
    }

    @Override // com.google.android.gms.internal.ads.aku
    public final boolean b() {
        return this.f4085b == null || this.f4084a == null;
    }

    @Override // com.google.android.gms.internal.ads.aku
    public final aku c() {
        return this;
    }
}
