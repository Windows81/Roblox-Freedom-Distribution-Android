package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class akx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4142a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mActivityTrackerLock")
    private aky f4143b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mActivityTrackerLock")
    private boolean f4144c = false;

    public final Activity a() {
        Activity activityA = null;
        synchronized (this.f4142a) {
            if (com.google.android.gms.common.util.n.b() && this.f4143b != null) {
                activityA = this.f4143b.a();
            }
        }
        return activityA;
    }

    public final void a(Context context) {
        synchronized (this.f4142a) {
            if (!this.f4144c) {
                if (!com.google.android.gms.common.util.n.b()) {
                    return;
                }
                if (!((Boolean) aoo.f().a(aro.aG)).booleanValue()) {
                    return;
                }
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                if (application == null) {
                    jd.e("Can not cast Context to Application");
                    return;
                }
                if (this.f4143b == null) {
                    this.f4143b = new aky();
                }
                this.f4143b.a(application, context);
                this.f4144c = true;
            }
        }
    }

    public final void a(ala alaVar) {
        synchronized (this.f4142a) {
            if (com.google.android.gms.common.util.n.b()) {
                if (((Boolean) aoo.f().a(aro.aG)).booleanValue()) {
                    if (this.f4143b == null) {
                        this.f4143b = new aky();
                    }
                    this.f4143b.a(alaVar);
                }
            }
        }
    }

    public final Context b() {
        Context contextB = null;
        synchronized (this.f4142a) {
            if (com.google.android.gms.common.util.n.b() && this.f4143b != null) {
                contextB = this.f4143b.b();
            }
        }
        return contextB;
    }
}
