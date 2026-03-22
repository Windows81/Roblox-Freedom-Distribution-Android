package com.google.firebase.iid;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class ad extends Service {
    private final Object lock;
    final ExecutorService zzh;
    private Binder zzi;
    private int zzj;
    private int zzk;

    public ad() {
        String strValueOf = String.valueOf(getClass().getSimpleName());
        this.zzh = Executors.newSingleThreadExecutor(new com.google.android.gms.common.util.a.b(strValueOf.length() != 0 ? "Firebase-".concat(strValueOf) : new String("Firebase-")));
        this.lock = new Object();
        this.zzk = 0;
    }

    protected Intent zzb(Intent intent) {
        return intent;
    }

    public boolean zzc(Intent intent) {
        return false;
    }

    public abstract void zzd(Intent intent);

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "Service received bind request");
        }
        if (this.zzi == null) {
            this.zzi = new ah(this);
        }
        return this.zzi;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.lock) {
            this.zzj = i2;
            this.zzk++;
        }
        Intent intentZzb = zzb(intent);
        if (intentZzb == null) {
            zza(intent);
            return 2;
        }
        if (zzc(intentZzb)) {
            zza(intent);
            return 2;
        }
        this.zzh.execute(new ae(this, intentZzb, intent));
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(Intent intent) {
        if (intent != null) {
            androidx.legacy.a.a.a(intent);
        }
        synchronized (this.lock) {
            int i = this.zzk - 1;
            this.zzk = i;
            if (i == 0) {
                stopSelfResult(this.zzj);
            }
        }
    }
}
