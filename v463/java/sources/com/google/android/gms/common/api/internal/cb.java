package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import java.lang.ref.WeakReference;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cb implements IBinder.DeathRecipient, cc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<BasePendingResult<?>> f3580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference<com.google.android.gms.common.api.s> f3581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference<IBinder> f3582c;

    private cb(BasePendingResult<?> basePendingResult, com.google.android.gms.common.api.s sVar, IBinder iBinder) {
        this.f3581b = new WeakReference<>(sVar);
        this.f3580a = new WeakReference<>(basePendingResult);
        this.f3582c = new WeakReference<>(iBinder);
    }

    /* synthetic */ cb(BasePendingResult basePendingResult, com.google.android.gms.common.api.s sVar, IBinder iBinder, ca caVar) {
        this(basePendingResult, null, iBinder);
    }

    private final void a() {
        BasePendingResult<?> basePendingResult = this.f3580a.get();
        com.google.android.gms.common.api.s sVar = this.f3581b.get();
        if (sVar != null && basePendingResult != null) {
            sVar.a(basePendingResult.c().intValue());
        }
        IBinder iBinder = this.f3582c.get();
        if (iBinder != null) {
            try {
                iBinder.unlinkToDeath(this, 0);
            } catch (NoSuchElementException unused) {
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.cc
    public final void a(BasePendingResult<?> basePendingResult) {
        a();
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        a();
    }
}
