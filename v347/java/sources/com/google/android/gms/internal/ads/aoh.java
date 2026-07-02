package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
public class aoh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("mLock")
    private apr f4321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f4322b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final anz f4323c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final any f4324d;
    private final aqp e;
    private final awb f;
    private final gl g;
    private final q h;
    private final awc i;

    abstract class a<T> {
        a() {
        }

        protected abstract T a() throws RemoteException;

        protected abstract T a(apr aprVar) throws RemoteException;

        protected final T b() {
            apr aprVarB = aoh.this.b();
            if (aprVarB == null) {
                mj.e("ClientApi class cannot be loaded.");
                return null;
            }
            try {
                return a(aprVarB);
            } catch (RemoteException e) {
                mj.c("Cannot invoke local loader using ClientApi class", e);
                return null;
            }
        }

        protected final T c() {
            try {
                return a();
            } catch (RemoteException e) {
                mj.c("Cannot invoke remote loader", e);
                return null;
            }
        }
    }

    public aoh(anz anzVar, any anyVar, aqp aqpVar, awb awbVar, gl glVar, q qVar, awc awcVar) {
        this.f4323c = anzVar;
        this.f4324d = anyVar;
        this.e = aqpVar;
        this.f = awbVar;
        this.g = glVar;
        this.h = qVar;
        this.i = awcVar;
    }

    private static apr a() {
        apr aprVarAsInterface;
        try {
            Object objNewInstance = aoh.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").newInstance();
            if (objNewInstance instanceof IBinder) {
                aprVarAsInterface = aps.asInterface((IBinder) objNewInstance);
            } else {
                mj.e("ClientApi class is not an instance of IBinder");
                aprVarAsInterface = null;
            }
            return aprVarAsInterface;
        } catch (Exception e) {
            mj.c("Failed to instantiate ClientApi class.", e);
            return null;
        }
    }

    static <T> T a(Context context, boolean z, a<T> aVar) {
        boolean z2 = z;
        if (!z2) {
            aoo.a();
            if (!ly.c(context)) {
                mj.b("Google Play Services is not available");
                z2 = true;
            }
        }
        aoo.a();
        int iE = ly.e(context);
        aoo.a();
        boolean z3 = iE <= ly.d(context) ? z2 : true;
        aro.a(context);
        if (((Boolean) aoo.f().a(aro.f4403de)).booleanValue()) {
            z3 = false;
        }
        if (z3) {
            T tB = aVar.b();
            return tB == null ? aVar.c() : tB;
        }
        T tC = aVar.c();
        return tC == null ? aVar.b() : tC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        aoo.a().a(context, (String) null, "gmob-apps", bundle, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final apr b() {
        apr aprVar;
        synchronized (this.f4322b) {
            if (this.f4321a == null) {
                this.f4321a = a();
            }
            aprVar = this.f4321a;
        }
        return aprVar;
    }

    public final apa a(Context context, String str, bbu bbuVar) {
        return (apa) a(context, false, (a) new aol(this, context, str, bbuVar));
    }

    public final r a(Activity activity) {
        boolean booleanExtra = false;
        Intent intent = activity.getIntent();
        if (intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            booleanExtra = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        } else {
            mj.c("useClientJar flag not found in activity intent extras.");
        }
        return (r) a(activity, booleanExtra, new aon(this, activity));
    }
}
