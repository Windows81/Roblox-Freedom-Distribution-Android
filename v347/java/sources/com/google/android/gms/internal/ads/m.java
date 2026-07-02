package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class m extends n implements com.google.android.gms.ads.internal.gmsg.ae<qd> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final qd f5291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f5292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WindowManager f5293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final aqz f5294d;
    private DisplayMetrics e;
    private float f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;

    public m(qd qdVar, Context context, aqz aqzVar) {
        super(qdVar);
        this.g = -1;
        this.h = -1;
        this.j = -1;
        this.k = -1;
        this.l = -1;
        this.m = -1;
        this.f5291a = qdVar;
        this.f5292b = context;
        this.f5294d = aqzVar;
        this.f5293c = (WindowManager) context.getSystemService("window");
    }

    public final void a(int i, int i2) {
        int i3 = this.f5292b instanceof Activity ? com.google.android.gms.ads.internal.aw.e().c((Activity) this.f5292b)[0] : 0;
        if (this.f5291a.t() == null || !this.f5291a.t().d()) {
            aoo.a();
            this.l = ly.b(this.f5292b, this.f5291a.getWidth());
            aoo.a();
            this.m = ly.b(this.f5292b, this.f5291a.getHeight());
        }
        b(i, i2 - i3, this.l, this.m);
        this.f5291a.v().a(i, i2);
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        this.e = new DisplayMetrics();
        Display defaultDisplay = this.f5293c.getDefaultDisplay();
        defaultDisplay.getMetrics(this.e);
        this.f = this.e.density;
        this.i = defaultDisplay.getRotation();
        aoo.a();
        this.g = ly.b(this.e, this.e.widthPixels);
        aoo.a();
        this.h = ly.b(this.e, this.e.heightPixels);
        Activity activityD = this.f5291a.d();
        if (activityD == null || activityD.getWindow() == null) {
            this.j = this.g;
            this.k = this.h;
        } else {
            com.google.android.gms.ads.internal.aw.e();
            int[] iArrA = jm.a(activityD);
            aoo.a();
            this.j = ly.b(this.e, iArrA[0]);
            aoo.a();
            this.k = ly.b(this.e, iArrA[1]);
        }
        if (this.f5291a.t().d()) {
            this.l = this.g;
            this.m = this.h;
        } else {
            this.f5291a.measure(0, 0);
        }
        a(this.g, this.h, this.j, this.k, this.f, this.i);
        this.f5291a.a("onDeviceFeaturesReceived", new j(new l().b(this.f5294d.a()).a(this.f5294d.b()).c(this.f5294d.d()).d(this.f5294d.c()).e(true)).a());
        int[] iArr = new int[2];
        this.f5291a.getLocationOnScreen(iArr);
        aoo.a();
        int iB = ly.b(this.f5292b, iArr[0]);
        aoo.a();
        a(iB, ly.b(this.f5292b, iArr[1]));
        if (jd.a(2)) {
            jd.d("Dispatching Ready Event.");
        }
        b(this.f5291a.k().f5784a);
    }
}
