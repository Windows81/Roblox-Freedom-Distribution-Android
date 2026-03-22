package com.google.android.gms.internal.measurement;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import com.appsflyer.internal.referrer.Payload;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class es {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ev f4289a;

    public es(ev evVar) {
        com.google.android.gms.common.internal.aa.a(evVar);
        this.f4289a = evVar;
    }

    public static boolean a(Context context) {
        ActivityInfo receiverInfo;
        com.google.android.gms.common.internal.aa.a(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public final void a(Context context, Intent intent) {
        fc fcVarA = fc.a(context);
        dx dxVarQ = fcVarA.q();
        if (intent == null) {
            dxVarQ.y().a("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        dxVarQ.C().a("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            dxVarQ.C().a("Starting wakeful intent.");
            this.f4289a.a(context, className);
            return;
        }
        if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            try {
                fcVarA.p().a(new et(this, fcVarA, dxVarQ));
            } catch (Exception e2) {
                dxVarQ.y().a("Install Referrer Reporter encountered a problem", e2);
            }
            BroadcastReceiver.PendingResult pendingResultA = this.f4289a.a();
            String stringExtra = intent.getStringExtra(Payload.RFR);
            if (stringExtra == null) {
                dxVarQ.C().a("Install referrer extras are null");
                if (pendingResultA != null) {
                    pendingResultA.finish();
                    return;
                }
                return;
            }
            dxVarQ.A().a("Install referrer extras are", stringExtra);
            if (!stringExtra.contains("?")) {
                String strValueOf = String.valueOf(stringExtra);
                stringExtra = strValueOf.length() != 0 ? "?".concat(strValueOf) : new String("?");
            }
            Bundle bundleA = fcVarA.m().a(Uri.parse(stringExtra));
            if (bundleA == null) {
                dxVarQ.C().a("No campaign defined in install referrer broadcast");
                if (pendingResultA != null) {
                    pendingResultA.finish();
                    return;
                }
                return;
            }
            long longExtra = 1000 * intent.getLongExtra("referrer_timestamp_seconds", 0L);
            if (longExtra == 0) {
                dxVarQ.y().a("Install referrer is missing timestamp");
            }
            fcVarA.p().a(new eu(this, fcVarA, longExtra, bundleA, context, dxVarQ, pendingResultA));
        }
    }
}
