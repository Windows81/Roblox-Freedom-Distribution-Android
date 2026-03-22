package com.google.android.gms.internal.measurement;

import android.content.Context;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f4016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f4017b;

    public ag(Context context) {
        com.google.android.gms.common.internal.aa.a(context);
        Context applicationContext = context.getApplicationContext();
        com.google.android.gms.common.internal.aa.a(applicationContext, "Application context can't be null");
        this.f4016a = applicationContext;
        this.f4017b = applicationContext;
    }

    public final Context a() {
        return this.f4016a;
    }

    public final Context b() {
        return this.f4017b;
    }
}
