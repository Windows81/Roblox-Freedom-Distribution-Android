package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.util.Log;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class f extends androidx.f.b.a<Void> implements com.google.android.gms.common.api.internal.l {
    private Semaphore f;
    private Set<com.google.android.gms.common.api.f> g;

    public f(Context context, Set<com.google.android.gms.common.api.f> set) {
        super(context);
        this.f = new Semaphore(0);
        this.g = set;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // androidx.f.b.a
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public final Void d() {
        Iterator<com.google.android.gms.common.api.f> it = this.g.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().a(this)) {
                i++;
            }
        }
        try {
            this.f.tryAcquire(i, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e2) {
            Log.i("GACSignInLoader", "Unexpected InterruptedException", e2);
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override // com.google.android.gms.common.api.internal.l
    public final void h() {
        this.f.release();
    }

    @Override // androidx.f.b.c
    protected final void i() {
        this.f.drainPermits();
        s();
    }
}
