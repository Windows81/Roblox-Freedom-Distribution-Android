package com.google.android.gms.internal.measurement;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ie extends ih {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AlarmManager f4538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final df f4539c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f4540d;

    protected ie(ii iiVar) {
        super(iiVar);
        this.f4538b = (AlarmManager) k().getSystemService("alarm");
        this.f4539c = new Cif(this, iiVar.J(), iiVar);
    }

    private final void x() {
        JobScheduler jobScheduler = (JobScheduler) k().getSystemService("jobscheduler");
        q().C().a("Cancelling job. JobID", Integer.valueOf(y()));
        jobScheduler.cancel(y());
    }

    private final int y() {
        if (this.f4540d == null) {
            String strValueOf = String.valueOf(k().getPackageName());
            this.f4540d = Integer.valueOf((strValueOf.length() != 0 ? "measurement".concat(strValueOf) : new String("measurement")).hashCode());
        }
        return this.f4540d.intValue();
    }

    private final PendingIntent z() {
        Intent className = new Intent().setClassName(k(), "com.google.android.gms.measurement.AppMeasurementReceiver");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        return PendingIntent.getBroadcast(k(), 0, className, 0);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    public final void a(long j) {
        N();
        if (!es.a(k())) {
            q().B().a("Receiver not registered/enabled");
        }
        if (!ht.a(k(), false)) {
            q().B().a("Service not registered/enabled");
        }
        u();
        long jB = j().b() + j;
        if (j < Math.max(0L, dn.y.b().longValue()) && !this.f4539c.b()) {
            q().C().a("Scheduling upload with DelayedRunnable");
            this.f4539c.a(j);
        }
        if (Build.VERSION.SDK_INT < 24) {
            q().C().a("Scheduling upload with AlarmManager");
            this.f4538b.setInexactRepeating(2, jB, Math.max(dn.t.b().longValue(), j), z());
            return;
        }
        q().C().a("Scheduling upload with JobScheduler");
        ComponentName componentName = new ComponentName(k(), "com.google.android.gms.measurement.AppMeasurementJobService");
        JobScheduler jobScheduler = (JobScheduler) k().getSystemService("jobscheduler");
        JobInfo.Builder builder = new JobInfo.Builder(y(), componentName);
        builder.setMinimumLatency(j);
        builder.setOverrideDeadline(j << 1);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        builder.setExtras(persistableBundle);
        JobInfo jobInfoBuild = builder.build();
        q().C().a("Scheduling job. JobID", Integer.valueOf(y()));
        jobScheduler.schedule(jobInfoBuild);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    @Override // com.google.android.gms.internal.measurement.ig
    public final /* bridge */ /* synthetic */ db c_() {
        return super.c_();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cp d() {
        return super.d();
    }

    @Override // com.google.android.gms.internal.measurement.ig
    public final /* bridge */ /* synthetic */ cv d_() {
        return super.d_();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gb e() {
        return super.e();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ds f() {
        return super.f();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dh g() {
        return super.g();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gz h() {
        return super.h();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gw i() {
        return super.i();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ com.google.android.gms.common.util.d j() {
        return super.j();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ Context k() {
        return super.k();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dt l() {
        return super.l();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dv m() {
        return super.m();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ iq n() {
        return super.n();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ hy o() {
        return super.o();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ ex p() {
        return super.p();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ dx q() {
        return super.q();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ei r() {
        return super.r();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cy s() {
        return super.s();
    }

    @Override // com.google.android.gms.internal.measurement.ih
    protected final boolean t() {
        this.f4538b.cancel(z());
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        x();
        return false;
    }

    public final void u() {
        N();
        this.f4538b.cancel(z());
        this.f4539c.c();
        if (Build.VERSION.SDK_INT >= 24) {
            x();
        }
    }
}
