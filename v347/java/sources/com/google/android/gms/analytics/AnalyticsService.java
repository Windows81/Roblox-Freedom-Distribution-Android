package com.google.android.gms.analytics;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.br;
import com.google.android.gms.internal.measurement.bv;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class AnalyticsService extends Service implements bv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private br<AnalyticsService> f3230a;

    private final br<AnalyticsService> a() {
        if (this.f3230a == null) {
            this.f3230a = new br<>(this);
        }
        return this.f3230a;
    }

    @Override // com.google.android.gms.internal.measurement.bv
    public final void a(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.bv
    public final boolean a(int i) {
        return stopSelfResult(i);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        a();
        return null;
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
    public final int onStartCommand(Intent intent, int i, int i2) {
        return a().a(intent, i, i2);
    }
}
