package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class c extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f3382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f3383b;

    public static abstract class a {
        public abstract void a();
    }

    public c(a aVar) {
        this.f3383b = aVar;
    }

    public final synchronized void a() {
        if (this.f3382a != null) {
            this.f3382a.unregisterReceiver(this);
        }
        this.f3382a = null;
    }

    public final void a(Context context) {
        this.f3382a = context;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f3383b.a();
            a();
        }
    }
}
