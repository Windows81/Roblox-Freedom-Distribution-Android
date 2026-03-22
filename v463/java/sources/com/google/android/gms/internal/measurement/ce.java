package com.google.android.gms.internal.measurement;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.google.android.gms.internal.measurement.ci;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ce<T extends Context & ci> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Boolean f4133c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f4134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final T f4135b;

    public ce(T t) {
        com.google.android.gms.common.internal.aa.a(t);
        this.f4135b = t;
        this.f4134a = new Handler();
    }

    private final void a(Runnable runnable) {
        ae.a(this.f4135b).h().a((bk) new ch(this, runnable));
    }

    public static boolean a(Context context) {
        com.google.android.gms.common.internal.aa.a(context);
        Boolean bool = f4133c;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean zA = cn.a(context, "com.google.android.gms.analytics.AnalyticsService");
        f4133c = Boolean.valueOf(zA);
        return zA;
    }

    public final int a(Intent intent, int i, final int i2) {
        try {
            synchronized (cd.f4130a) {
                com.google.android.gms.e.a aVar = cd.f4131b;
                if (aVar != null && aVar.b()) {
                    aVar.a();
                }
            }
        } catch (SecurityException unused) {
        }
        final bw bwVarE = ae.a(this.f4135b).e();
        if (intent == null) {
            bwVarE.e("AnalyticsService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        bwVarE.a("Local AnalyticsService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
            a(new Runnable(this, i2, bwVarE) { // from class: com.google.android.gms.internal.measurement.cf

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final ce f4136a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final int f4137b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                private final bw f4138c;

                {
                    this.f4136a = this;
                    this.f4137b = i2;
                    this.f4138c = bwVarE;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f4136a.a(this.f4137b, this.f4138c);
                }
            });
        }
        return 2;
    }

    public final void a() {
        ae.a(this.f4135b).e().b("Local AnalyticsService is starting up");
    }

    final /* synthetic */ void a(int i, bw bwVar) {
        if (this.f4135b.a(i)) {
            bwVar.b("Local AnalyticsService processed last dispatch request");
        }
    }

    final /* synthetic */ void a(bw bwVar, JobParameters jobParameters) {
        bwVar.b("AnalyticsJobService processed last dispatch request");
        this.f4135b.a(jobParameters, false);
    }

    public final boolean a(final JobParameters jobParameters) {
        final bw bwVarE = ae.a(this.f4135b).e();
        String string = jobParameters.getExtras().getString("action");
        bwVarE.a("Local AnalyticsJobService called. action", string);
        if (!"com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(string)) {
            return true;
        }
        a(new Runnable(this, bwVarE, jobParameters) { // from class: com.google.android.gms.internal.measurement.cg

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final ce f4139a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final bw f4140b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final JobParameters f4141c;

            {
                this.f4139a = this;
                this.f4140b = bwVarE;
                this.f4141c = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4139a.a(this.f4140b, this.f4141c);
            }
        });
        return true;
    }

    public final void b() {
        ae.a(this.f4135b).e().b("Local AnalyticsService is shutting down");
    }
}
