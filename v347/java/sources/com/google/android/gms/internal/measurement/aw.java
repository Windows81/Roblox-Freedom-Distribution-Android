package com.google.android.gms.internal.measurement;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.PersistableBundle;

/* JADX INFO: loaded from: classes.dex */
public final class aw extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f5883a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f5884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AlarmManager f5885c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f5886d;

    protected aw(r rVar) {
        super(rVar);
        this.f5885c = (AlarmManager) j().getSystemService("alarm");
    }

    private final PendingIntent f() {
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(j(), "com.google.android.gms.analytics.AnalyticsReceiver"));
        return PendingIntent.getBroadcast(j(), 0, intent, 0);
    }

    private final int g() {
        if (this.f5886d == null) {
            String strValueOf = String.valueOf(j().getPackageName());
            this.f5886d = Integer.valueOf((strValueOf.length() != 0 ? "analytics".concat(strValueOf) : new String("analytics")).hashCode());
        }
        return this.f5886d.intValue();
    }

    @Override // com.google.android.gms.internal.measurement.p
    protected final void a() {
        ActivityInfo receiverInfo;
        try {
            e();
            if (ar.e() <= 0 || (receiverInfo = j().getPackageManager().getReceiverInfo(new ComponentName(j(), "com.google.android.gms.analytics.AnalyticsReceiver"), 2)) == null || !receiverInfo.enabled) {
                return;
            }
            b("Receiver registered for local dispatch.");
            this.f5883a = true;
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    public final boolean b() {
        return this.f5883a;
    }

    public final boolean c() {
        return this.f5884b;
    }

    public final void d() {
        y();
        com.google.android.gms.common.internal.w.a(this.f5883a, "Receiver not registered");
        long jE = ar.e();
        if (jE > 0) {
            e();
            long jB = i().b() + jE;
            this.f5884b = true;
            if (Build.VERSION.SDK_INT < 24) {
                b("Scheduling upload with AlarmManager");
                this.f5885c.setInexactRepeating(2, jB, jE, f());
                return;
            }
            b("Scheduling upload with JobScheduler");
            ComponentName componentName = new ComponentName(j(), "com.google.android.gms.analytics.AnalyticsJobService");
            JobScheduler jobScheduler = (JobScheduler) j().getSystemService("jobscheduler");
            JobInfo.Builder builder = new JobInfo.Builder(g(), componentName);
            builder.setMinimumLatency(jE);
            builder.setOverrideDeadline(jE << 1);
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            builder.setExtras(persistableBundle);
            JobInfo jobInfoBuild = builder.build();
            a("Scheduling job. JobID", Integer.valueOf(g()));
            jobScheduler.schedule(jobInfoBuild);
        }
    }

    public final void e() {
        this.f5884b = false;
        this.f5885c.cancel(f());
        if (Build.VERSION.SDK_INT >= 24) {
            JobScheduler jobScheduler = (JobScheduler) j().getSystemService("jobscheduler");
            a("Cancelling job. JobID", Integer.valueOf(g()));
            jobScheduler.cancel(g());
        }
    }
}
