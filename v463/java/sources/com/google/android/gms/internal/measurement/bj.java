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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class bj extends ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4078a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f4079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AlarmManager f4080c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f4081d;

    protected bj(ae aeVar) {
        super(aeVar);
        this.f4080c = (AlarmManager) j().getSystemService("alarm");
    }

    private final PendingIntent f() {
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(j(), "com.google.android.gms.analytics.AnalyticsReceiver"));
        return PendingIntent.getBroadcast(j(), 0, intent, 0);
    }

    private final int g() {
        if (this.f4081d == null) {
            String strValueOf = String.valueOf(j().getPackageName());
            this.f4081d = Integer.valueOf((strValueOf.length() != 0 ? "analytics".concat(strValueOf) : new String("analytics")).hashCode());
        }
        return this.f4081d.intValue();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    protected final void a() {
        ActivityInfo receiverInfo;
        try {
            e();
            if (be.e() <= 0 || (receiverInfo = j().getPackageManager().getReceiverInfo(new ComponentName(j(), "com.google.android.gms.analytics.AnalyticsReceiver"), 2)) == null || !receiverInfo.enabled) {
                return;
            }
            b("Receiver registered for local dispatch.");
            this.f4078a = true;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public final boolean b() {
        return this.f4078a;
    }

    public final boolean c() {
        return this.f4079b;
    }

    public final void d() {
        y();
        com.google.android.gms.common.internal.aa.a(this.f4078a, "Receiver not registered");
        long jE = be.e();
        if (jE > 0) {
            e();
            long jB = i().b() + jE;
            this.f4079b = true;
            if (Build.VERSION.SDK_INT < 24) {
                b("Scheduling upload with AlarmManager");
                this.f4080c.setInexactRepeating(2, jB, jE, f());
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
        this.f4079b = false;
        this.f4080c.cancel(f());
        if (Build.VERSION.SDK_INT >= 24) {
            JobScheduler jobScheduler = (JobScheduler) j().getSystemService("jobscheduler");
            a("Cancelling job. JobID", Integer.valueOf(g()));
            jobScheduler.cancel(g());
        }
    }
}
