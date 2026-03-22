package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class e extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f3652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f3653b;

    public static abstract class a {
        public abstract void a();
    }

    public e(a aVar) {
        this.f3653b = aVar;
    }

    public final synchronized void a() {
        if (this.f3652a != null) {
            this.f3652a.unregisterReceiver(this);
        }
        this.f3652a = null;
    }

    public final void a(Context context) {
        this.f3652a = context;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f3653b.a();
            a();
        }
    }
}
