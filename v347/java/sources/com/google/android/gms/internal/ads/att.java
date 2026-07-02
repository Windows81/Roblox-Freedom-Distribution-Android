package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class att implements atc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ View f4502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ats f4503b;

    att(ats atsVar, View view) {
        this.f4503b = atsVar;
        this.f4502a = view;
    }

    @Override // com.google.android.gms.internal.ads.atc
    public final void a() {
        this.f4503b.onClick(this.f4502a);
    }

    @Override // com.google.android.gms.internal.ads.atc
    public final void a(MotionEvent motionEvent) {
        this.f4503b.onTouch(null, motionEvent);
    }
}
