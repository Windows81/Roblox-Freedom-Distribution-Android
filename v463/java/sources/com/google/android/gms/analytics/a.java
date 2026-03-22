package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.internal.measurement.ae;
import com.google.android.gms.internal.measurement.be;
import com.google.android.gms.internal.measurement.bw;
import com.google.android.gms.internal.measurement.cn;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f3242a;

    public static boolean a(Context context) {
        aa.a(context);
        Boolean bool = f3242a;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean zA = cn.a(context, "com.google.android.gms.analytics.CampaignTrackingReceiver", true);
        f3242a = Boolean.valueOf(zA);
        return zA;
    }

    protected void a(Context context, String str) {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        ae aeVarA = ae.a(context);
        bw bwVarE = aeVarA.e();
        if (intent == null) {
            bwVarE.e("CampaignTrackingReceiver received null intent");
            return;
        }
        String stringExtra = intent.getStringExtra(Payload.RFR);
        String action = intent.getAction();
        bwVarE.a("CampaignTrackingReceiver received", action);
        if (!"com.android.vending.INSTALL_REFERRER".equals(action) || TextUtils.isEmpty(stringExtra)) {
            bwVarE.e("CampaignTrackingReceiver received unexpected intent without referrer extra");
            return;
        }
        a(context, stringExtra);
        int iC = be.c();
        if (stringExtra.length() > iC) {
            bwVarE.c("Campaign data exceed the maximum supported size and will be clipped. size, limit", Integer.valueOf(stringExtra.length()), Integer.valueOf(iC));
            stringExtra = stringExtra.substring(0, iC);
        }
        aeVarA.h().a(stringExtra, (Runnable) new k(this, goAsync()));
    }
}
