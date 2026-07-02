package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class bam {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4716a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private bat f4717b;

    public final bat a(Context context, zzang zzangVar) {
        bat batVar;
        synchronized (this.f4716a) {
            if (this.f4717b == null) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    context = applicationContext;
                }
                this.f4717b = new bat(context, zzangVar, (String) aoo.f().a(aro.f4399a));
            }
            batVar = this.f4717b;
        }
        return batVar;
    }
}
