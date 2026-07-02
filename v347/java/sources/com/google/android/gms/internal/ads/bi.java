package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bi {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f4849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final agv f4850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ij f4851d;
    private final asb e;
    private final com.google.android.gms.ads.internal.ad f;
    private ViewTreeObserver.OnGlobalLayoutListener g;
    private ViewTreeObserver.OnScrollChangedListener h;
    private final DisplayMetrics i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4848a = new Object();

    @GuardedBy("mLock")
    private int k = -1;

    @GuardedBy("mLock")
    private int l = -1;
    private ln j = new ln(200);

    public bi(Context context, agv agvVar, ij ijVar, asb asbVar, com.google.android.gms.ads.internal.ad adVar) {
        this.f4849b = context;
        this.f4850c = agvVar;
        this.f4851d = ijVar;
        this.e = asbVar;
        this.f = adVar;
        com.google.android.gms.ads.internal.aw.e();
        this.i = jm.a((WindowManager) context.getSystemService("window"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(WeakReference<qd> weakReference, boolean z) {
        qd qdVar;
        if (weakReference == null || (qdVar = weakReference.get()) == null || qdVar.getView() == null) {
            return;
        }
        if (!z || this.j.a()) {
            int[] iArr = new int[2];
            qdVar.getView().getLocationOnScreen(iArr);
            aoo.a();
            int iB = ly.b(this.i, iArr[0]);
            aoo.a();
            int iB2 = ly.b(this.i, iArr[1]);
            synchronized (this.f4848a) {
                if (this.k != iB || this.l != iB2) {
                    this.k = iB;
                    this.l = iB2;
                    qdVar.v().a(this.k, this.l, !z);
                }
            }
        }
    }

    final /* synthetic */ void a(no noVar, qd qdVar, boolean z) {
        this.f.Q();
        noVar.b(qdVar);
    }

    final /* synthetic */ void a(final JSONObject jSONObject, final no noVar) {
        try {
            com.google.android.gms.ads.internal.aw.f();
            final qd qdVarA = qk.a(this.f4849b, rr.a(), "native-video", false, false, this.f4850c, this.f4851d.f5117a.k, this.e, null, this.f.h(), this.f4851d.i);
            qdVarA.a(rr.b());
            this.f.a(qdVarA);
            WeakReference weakReference = new WeakReference(qdVarA);
            rl rlVarV = qdVarA.v();
            if (this.g == null) {
                this.g = new bo(this, weakReference);
            }
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.g;
            if (this.h == null) {
                this.h = new bp(this, weakReference);
            }
            rlVarV.a(onGlobalLayoutListener, this.h);
            qdVarA.a("/video", com.google.android.gms.ads.internal.gmsg.o.l);
            qdVarA.a("/videoMeta", com.google.android.gms.ads.internal.gmsg.o.m);
            qdVarA.a("/precache", new ps());
            qdVarA.a("/delayPageLoaded", com.google.android.gms.ads.internal.gmsg.o.p);
            qdVarA.a("/instrument", com.google.android.gms.ads.internal.gmsg.o.n);
            qdVarA.a("/log", com.google.android.gms.ads.internal.gmsg.o.g);
            qdVarA.a("/videoClicked", com.google.android.gms.ads.internal.gmsg.o.h);
            qdVarA.a("/trackActiveViewUnit", new bm(this));
            qdVarA.a("/untrackActiveViewUnit", new bn(this));
            qdVarA.v().a(new rn(qdVarA, jSONObject) { // from class: com.google.android.gms.internal.ads.bk

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final qd f4855a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final JSONObject f4856b;

                {
                    this.f4855a = qdVarA;
                    this.f4856b = jSONObject;
                }

                @Override // com.google.android.gms.internal.ads.rn
                public final void a() {
                    this.f4855a.b("google.afma.nativeAds.renderVideo", this.f4856b);
                }
            });
            qdVarA.v().a(new rm(this, noVar, qdVarA) { // from class: com.google.android.gms.internal.ads.bl

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final bi f4857a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final no f4858b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                private final qd f4859c;

                {
                    this.f4857a = this;
                    this.f4858b = noVar;
                    this.f4859c = qdVarA;
                }

                @Override // com.google.android.gms.internal.ads.rm
                public final void a(boolean z) {
                    this.f4857a.a(this.f4858b, this.f4859c, z);
                }
            });
            qdVarA.loadUrl((String) aoo.f().a(aro.bY));
        } catch (Exception e) {
            jd.c("Exception occurred while getting video view", e);
            noVar.b(null);
        }
    }
}
