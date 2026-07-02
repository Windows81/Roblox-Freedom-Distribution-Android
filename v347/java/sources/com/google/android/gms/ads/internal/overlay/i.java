package com.google.android.gms.ads.internal.overlay;

import android.graphics.Bitmap;
import com.google.android.gms.ads.internal.aw;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.iy;
import com.google.android.gms.internal.ads.jm;

/* JADX INFO: loaded from: classes.dex */
@cm
final class i extends iy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f3167a;

    private i(c cVar) {
        this.f3167a = cVar;
    }

    /* synthetic */ i(c cVar, e eVar) {
        this(cVar);
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        Bitmap bitmapA = aw.y().a(Integer.valueOf(this.f3167a.f3156b.o.e));
        if (bitmapA != null) {
            jm.f5184a.post(new j(this, aw.g().a(this.f3167a.f3155a, bitmapA, this.f3167a.f3156b.o.f3207c, this.f3167a.f3156b.o.f3208d)));
        }
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void b_() {
    }
}
