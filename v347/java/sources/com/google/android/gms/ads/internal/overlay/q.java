package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class q extends c {
    public q(Activity activity) {
        super(activity);
    }

    @Override // com.google.android.gms.ads.internal.overlay.c, com.google.android.gms.internal.ads.r
    public final void a(Bundle bundle) {
        jd.a("AdOverlayParcel is null or does not contain valid overlay type.");
        this.f3158d = 3;
        this.f3155a.finish();
    }
}
