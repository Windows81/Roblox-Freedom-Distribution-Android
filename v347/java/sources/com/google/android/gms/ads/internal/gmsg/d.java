package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.ads.internal.bu;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.bef;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.qd;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class d implements ae<qd> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<String, Integer> f3107d = com.google.android.gms.common.util.e.a((Object[]) new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, (Object[]) new Integer[]{1, 2, 3, 4, 5, 6, 7});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final bu f3108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.internal.ads.d f3109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.internal.ads.o f3110c;

    public d(bu buVar, com.google.android.gms.internal.ads.d dVar, com.google.android.gms.internal.ads.o oVar) {
        this.f3108a = buVar;
        this.f3109b = dVar;
        this.f3110c = oVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        qd qdVar2 = qdVar;
        int iIntValue = f3107d.get((String) map.get("a")).intValue();
        if (iIntValue != 5 && iIntValue != 7 && this.f3108a != null && !this.f3108a.b()) {
            this.f3108a.a(null);
        }
        switch (iIntValue) {
            case 1:
                this.f3109b.a((Map<String, String>) map);
                break;
            case 2:
            default:
                jd.d("Unknown MRAID command called.");
                break;
            case 3:
                new com.google.android.gms.internal.ads.g(qdVar2, map).a();
                break;
            case 4:
                new bef(qdVar2, map).a();
                break;
            case 5:
                new com.google.android.gms.internal.ads.f(qdVar2, map).a();
                break;
            case 6:
                this.f3109b.a(true);
                break;
            case 7:
                if (((Boolean) aoo.f().a(aro.M)).booleanValue()) {
                    this.f3110c.K();
                }
                break;
        }
    }
}
