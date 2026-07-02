package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.ads.bcg;
import com.google.android.gms.internal.ads.bck;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.qd;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class x implements com.google.android.gms.ads.internal.gmsg.ae<qd> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bcg f3196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ d f3197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ bck f3198c;

    x(bcg bcgVar, d dVar, bck bckVar) {
        this.f3196a = bcgVar;
        this.f3197b = dVar;
        this.f3198c = bckVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        qd qdVar2 = qdVar;
        View view = qdVar2.getView();
        if (view != null) {
            try {
                if (this.f3196a != null) {
                    if (this.f3196a.k()) {
                        s.b(qdVar2);
                    } else {
                        this.f3196a.a(com.google.android.gms.b.b.a(view));
                        this.f3197b.f3080a.onAdClicked();
                    }
                } else if (this.f3198c != null) {
                    if (this.f3198c.i()) {
                        s.b(qdVar2);
                    } else {
                        this.f3198c.a(com.google.android.gms.b.b.a(view));
                        this.f3197b.f3080a.onAdClicked();
                    }
                }
            } catch (RemoteException e) {
                jd.c("Unable to call handleClick on mapper", e);
            }
        }
    }
}
