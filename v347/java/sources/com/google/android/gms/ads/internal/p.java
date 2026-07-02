package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.iy;
import com.google.android.gms.internal.ads.jm;

/* JADX INFO: loaded from: classes.dex */
@cm
final class p extends iy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f3184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3185b;

    public p(m mVar, int i) {
        this.f3184a = mVar;
        this.f3185b = i;
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        zzaq zzaqVar = new zzaq(this.f3184a.e.J, this.f3184a.I(), this.f3184a.m, this.f3184a.n, this.f3184a.e.J ? this.f3185b : -1, this.f3184a.o, this.f3184a.e.j.L, this.f3184a.e.j.O);
        int requestedOrientation = this.f3184a.e.j.f5114b.getRequestedOrientation();
        if (requestedOrientation == -1) {
            requestedOrientation = this.f3184a.e.j.h;
        }
        jm.f5184a.post(new q(this, new AdOverlayInfoParcel(this.f3184a, this.f3184a, this.f3184a, this.f3184a.e.j.f5114b, requestedOrientation, this.f3184a.e.e, this.f3184a.e.j.A, zzaqVar)));
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void b_() {
    }
}
