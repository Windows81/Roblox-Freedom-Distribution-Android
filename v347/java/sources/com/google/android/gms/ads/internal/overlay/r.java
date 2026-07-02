package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.aw;
import com.google.android.gms.internal.ads.cm;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class r extends com.google.android.gms.internal.ads.s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AdOverlayInfoParcel f3176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Activity f3177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3178c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3179d = false;

    public r(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f3176a = adOverlayInfoParcel;
        this.f3177b = activity;
    }

    private final synchronized void a() {
        if (!this.f3179d) {
            if (this.f3176a.f3153c != null) {
                this.f3176a.f3153c.n_();
            }
            this.f3179d = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void a(int i, int i2, Intent intent) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void a(Bundle bundle) {
        boolean z = bundle != null ? bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false) : false;
        if (this.f3176a == null) {
            this.f3177b.finish();
            return;
        }
        if (z) {
            this.f3177b.finish();
            return;
        }
        if (bundle == null) {
            if (this.f3176a.f3152b != null) {
                this.f3176a.f3152b.onAdClicked();
            }
            if (this.f3177b.getIntent() != null && this.f3177b.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && this.f3176a.f3153c != null) {
                this.f3176a.f3153c.o_();
            }
        }
        aw.b();
        if (a.a(this.f3177b, this.f3176a.f3151a, this.f3176a.i)) {
            return;
        }
        this.f3177b.finish();
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void a(com.google.android.gms.b.a aVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void b(Bundle bundle) throws RemoteException {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f3178c);
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void d() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.r
    public final boolean e() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void f() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void g() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void h() throws RemoteException {
        if (this.f3178c) {
            this.f3177b.finish();
            return;
        }
        this.f3178c = true;
        if (this.f3176a.f3153c != null) {
            this.f3176a.f3153c.e();
        }
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void i() throws RemoteException {
        if (this.f3176a.f3153c != null) {
            this.f3176a.f3153c.d();
        }
        if (this.f3177b.isFinishing()) {
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void j() throws RemoteException {
        if (this.f3177b.isFinishing()) {
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void k() throws RemoteException {
        if (this.f3177b.isFinishing()) {
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.r
    public final void l() throws RemoteException {
    }
}
