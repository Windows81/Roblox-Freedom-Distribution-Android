package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import com.google.android.gms.common.api.internal.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cm extends e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Dialog f3610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ cl f3611b;

    cm(cl clVar, Dialog dialog) {
        this.f3611b = clVar;
        this.f3610a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.e.a
    public final void a() {
        this.f3611b.f3608a.h();
        if (this.f3610a.isShowing()) {
            this.f3610a.dismiss();
        }
    }
}
