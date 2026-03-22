package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.d;
import java.util.Collections;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class bf implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ConnectionResult f3531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ d.c f3532b;

    bf(d.c cVar, ConnectionResult connectionResult) {
        this.f3532b = cVar;
        this.f3531a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f3531a.b()) {
            ((d.a) d.this.m.get(this.f3532b.f3649c)).a(this.f3531a);
            return;
        }
        d.c.a(this.f3532b, true);
        if (this.f3532b.f3648b.j()) {
            this.f3532b.a();
        } else {
            this.f3532b.f3648b.a(null, Collections.emptySet());
        }
    }
}
