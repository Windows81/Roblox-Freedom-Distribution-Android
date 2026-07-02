package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class SingleInstallBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("referrer");
            if (stringExtra != null) {
                if (stringExtra.contains("AppsFlyer_Test") && intent.getStringExtra("TestIntegrationMode") != null) {
                    f.c().a(context, intent);
                    return;
                } else if (context.getSharedPreferences("appsflyer-data", 0).getString("referrer", null) != null) {
                    f.c().a(context, stringExtra);
                    return;
                }
            }
            String strA = g.a().a("referrer_timestamp");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (strA == null || jCurrentTimeMillis - Long.valueOf(strA).longValue() >= 2000) {
                c.c("SingleInstallBroadcastReceiver called");
                f.c().a(context, intent);
                g.a().a("referrer_timestamp", String.valueOf(System.currentTimeMillis()));
            }
        }
    }
}
