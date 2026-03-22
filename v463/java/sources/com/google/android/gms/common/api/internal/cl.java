package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cl implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cj f3608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ck f3609b;

    cl(cj cjVar, ck ckVar) {
        this.f3608a = cjVar;
        this.f3609b = ckVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f3608a.f3602b) {
            ConnectionResult connectionResultB = this.f3609b.b();
            if (connectionResultB.a()) {
                this.f3608a.f3471a.startActivityForResult(GoogleApiActivity.a(this.f3608a.a(), connectionResultB.d(), this.f3609b.a(), false), 1);
                return;
            }
            if (this.f3608a.f3604d.a(connectionResultB.c())) {
                this.f3608a.f3604d.a(this.f3608a.a(), this.f3608a.f3471a, connectionResultB.c(), 2, this.f3608a);
            } else if (connectionResultB.c() != 18) {
                this.f3608a.a(connectionResultB, this.f3609b.a());
            } else {
                this.f3608a.f3604d.a(this.f3608a.a().getApplicationContext(), new cm(this, this.f3608a.f3604d.a(this.f3608a.a(), this.f3608a)));
            }
        }
    }
}
