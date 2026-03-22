package com.google.android.gms.internal.measurement;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.hx;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ht<T extends Context & hx> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f4511a;

    public ht(T t) {
        com.google.android.gms.common.internal.aa.a(t);
        this.f4511a = t;
    }

    private final void a(Runnable runnable) {
        fc fcVarA = fc.a(this.f4511a);
        fcVarA.p().a(new hw(this, fcVarA, runnable));
    }

    public static boolean a(Context context, boolean z) {
        com.google.android.gms.common.internal.aa.a(context);
        return iq.a(context, Build.VERSION.SDK_INT >= 24 ? "com.google.android.gms.measurement.AppMeasurementJobService" : "com.google.android.gms.measurement.AppMeasurementService");
    }

    private final dx c() {
        return fc.a(this.f4511a).q();
    }

    public final int a(final Intent intent, int i, final int i2) {
        final dx dxVarQ = fc.a(this.f4511a).q();
        if (intent == null) {
            dxVarQ.y().a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        dxVarQ.C().a("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            a(new Runnable(this, i2, dxVarQ, intent) { // from class: com.google.android.gms.internal.measurement.hu

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final ht f4512a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final int f4513b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                private final dx f4514c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private final Intent f4515d;

                {
                    this.f4512a = this;
                    this.f4513b = i2;
                    this.f4514c = dxVarQ;
                    this.f4515d = intent;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f4512a.a(this.f4513b, this.f4514c, this.f4515d);
                }
            });
        }
        return 2;
    }

    public final IBinder a(Intent intent) {
        if (intent == null) {
            c().v().a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new fe(fc.a(this.f4511a));
        }
        c().y().a("onBind received unknown action", action);
        return null;
    }

    public final void a() {
        fc.a(this.f4511a).q().C().a("Local AppMeasurementService is starting up");
    }

    final /* synthetic */ void a(int i, dx dxVar, Intent intent) {
        if (this.f4511a.a(i)) {
            dxVar.C().a("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            c().C().a("Completed wakeful intent.");
            this.f4511a.a(intent);
        }
    }

    final /* synthetic */ void a(dx dxVar, JobParameters jobParameters) {
        dxVar.C().a("AppMeasurementJobService processed last upload request.");
        this.f4511a.a(jobParameters, false);
    }

    public final boolean a(final JobParameters jobParameters) {
        final dx dxVarQ = fc.a(this.f4511a).q();
        String string = jobParameters.getExtras().getString("action");
        dxVarQ.C().a("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        a(new Runnable(this, dxVarQ, jobParameters) { // from class: com.google.android.gms.internal.measurement.hv

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final ht f4516a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final dx f4517b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final JobParameters f4518c;

            {
                this.f4516a = this;
                this.f4517b = dxVarQ;
                this.f4518c = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4516a.a(this.f4517b, this.f4518c);
            }
        });
        return true;
    }

    public final void b() {
        fc.a(this.f4511a).q().C().a("Local AppMeasurementService is shutting down");
    }

    public final boolean b(Intent intent) {
        if (intent == null) {
            c().v().a("onUnbind called with null intent");
            return true;
        }
        c().C().a("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    public final void c(Intent intent) {
        if (intent == null) {
            c().v().a("onRebind called with null intent");
        } else {
            c().C().a("onRebind called. action", intent.getAction());
        }
    }
}
