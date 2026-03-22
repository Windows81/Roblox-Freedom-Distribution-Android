package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.google.android.gms.internal.measurement.bv;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class br<T extends Context & bv> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Boolean f5933c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f5934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final T f5935b;

    public br(T t) {
        com.google.android.gms.common.internal.w.a(t);
        this.f5935b = t;
        this.f5934a = new Handler();
    }

    private final void a(Runnable runnable) {
        r.a(this.f5935b).h().a((ax) new bu(this, runnable));
    }

    public static boolean a(Context context) {
        com.google.android.gms.common.internal.w.a(context);
        if (f5933c != null) {
            return f5933c.booleanValue();
        }
        boolean zA = ca.a(context, "com.google.android.gms.analytics.AnalyticsService");
        f5933c = Boolean.valueOf(zA);
        return zA;
    }

    public final int a(Intent intent, int i, final int i2) {
        try {
            synchronized (bq.f5930a) {
                com.google.android.gms.c.b bVar = bq.f5931b;
                if (bVar != null && bVar.b()) {
                    bVar.a();
                }
            }
        } catch (SecurityException e) {
        }
        final bj bjVarE = r.a(this.f5935b).e();
        if (intent == null) {
            bjVarE.e("AnalyticsService started with null intent");
        } else {
            String action = intent.getAction();
            bjVarE.a("Local AnalyticsService called. startId, action", Integer.valueOf(i2), action);
            if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
                a(new Runnable(this, i2, bjVarE) { // from class: com.google.android.gms.internal.measurement.bs

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    private final br f5936a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    private final int f5937b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    private final bj f5938c;

                    {
                        this.f5936a = this;
                        this.f5937b = i2;
                        this.f5938c = bjVarE;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f5936a.a(this.f5937b, this.f5938c);
                    }
                });
            }
        }
        return 2;
    }

    public final void a() {
        r.a(this.f5935b).e().b("Local AnalyticsService is starting up");
    }

    final /* synthetic */ void a(int i, bj bjVar) {
        if (this.f5935b.a(i)) {
            bjVar.b("Local AnalyticsService processed last dispatch request");
        }
    }

    final /* synthetic */ void a(bj bjVar, JobParameters jobParameters) {
        bjVar.b("AnalyticsJobService processed last dispatch request");
        this.f5935b.a(jobParameters, false);
    }

    @TargetApi(24)
    public final boolean a(final JobParameters jobParameters) {
        final bj bjVarE = r.a(this.f5935b).e();
        String string = jobParameters.getExtras().getString("action");
        bjVarE.a("Local AnalyticsJobService called. action", string);
        if (!"com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(string)) {
            return true;
        }
        a(new Runnable(this, bjVarE, jobParameters) { // from class: com.google.android.gms.internal.measurement.bt

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final br f5939a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final bj f5940b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final JobParameters f5941c;

            {
                this.f5939a = this;
                this.f5940b = bjVarE;
                this.f5941c = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5939a.a(this.f5940b, this.f5941c);
            }
        });
        return true;
    }

    public final void b() {
        r.a(this.f5935b).e().b("Local AnalyticsService is shutting down");
    }
}
