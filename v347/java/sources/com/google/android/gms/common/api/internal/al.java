package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import com.google.android.gms.common.api.internal.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class al extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Dialog f3366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ak f3367b;

    al(ak akVar, Dialog dialog) {
        this.f3367b = akVar;
        this.f3366a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.c.a
    public final void a() {
        this.f3367b.f3364a.c();
        if (this.f3366a.isShowing()) {
            this.f3366a.dismiss();
        }
    }
}
