package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ab extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private aa f5194a;

    public ab(aa aaVar) {
        this.f5194a = aaVar;
    }

    public final void a() {
        if (FirebaseInstanceId.g()) {
            Log.d("FirebaseInstanceId", "Connectivity change received registered");
        }
        this.f5194a.a().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        aa aaVar = this.f5194a;
        if (aaVar != null && aaVar.b()) {
            if (FirebaseInstanceId.g()) {
                Log.d("FirebaseInstanceId", "Connectivity changed. Starting background sync.");
            }
            FirebaseInstanceId.a(this.f5194a, 0L);
            this.f5194a.a().unregisterReceiver(this);
            this.f5194a = null;
        }
    }
}
