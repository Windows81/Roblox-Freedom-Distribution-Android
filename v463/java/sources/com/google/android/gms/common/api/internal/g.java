package com.google.android.gms.common.api.internal;

import android.app.Activity;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3659a;

    public g(Activity activity) {
        com.google.android.gms.common.internal.aa.a(activity, "Activity must not be null");
        this.f3659a = activity;
    }

    public final boolean a() {
        return this.f3659a instanceof androidx.fragment.app.c;
    }

    public final boolean b() {
        return this.f3659a instanceof Activity;
    }

    public final Activity c() {
        return (Activity) this.f3659a;
    }

    public final androidx.fragment.app.c d() {
        return (androidx.fragment.app.c) this.f3659a;
    }
}
