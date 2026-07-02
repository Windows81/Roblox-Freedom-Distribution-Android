package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class e implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ d f4946a;

    e(d dVar) {
        this.f4946a = dVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f4946a.a(true);
    }
}
