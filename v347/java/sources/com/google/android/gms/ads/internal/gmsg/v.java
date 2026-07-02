package com.google.android.gms.ads.internal.gmsg;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.aw;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.qd;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class v implements ae<qd> {
    v() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        qd qdVar2 = qdVar;
        WindowManager windowManager = (WindowManager) qdVar2.getContext().getSystemService("window");
        aw.e();
        DisplayMetrics displayMetricsA = jm.a(windowManager);
        int i = displayMetricsA.widthPixels;
        int i2 = displayMetricsA.heightPixels;
        int[] iArr = new int[2];
        HashMap map2 = new HashMap();
        ((View) qdVar2).getLocationInWindow(iArr);
        map2.put("xInPixels", Integer.valueOf(iArr[0]));
        map2.put("yInPixels", Integer.valueOf(iArr[1]));
        map2.put("windowWidthInPixels", Integer.valueOf(i));
        map2.put("windowHeightInPixels", Integer.valueOf(i2));
        qdVar2.a("locationReady", map2);
        jd.e("GET LOCATION COMPILED");
    }
}
