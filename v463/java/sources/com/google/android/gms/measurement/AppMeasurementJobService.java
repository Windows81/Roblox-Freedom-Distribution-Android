package com.google.android.gms.measurement;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.internal.measurement.ht;
import com.google.android.gms.internal.measurement.hx;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class AppMeasurementJobService extends JobService implements hx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ht<AppMeasurementJobService> f4740a;

    private final ht<AppMeasurementJobService> a() {
        if (this.f4740a == null) {
            this.f4740a = new ht<>(this);
        }
        return this.f4740a;
    }

    @Override // com.google.android.gms.internal.measurement.hx
    public final void a(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    @Override // com.google.android.gms.internal.measurement.hx
    public final void a(Intent intent) {
    }

    @Override // com.google.android.gms.internal.measurement.hx
    public final boolean a(int i) {
        throw new UnsupportedOperationException();
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

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        return a().a(jobParameters);
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return a().b(intent);
    }
}
