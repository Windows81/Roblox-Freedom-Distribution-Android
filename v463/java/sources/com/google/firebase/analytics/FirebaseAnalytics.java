package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.f.g;
import com.google.android.gms.internal.measurement.fc;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class FirebaseAnalytics {
    private final fc zzacw;

    public static class a {
    }

    public static class b {
    }

    public static class c {
    }

    public FirebaseAnalytics(fc fcVar) {
        aa.a(fcVar);
        this.zzacw = fcVar;
    }

    public static FirebaseAnalytics getInstance(Context context) {
        return fc.a(context).l();
    }

    public final g<String> getAppInstanceId() {
        return this.zzacw.h().A();
    }

    public final void logEvent(String str, Bundle bundle) {
        this.zzacw.i().logEvent(str, bundle);
    }

    public final void resetAnalyticsData() {
        this.zzacw.h().C();
    }

    public final void setAnalyticsCollectionEnabled(boolean z) {
        this.zzacw.i().setMeasurementEnabled(z);
    }

    public final void setCurrentScreen(Activity activity, String str, String str2) {
        this.zzacw.r().a(activity, str, str2);
    }

    public final void setMinimumSessionDuration(long j) {
        this.zzacw.i().setMinimumSessionDuration(j);
    }

    public final void setSessionTimeoutDuration(long j) {
        this.zzacw.i().setSessionTimeoutDuration(j);
    }

    public final void setUserId(String str) {
        this.zzacw.i().setUserPropertyInternal("app", "_id", str);
    }

    public final void setUserProperty(String str, String str2) {
        this.zzacw.i().setUserProperty(str, str2);
    }
}
