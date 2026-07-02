package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class as implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aq f3023a;

    as(aq aqVar) {
        this.f3023a = aqVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f3023a.h == null) {
            return false;
        }
        this.f3023a.h.a(motionEvent);
        return false;
    }
}
