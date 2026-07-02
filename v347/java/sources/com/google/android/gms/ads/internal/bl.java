package com.google.android.gms.ads.internal;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class bl implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bu f3058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bi f3059b;

    bl(bi biVar, bu buVar) {
        this.f3059b = biVar;
        this.f3058a = buVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f3058a.a();
        if (this.f3059b.f3052b != null) {
            this.f3059b.f3052b.c();
        }
    }
}
