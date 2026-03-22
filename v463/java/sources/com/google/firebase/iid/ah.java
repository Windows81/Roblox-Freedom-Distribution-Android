package com.google.firebase.iid;

import android.os.Binder;
import android.os.Process;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ah extends Binder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ad f5207a;

    ah(ad adVar) {
        this.f5207a = adVar;
    }

    public final void a(af afVar) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "service received new intent via bind strategy");
        }
        if (this.f5207a.zzc(afVar.f5201a)) {
            afVar.a();
            return;
        }
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "intent being queued for bg execution");
        }
        this.f5207a.zzh.execute(new ai(this, afVar));
    }
}
