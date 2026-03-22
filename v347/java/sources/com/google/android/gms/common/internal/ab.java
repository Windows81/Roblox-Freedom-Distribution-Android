package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ab extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Intent f3457a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Activity f3458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ int f3459c;

    ab(Intent intent, Activity activity, int i) {
        this.f3457a = intent;
        this.f3458b = activity;
        this.f3459c = i;
    }

    @Override // com.google.android.gms.common.internal.h
    public final void a() {
        if (this.f3457a != null) {
            this.f3458b.startActivityForResult(this.f3457a, this.f3459c);
        }
    }
}
