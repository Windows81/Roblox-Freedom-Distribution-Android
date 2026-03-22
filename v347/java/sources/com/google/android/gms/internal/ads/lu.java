package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Map;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class lu {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5278d;
    private Context e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5277c = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private final Map<BroadcastReceiver, IntentFilter> f5276b = new WeakHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private final BroadcastReceiver f5275a = new lv(this);

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void a(Context context, Intent intent) {
        for (Map.Entry<BroadcastReceiver, IntentFilter> entry : this.f5276b.entrySet()) {
            if (entry.getValue().hasAction(intent.getAction())) {
                entry.getKey().onReceive(context, intent);
            }
        }
    }

    public final synchronized void a(Context context) {
        if (!this.f5277c) {
            this.e = context.getApplicationContext();
            if (this.e == null) {
                this.e = context;
            }
            aro.a(this.e);
            this.f5278d = ((Boolean) aoo.f().a(aro.ch)).booleanValue();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.e.registerReceiver(this.f5275a, intentFilter);
            this.f5277c = true;
        }
    }

    public final synchronized void a(Context context, BroadcastReceiver broadcastReceiver) {
        if (this.f5278d) {
            this.f5276b.remove(broadcastReceiver);
        } else {
            context.unregisterReceiver(broadcastReceiver);
        }
    }

    public final synchronized void a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (this.f5278d) {
            this.f5276b.put(broadcastReceiver, intentFilter);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter);
        }
    }
}
