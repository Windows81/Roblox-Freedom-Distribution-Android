package com.birbit.android.jobqueue.network;

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
import com.birbit.android.jobqueue.network.NetworkEventProvider;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements NetworkEventProvider, NetworkUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NetworkEventProvider.Listener f3039a;

    public a(Context context) {
        if (Build.VERSION.SDK_INT >= 21) {
            if (Build.VERSION.SDK_INT >= 23) {
                c(context);
            }
            b(context);
            return;
        }
        context.getApplicationContext().registerReceiver(new BroadcastReceiver() { // from class: com.birbit.android.jobqueue.network.a.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                a.this.a(context2);
            }
        }, a());
    }

    private void b(final Context context) {
        ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).addCapability(13).build(), new ConnectivityManager.NetworkCallback() { // from class: com.birbit.android.jobqueue.network.a.2
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                a.this.a(context);
            }
        });
    }

    private void c(Context context) {
        context.getApplicationContext().registerReceiver(new BroadcastReceiver() { // from class: com.birbit.android.jobqueue.network.a.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                a.this.a(context2);
            }
        }, new IntentFilter("android.os.action.DEVICE_IDLE_MODE_CHANGED"));
    }

    void a(Context context) {
        NetworkEventProvider.Listener listener = this.f3039a;
        if (listener == null) {
            return;
        }
        listener.onNetworkChange(getNetworkStatus(context));
    }

    @Override // com.birbit.android.jobqueue.network.NetworkUtil
    public int getNetworkStatus(Context context) {
        NetworkInfo activeNetworkInfo;
        if (d(context) || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
            return 1;
        }
        return (activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 9) ? 3 : 2;
    }

    private static IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        if (Build.VERSION.SDK_INT >= 23) {
            intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        }
        return intentFilter;
    }

    private static boolean d(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager.isDeviceIdleMode() && !powerManager.isIgnoringBatteryOptimizations(context.getPackageName());
    }

    @Override // com.birbit.android.jobqueue.network.NetworkEventProvider
    public void setListener(NetworkEventProvider.Listener listener) {
        this.f3039a = listener;
    }
}
