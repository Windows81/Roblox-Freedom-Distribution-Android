package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class alv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Runnable f4193a = new alw(this);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f4194b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private amb f4195c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("mLock")
    private Context f4196d;

    @GuardedBy("mLock")
    private ame e;

    static /* synthetic */ amb a(alv alvVar, amb ambVar) {
        alvVar.f4195c = null;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b() {
        synchronized (this.f4194b) {
            if (this.f4196d == null || this.f4195c != null) {
                return;
            }
            this.f4195c = new amb(this.f4196d, com.google.android.gms.ads.internal.aw.t().a(), new aly(this), new alz(this));
            this.f4195c.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c() {
        synchronized (this.f4194b) {
            if (this.f4195c == null) {
                return;
            }
            if (this.f4195c.b() || this.f4195c.c()) {
                this.f4195c.a();
            }
            this.f4195c = null;
            this.e = null;
            Binder.flushPendingCommands();
        }
    }

    public final zzhi a(zzhl zzhlVar) {
        zzhi zzhiVar;
        synchronized (this.f4194b) {
            if (this.e == null) {
                zzhiVar = new zzhi();
            } else {
                try {
                    zzhiVar = this.e.a(zzhlVar);
                } catch (RemoteException e) {
                    jd.b("Unable to call into cache service.", e);
                    zzhiVar = new zzhi();
                }
            }
        }
        return zzhiVar;
    }

    public final void a() {
        if (((Boolean) aoo.f().a(aro.cF)).booleanValue()) {
            synchronized (this.f4194b) {
                b();
                com.google.android.gms.ads.internal.aw.e();
                jm.f5184a.removeCallbacks(this.f4193a);
                com.google.android.gms.ads.internal.aw.e();
                jm.f5184a.postDelayed(this.f4193a, ((Long) aoo.f().a(aro.cG)).longValue());
            }
        }
    }

    public final void a(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.f4194b) {
            if (this.f4196d != null) {
                return;
            }
            this.f4196d = context.getApplicationContext();
            if (((Boolean) aoo.f().a(aro.cE)).booleanValue()) {
                b();
            } else {
                if (((Boolean) aoo.f().a(aro.cD)).booleanValue()) {
                    com.google.android.gms.ads.internal.aw.h().a(new alx(this));
                }
            }
        }
    }
}
