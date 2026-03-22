package com.google.android.gms.internal.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class eu implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ fc f4292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ long f4293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Bundle f4294c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ Context f4295d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ dx f4296e;
    private final /* synthetic */ BroadcastReceiver.PendingResult f;

    eu(es esVar, fc fcVar, long j, Bundle bundle, Context context, dx dxVar, BroadcastReceiver.PendingResult pendingResult) {
        this.f4292a = fcVar;
        this.f4293b = j;
        this.f4294c = bundle;
        this.f4295d = context;
        this.f4296e = dxVar;
        this.f = pendingResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long jA = this.f4292a.c().h.a();
        long j = this.f4293b;
        if (jA > 0 && (j >= jA || j <= 0)) {
            j = jA - 1;
        }
        if (j > 0) {
            this.f4294c.putLong("click_timestamp", j);
        }
        this.f4294c.putString("_cis", "referrer broadcast");
        AppMeasurement.getInstance(this.f4295d).logEventInternal("auto", "_cmp", this.f4294c);
        this.f4296e.C().a("Install campaign recorded");
        BroadcastReceiver.PendingResult pendingResult = this.f;
        if (pendingResult != null) {
            pendingResult.finish();
        }
    }
}
