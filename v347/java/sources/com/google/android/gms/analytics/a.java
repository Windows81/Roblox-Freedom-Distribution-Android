package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.ar;
import com.google.android.gms.internal.measurement.bj;
import com.google.android.gms.internal.measurement.ca;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f3231a;

    public static boolean a(Context context) {
        com.google.android.gms.common.internal.w.a(context);
        if (f3231a != null) {
            return f3231a.booleanValue();
        }
        boolean zA = ca.a(context, "com.google.android.gms.analytics.CampaignTrackingReceiver", true);
        f3231a = Boolean.valueOf(zA);
        return zA;
    }

    protected void a(Context context, String str) {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        com.google.android.gms.internal.measurement.r rVarA = com.google.android.gms.internal.measurement.r.a(context);
        bj bjVarE = rVarA.e();
        if (intent == null) {
            bjVarE.e("CampaignTrackingReceiver received null intent");
            return;
        }
        String stringExtra = intent.getStringExtra("referrer");
        String action = intent.getAction();
        bjVarE.a("CampaignTrackingReceiver received", action);
        if (!"com.android.vending.INSTALL_REFERRER".equals(action) || TextUtils.isEmpty(stringExtra)) {
            bjVarE.e("CampaignTrackingReceiver received unexpected intent without referrer extra");
            return;
        }
        a(context, stringExtra);
        int iC = ar.c();
        if (stringExtra.length() > iC) {
            bjVarE.c("Campaign data exceed the maximum supported size and will be clipped. size, limit", Integer.valueOf(stringExtra.length()), Integer.valueOf(iC));
            stringExtra = stringExtra.substring(0, iC);
        }
        rVarA.h().a(stringExtra, (Runnable) new k(this, goAsync()));
    }
}
