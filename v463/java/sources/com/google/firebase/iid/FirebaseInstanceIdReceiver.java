package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class FirebaseInstanceIdReceiver extends androidx.legacy.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f5185a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static aj f5186b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static aj f5187c;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
        Intent intent2 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
        if (intent2 != null) {
            a(context, intent2, intent.getAction());
        } else {
            a(context, intent, intent.getAction());
        }
    }

    private final void a(Context context, Intent intent, String str) {
        String str2 = null;
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        if (Build.VERSION.SDK_INT <= 18) {
            intent.removeCategory(context.getPackageName());
        }
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        if ("google.com/iid".equals(intent.getStringExtra("from")) || "com.google.firebase.INSTANCE_ID_EVENT".equals(str)) {
            str2 = "com.google.firebase.INSTANCE_ID_EVENT";
        } else if ("com.google.android.c2dm.intent.RECEIVE".equals(str) || "com.google.firebase.MESSAGING_EVENT".equals(str)) {
            str2 = "com.google.firebase.MESSAGING_EVENT";
        } else {
            Log.d("FirebaseInstanceId", "Unexpected intent");
        }
        int iA = str2 != null ? a(this, context, str2, intent) : -1;
        if (isOrderedBroadcast()) {
            setResultCode(iA);
        }
    }

    public static int a(BroadcastReceiver broadcastReceiver, Context context, String str, Intent intent) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String strValueOf = String.valueOf(str);
            Log.d("FirebaseInstanceId", strValueOf.length() != 0 ? "Starting service: ".concat(strValueOf) : new String("Starting service: "));
        }
        if (com.google.android.gms.common.util.m.i() && context.getApplicationInfo().targetSdkVersion >= 26) {
            if (broadcastReceiver.isOrderedBroadcast()) {
                broadcastReceiver.setResultCode(-1);
            }
            a(context, str).a(intent, broadcastReceiver.goAsync());
            return -1;
        }
        return x.a().a(context, str, intent);
    }

    private static synchronized aj a(Context context, String str) {
        if ("com.google.firebase.MESSAGING_EVENT".equals(str)) {
            if (f5187c == null) {
                f5187c = new aj(context, str);
            }
            return f5187c;
        }
        if (f5186b == null) {
            f5186b = new aj(context, str);
        }
        return f5186b;
    }
}
