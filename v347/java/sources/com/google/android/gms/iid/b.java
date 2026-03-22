package com.google.android.gms.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@Deprecated
public class b extends o {
    static void a(Context context, m mVar) {
        mVar.b();
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.putExtra("CMD", "RST");
        intent.setClassName(context, "com.google.android.gms.gcm.GcmReceiver");
        context.sendBroadcast(intent);
    }

    public void a() {
    }

    @Override // com.google.android.gms.iid.o
    public void handleIntent(Intent intent) {
        if ("com.google.android.gms.iid.InstanceID".equals(intent.getAction())) {
            Bundle bundle = null;
            String stringExtra = intent.getStringExtra("subtype");
            if (stringExtra != null) {
                bundle = new Bundle();
                bundle.putString("subtype", stringExtra);
            }
            a aVarA = a.a(this, bundle);
            String stringExtra2 = intent.getStringExtra("CMD");
            if (Log.isLoggable("InstanceID", 3)) {
                Log.d("InstanceID", new StringBuilder(String.valueOf(stringExtra).length() + 34 + String.valueOf(stringExtra2).length()).append("Service command. subtype:").append(stringExtra).append(" command:").append(stringExtra2).toString());
            }
            if ("RST".equals(stringExtra2)) {
                aVarA.a();
                a();
            } else {
                if ("RST_FULL".equals(stringExtra2)) {
                    if (a.b().a()) {
                        return;
                    }
                    a.b().b();
                    a();
                    return;
                }
                if ("SYNC".equals(stringExtra2)) {
                    a.b().b(String.valueOf(stringExtra).concat("|T|"));
                    a();
                }
            }
        }
    }
}
