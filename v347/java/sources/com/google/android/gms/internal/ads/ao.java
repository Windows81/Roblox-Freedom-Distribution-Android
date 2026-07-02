package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class ao {
    public static kf a(Context context, com.google.android.gms.ads.internal.a aVar, ij ijVar, agv agvVar, qd qdVar, bbu bbuVar, ap apVar, asb asbVar) {
        kf awVar;
        zzaej zzaejVar = ijVar.f5118b;
        if (zzaejVar.g) {
            awVar = new au(context, ijVar, bbuVar, apVar, asbVar, qdVar);
        } else if (zzaejVar.s || (aVar instanceof com.google.android.gms.ads.internal.ad)) {
            awVar = (zzaejVar.s && (aVar instanceof com.google.android.gms.ads.internal.ad)) ? new aw(context, (com.google.android.gms.ads.internal.ad) aVar, ijVar, agvVar, apVar, asbVar) : new ar(ijVar, apVar);
        } else {
            awVar = (((Boolean) aoo.f().a(aro.ah)).booleanValue() && com.google.android.gms.common.util.n.g() && !com.google.android.gms.common.util.n.i() && qdVar != null && qdVar.t().d()) ? new at(context, ijVar, qdVar, apVar) : new aq(context, ijVar, qdVar, apVar);
        }
        String strValueOf = String.valueOf(awVar.getClass().getName());
        jd.b(strValueOf.length() != 0 ? "AdRenderer: ".concat(strValueOf) : new String("AdRenderer: "));
        awVar.c();
        return awVar;
    }
}
