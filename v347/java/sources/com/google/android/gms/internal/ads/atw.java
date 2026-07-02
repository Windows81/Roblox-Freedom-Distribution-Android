package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class atw implements atc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ View f4510a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ atu f4511b;

    atw(atu atuVar, View view) {
        this.f4511b = atuVar;
        this.f4510a = view;
    }

    @Override // com.google.android.gms.internal.ads.atc
    public final void a() {
        if (this.f4511b.a(atu.f4504a)) {
            this.f4511b.onClick(this.f4510a);
        }
    }

    @Override // com.google.android.gms.internal.ads.atc
    public final void a(MotionEvent motionEvent) {
        this.f4511b.onTouch(null, motionEvent);
    }
}
