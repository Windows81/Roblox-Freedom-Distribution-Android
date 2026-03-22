package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class eq implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ eo f4287a;

    private eq(eo eoVar) {
        this.f4287a = eoVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f4287a.f4285b.q().y().a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            this.f4287a.f4284a = jo.a(iBinder);
            if (this.f4287a.f4284a == null) {
                this.f4287a.f4285b.q().y().a("Install Referrer Service implementation was not found");
            } else {
                this.f4287a.f4285b.q().A().a("Install Referrer Service connected");
                this.f4287a.f4285b.p().a(new er(this));
            }
        } catch (Exception e2) {
            this.f4287a.f4285b.q().y().a("Exception occurred while calling Install Referrer API", e2);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f4287a.f4284a = null;
        this.f4287a.f4285b.q().A().a("Install Referrer Service disconnected");
    }
}
