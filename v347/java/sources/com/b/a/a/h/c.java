package com.b.a.a.h;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PowerManager;
import com.b.a.a.h.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c implements a, b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a.InterfaceC0049a f2347a;

    public c(Context context) {
        if (Build.VERSION.SDK_INT >= 21) {
            if (Build.VERSION.SDK_INT >= 23) {
                d(context);
            }
            c(context);
            return;
        }
        context.getApplicationContext().registerReceiver(new BroadcastReceiver() { // from class: com.b.a.a.h.c.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                c.this.b(context2);
            }
        }, a());
    }

    @TargetApi(23)
    private void c(final Context context) {
        ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).addCapability(13).build(), new ConnectivityManager.NetworkCallback() { // from class: com.b.a.a.h.c.2
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                c.this.b(context);
            }
        });
    }

    @TargetApi(23)
    private void d(Context context) {
        context.getApplicationContext().registerReceiver(new BroadcastReceiver() { // from class: com.b.a.a.h.c.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                c.this.b(context2);
            }
        }, new IntentFilter("android.os.action.DEVICE_IDLE_MODE_CHANGED"));
    }

    void b(Context context) {
        if (this.f2347a != null) {
            this.f2347a.a(a(context));
        }
    }

    @Override // com.b.a.a.h.b
    public int a(Context context) {
        NetworkInfo activeNetworkInfo;
        if (!e(context) && (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) != null) {
            if (activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 9) {
                return 3;
            }
            return 2;
        }
        return 1;
    }

    @TargetApi(23)
    private static IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        if (Build.VERSION.SDK_INT >= 23) {
            intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        }
        return intentFilter;
    }

    @TargetApi(23)
    private static boolean e(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager.isDeviceIdleMode() && !powerManager.isIgnoringBatteryOptimizations(context.getPackageName());
    }

    @Override // com.b.a.a.h.a
    public void a(a.InterfaceC0049a interfaceC0049a) {
        this.f2347a = interfaceC0049a;
    }
}
