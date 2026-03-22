package com.google.android.gms.internal.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class eg extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f4253a = eg.class.getName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ii f4254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4255c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4256d;

    eg(ii iiVar) {
        com.google.android.gms.common.internal.aa.a(iiVar);
        this.f4254b = iiVar;
    }

    public final void a() {
        this.f4254b.F();
        this.f4254b.w();
        if (this.f4255c) {
            return;
        }
        this.f4254b.k().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f4256d = this.f4254b.C().u();
        this.f4254b.q().C().a("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f4256d));
        this.f4255c = true;
    }

    public final void b() {
        this.f4254b.F();
        this.f4254b.w();
        this.f4254b.w();
        if (this.f4255c) {
            this.f4254b.q().C().a("Unregistering connectivity change receiver");
            this.f4255c = false;
            this.f4256d = false;
            try {
                this.f4254b.k().unregisterReceiver(this);
            } catch (IllegalArgumentException e2) {
                this.f4254b.q().v().a("Failed to unregister the network broadcast receiver", e2);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f4254b.F();
        String action = intent.getAction();
        this.f4254b.q().C().a("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.f4254b.q().y().a("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean zU = this.f4254b.C().u();
        if (this.f4256d != zU) {
            this.f4256d = zU;
            this.f4254b.p().a(new eh(this, zU));
        }
    }
}
