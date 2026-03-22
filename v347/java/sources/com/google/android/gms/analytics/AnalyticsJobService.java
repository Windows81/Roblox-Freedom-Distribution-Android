package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.internal.measurement.br;
import com.google.android.gms.internal.measurement.bv;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@TargetApi(24)
public final class AnalyticsJobService extends JobService implements bv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private br<AnalyticsJobService> f3228a;

    private final br<AnalyticsJobService> a() {
        if (this.f3228a == null) {
            this.f3228a = new br<>(this);
        }
        return this.f3228a;
    }

    @Override // com.google.android.gms.internal.measurement.bv
    @TargetApi(24)
    public final void a(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    @Override // com.google.android.gms.internal.measurement.bv
    public final boolean a(int i) {
        return stopSelfResult(i);
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

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        return a().a(jobParameters);
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
