package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.ht;
import com.google.android.gms.internal.measurement.hx;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class AppMeasurementService extends Service implements hx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ht<AppMeasurementService> f4742a;

    private final ht<AppMeasurementService> a() {
        if (this.f4742a == null) {
            this.f4742a = new ht<>(this);
        }
        return this.f4742a;
    }

    @Override // com.google.android.gms.internal.measurement.hx
    public final void a(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.hx
    public final void a(Intent intent) {
        AppMeasurementReceiver.a(intent);
    }

    @Override // com.google.android.gms.internal.measurement.hx
    public final boolean a(int i) {
        return stopSelfResult(i);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return a().a(intent);
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        a().a();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        a().b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        a().c(intent);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        return a().a(intent, i, i2);
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return a().b(intent);
    }
}
