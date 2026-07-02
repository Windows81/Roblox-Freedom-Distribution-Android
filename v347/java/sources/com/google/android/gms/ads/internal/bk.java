package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class bk implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bu f3056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bi f3057b;

    bk(bi biVar, bu buVar) {
        this.f3057b = biVar;
        this.f3056a = buVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.f3056a.a();
        if (this.f3057b.f3052b == null) {
            return false;
        }
        this.f3057b.f3052b.c();
        return false;
    }
}
