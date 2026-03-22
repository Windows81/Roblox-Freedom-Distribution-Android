package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.ConditionVariable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class arm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4393a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConditionVariable f4394b = new ConditionVariable();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f4395c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SharedPreferences f4396d = null;
    private Context e;

    public final <T> T a(are<T> areVar) {
        if (!this.f4394b.block(5000L)) {
            throw new IllegalStateException("Flags.initialize() was not called!");
        }
        if (!this.f4395c || this.f4396d == null) {
            synchronized (this.f4393a) {
                if (!this.f4395c || this.f4396d == null) {
                    return areVar.b();
                }
            }
        }
        return (T) lp.a(this.e, new arn(this, areVar));
    }

    public final void a(Context context) {
        if (this.f4395c) {
            return;
        }
        synchronized (this.f4393a) {
            if (this.f4395c) {
                return;
            }
            this.e = context.getApplicationContext() == null ? context : context.getApplicationContext();
            try {
                Context contextE = com.google.android.gms.common.k.e(context);
                if (contextE != null || context == null) {
                    context = contextE;
                } else {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                }
                if (context == null) {
                    return;
                }
                aoo.d();
                this.f4396d = context.getSharedPreferences("google_ads_flags", 0);
                this.f4395c = true;
            } finally {
                this.f4394b.open();
            }
        }
    }
}
