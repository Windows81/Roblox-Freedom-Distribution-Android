package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ak implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ai f3364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final aj f3365b;

    ak(ai aiVar, aj ajVar) {
        this.f3364a = aiVar;
        this.f3365b = ajVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f3364a.f3359b) {
            ConnectionResult connectionResultB = this.f3365b.b();
            if (connectionResultB.a()) {
                this.f3364a.f3338a.a(GoogleApiActivity.a(this.f3364a.a(), connectionResultB.d(), this.f3365b.a(), false), 1);
                return;
            }
            if (this.f3364a.f3361d.a(connectionResultB.c())) {
                this.f3364a.f3361d.a(this.f3364a.a(), this.f3364a.f3338a, connectionResultB.c(), 2, this.f3364a);
            } else if (connectionResultB.c() != 18) {
                this.f3364a.a(connectionResultB, this.f3365b.a());
            } else {
                this.f3364a.f3361d.a(this.f3364a.a().getApplicationContext(), new al(this, this.f3364a.f3361d.a(this.f3364a.a(), this.f3364a)));
            }
        }
    }
}
