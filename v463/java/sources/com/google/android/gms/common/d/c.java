package com.google.android.gms.common.d;

import android.content.Context;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f3695b = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f3696a = null;

    public static b b(Context context) {
        return f3695b.a(context);
    }

    public synchronized b a(Context context) {
        if (this.f3696a == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.f3696a = new b(context);
        }
        return this.f3696a;
    }
}
