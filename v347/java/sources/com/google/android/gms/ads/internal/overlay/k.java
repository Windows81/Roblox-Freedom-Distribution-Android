package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.aw;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jm;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class k {
    public static void a(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.k == 4 && adOverlayInfoParcel.f3153c == null) {
            if (adOverlayInfoParcel.f3152b != null) {
                adOverlayInfoParcel.f3152b.onAdClicked();
            }
            aw.b();
            a.a(context, adOverlayInfoParcel.f3151a, adOverlayInfoParcel.i);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.m.f5787d);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        AdOverlayInfoParcel.a(intent, adOverlayInfoParcel);
        if (!com.google.android.gms.common.util.n.i()) {
            intent.addFlags(524288);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        aw.e();
        jm.a(context, intent);
    }
}
