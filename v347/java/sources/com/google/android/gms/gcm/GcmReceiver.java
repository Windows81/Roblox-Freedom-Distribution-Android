package com.google.android.gms.gcm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.support.v4.a.i;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.n;
import com.google.android.gms.iid.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@Deprecated
public class GcmReceiver extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f3616a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static u f3617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static u f3618c;

    private final synchronized u a(Context context, String str) {
        u uVar;
        if ("com.google.android.c2dm.intent.RECEIVE".equals(str)) {
            if (f3618c == null) {
                f3618c = new u(context, str);
            }
            uVar = f3618c;
        } else {
            if (f3617b == null) {
                f3617b = new u(context, str);
            }
            uVar = f3617b;
        }
        return uVar;
    }

    private final void b(Context context, Intent intent) {
        ComponentName componentNameStartService;
        if (isOrderedBroadcast()) {
            setResultCode(500);
        }
        ResolveInfo resolveInfoResolveService = context.getPackageManager().resolveService(intent, 0);
        if (resolveInfoResolveService == null || resolveInfoResolveService.serviceInfo == null) {
            Log.e("GcmReceiver", "Failed to resolve target intent service, skipping classname enforcement");
        } else {
            ServiceInfo serviceInfo = resolveInfoResolveService.serviceInfo;
            if (!context.getPackageName().equals(serviceInfo.packageName) || serviceInfo.name == null) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                Log.e("GcmReceiver", new StringBuilder(String.valueOf(str).length() + 94 + String.valueOf(str2).length()).append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ").append(str).append("/").append(str2).toString());
            } else {
                String strConcat = serviceInfo.name;
                if (strConcat.startsWith(".")) {
                    String strValueOf = String.valueOf(context.getPackageName());
                    String strValueOf2 = String.valueOf(strConcat);
                    strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
                }
                if (Log.isLoggable("GcmReceiver", 3)) {
                    String strValueOf3 = String.valueOf(strConcat);
                    Log.d("GcmReceiver", strValueOf3.length() != 0 ? "Restricting intent to a specific service: ".concat(strValueOf3) : new String("Restricting intent to a specific service: "));
                }
                intent.setClassName(context.getPackageName(), strConcat);
            }
        }
        try {
            if (context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
                componentNameStartService = a(context, intent);
            } else {
                componentNameStartService = context.startService(intent);
                Log.d("GcmReceiver", "Missing wake lock permission, service start may be delayed");
            }
            if (componentNameStartService != null) {
                if (isOrderedBroadcast()) {
                    setResultCode(-1);
                }
            } else {
                Log.e("GcmReceiver", "Error while delivering the message: ServiceIntent not found.");
                if (isOrderedBroadcast()) {
                    setResultCode(404);
                }
            }
        } catch (SecurityException e) {
            Log.e("GcmReceiver", "Error while delivering the message to the serviceIntent", e);
            if (isOrderedBroadcast()) {
                setResultCode(401);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean z = false;
        if (Log.isLoggable("GcmReceiver", 3)) {
            Log.d("GcmReceiver", "received new intent");
        }
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        if (Build.VERSION.SDK_INT <= 18) {
            intent.removeCategory(context.getPackageName());
        }
        if ("google.com/iid".equals(intent.getStringExtra("from"))) {
            intent.setAction("com.google.android.gms.iid.InstanceID");
        }
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        if (n.l() && context.getApplicationInfo().targetSdkVersion >= 26) {
            z = true;
        }
        if (z) {
            if (isOrderedBroadcast()) {
                setResultCode(-1);
            }
            a(context, intent.getAction()).a(intent, goAsync());
            return;
        }
        if ("com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            b(context, intent);
        } else {
            b(context, intent);
        }
        if (isOrderedBroadcast() && getResultCode() == 0) {
            setResultCode(-1);
        }
    }
}
