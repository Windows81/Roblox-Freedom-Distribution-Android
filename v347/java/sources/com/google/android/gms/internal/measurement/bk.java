package com.google.android.gms.internal.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* JADX INFO: loaded from: classes.dex */
class bk extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f5913a = bk.class.getName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r f5914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5915c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5916d;

    bk(r rVar) {
        com.google.android.gms.common.internal.w.a(rVar);
        this.f5914b = rVar;
    }

    private final void e() {
        this.f5914b.e();
        this.f5914b.h();
    }

    private final boolean f() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f5914b.a().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    return true;
                }
            }
            return false;
        } catch (SecurityException e) {
            return false;
        }
    }

    public final void a() {
        e();
        if (this.f5915c) {
            return;
        }
        Context contextA = this.f5914b.a();
        contextA.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        IntentFilter intentFilter = new IntentFilter("com.google.analytics.RADIO_POWERED");
        intentFilter.addCategory(contextA.getPackageName());
        contextA.registerReceiver(this, intentFilter);
        this.f5916d = f();
        this.f5914b.e().a("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f5916d));
        this.f5915c = true;
    }

    public final void b() {
        if (this.f5915c) {
            this.f5914b.e().b("Unregistering connectivity change receiver");
            this.f5915c = false;
            this.f5916d = false;
            try {
                this.f5914b.a().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f5914b.e().e("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    public final void c() {
        Context contextA = this.f5914b.a();
        Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
        intent.addCategory(contextA.getPackageName());
        intent.putExtra(f5913a, true);
        contextA.sendOrderedBroadcast(intent, null);
    }

    public final boolean d() {
        if (!this.f5915c) {
            this.f5914b.e().e("Connectivity unknown. Receiver not registered");
        }
        return this.f5916d;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        e();
        String action = intent.getAction();
        this.f5914b.e().a("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean zF = f();
            if (this.f5916d != zF) {
                this.f5916d = zF;
                i iVarH = this.f5914b.h();
                iVarH.a("Network connectivity status changed", Boolean.valueOf(zF));
                iVarH.m().a(new j(iVarH, zF));
                return;
            }
            return;
        }
        if (!"com.google.analytics.RADIO_POWERED".equals(action)) {
            this.f5914b.e().d("NetworkBroadcastReceiver received unknown action", action);
        } else {
            if (intent.hasExtra(f5913a)) {
                return;
            }
            i iVarH2 = this.f5914b.h();
            iVarH2.b("Radio powered up");
            iVarH2.c();
        }
    }
}
