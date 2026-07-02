package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.b;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
final class u implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ConnectionResult f3402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ b.c f3403b;

    u(b.c cVar, ConnectionResult connectionResult) {
        this.f3403b = cVar;
        this.f3402a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f3402a.b()) {
            ((b.a) b.this.m.get(this.f3403b.f3380c)).a(this.f3402a);
            return;
        }
        b.c.a(this.f3403b, true);
        if (this.f3403b.f3379b.d()) {
            this.f3403b.a();
        } else {
            this.f3403b.f3379b.a(null, Collections.emptySet());
        }
    }
}
