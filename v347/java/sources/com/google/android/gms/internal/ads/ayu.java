package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class ayu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f4641a;

    public final void a(Context context) {
        if (this.f4641a != null) {
            return;
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this.f4641a = context;
    }
}
