package com.google.android.gms.common.c;

import android.content.Context;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f3422b = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f3423a = null;

    public static b b(Context context) {
        return f3422b.a(context);
    }

    public synchronized b a(Context context) {
        if (this.f3423a == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.f3423a = new b(context);
        }
        return this.f3423a;
    }
}
