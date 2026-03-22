package com.google.android.gms.internal.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class bx extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f4108a = bx.class.getName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ae f4109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4110c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4111d;

    bx(ae aeVar) {
        com.google.android.gms.common.internal.aa.a(aeVar);
        this.f4109b = aeVar;
    }

    private final void e() {
        this.f4109b.e();
        this.f4109b.h();
    }

    private final boolean f() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f4109b.a().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    return true;
                }
            }
        } catch (SecurityException unused) {
        }
        return false;
    }

    public final void a() {
        e();
        if (this.f4110c) {
            return;
        }
        Context contextA = this.f4109b.a();
        contextA.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        IntentFilter intentFilter = new IntentFilter("com.google.analytics.RADIO_POWERED");
        intentFilter.addCategory(contextA.getPackageName());
        contextA.registerReceiver(this, intentFilter);
        this.f4111d = f();
        this.f4109b.e().a("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f4111d));
        this.f4110c = true;
    }

    public final void b() {
        if (this.f4110c) {
            this.f4109b.e().b("Unregistering connectivity change receiver");
            this.f4110c = false;
            this.f4111d = false;
            try {
                this.f4109b.a().unregisterReceiver(this);
            } catch (IllegalArgumentException e2) {
                this.f4109b.e().e("Failed to unregister the network broadcast receiver", e2);
            }
        }
    }

    public final void c() {
        Context contextA = this.f4109b.a();
        Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
        intent.addCategory(contextA.getPackageName());
        intent.putExtra(f4108a, true);
        contextA.sendOrderedBroadcast(intent, null);
    }

    public final boolean d() {
        if (!this.f4110c) {
            this.f4109b.e().e("Connectivity unknown. Receiver not registered");
        }
        return this.f4111d;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        e();
        String action = intent.getAction();
        this.f4109b.e().a("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean zF = f();
            if (this.f4111d != zF) {
                this.f4111d = zF;
                v vVarH = this.f4109b.h();
                vVarH.a("Network connectivity status changed", Boolean.valueOf(zF));
                vVarH.m().a(new w(vVarH, zF));
                return;
            }
            return;
        }
        if (!"com.google.analytics.RADIO_POWERED".equals(action)) {
            this.f4109b.e().d("NetworkBroadcastReceiver received unknown action", action);
        } else {
            if (intent.hasExtra(f4108a)) {
                return;
            }
            v vVarH2 = this.f4109b.h();
            vVarH2.b("Radio powered up");
            vVarH2.c();
        }
    }
}
