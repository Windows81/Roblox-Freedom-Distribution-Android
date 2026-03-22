package com.google.android.gms.internal.measurement;

import android.content.Context;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f6014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f6015b;

    public t(Context context) {
        com.google.android.gms.common.internal.w.a(context);
        Context applicationContext = context.getApplicationContext();
        com.google.android.gms.common.internal.w.a(applicationContext, "Application context can't be null");
        this.f6014a = applicationContext;
        this.f6015b = applicationContext;
    }

    public final Context a() {
        return this.f6014a;
    }

    public final Context b() {
        return this.f6015b;
    }
}
