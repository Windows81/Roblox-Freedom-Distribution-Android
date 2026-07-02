package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class rx {
    public static qd a(final Context context, final rr rrVar, final String str, final boolean z, final boolean z2, final agv agvVar, final zzang zzangVar, final asb asbVar, final com.google.android.gms.ads.internal.ap apVar, final com.google.android.gms.ads.internal.bt btVar, final ami amiVar) throws qo {
        try {
            return (qd) lp.a(new Callable(context, rrVar, str, z, z2, agvVar, zzangVar, asbVar, apVar, btVar, amiVar) { // from class: com.google.android.gms.internal.ads.ry

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final Context f5530a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final rr f5531b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                private final String f5532c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private final boolean f5533d;
                private final boolean e;
                private final agv f;
                private final zzang g;
                private final asb h;
                private final com.google.android.gms.ads.internal.ap i;
                private final com.google.android.gms.ads.internal.bt j;
                private final ami k;

                {
                    this.f5530a = context;
                    this.f5531b = rrVar;
                    this.f5532c = str;
                    this.f5533d = z;
                    this.e = z2;
                    this.f = agvVar;
                    this.g = zzangVar;
                    this.h = asbVar;
                    this.i = apVar;
                    this.j = btVar;
                    this.k = amiVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Context context2 = this.f5530a;
                    rr rrVar2 = this.f5531b;
                    String str2 = this.f5532c;
                    boolean z3 = this.f5533d;
                    boolean z4 = this.e;
                    rz rzVarA = rz.a(context2, rrVar2, str2, z3, z4, this.f, this.g, this.h, this.i, this.j, this.k);
                    qp qpVar = new qp(rzVarA);
                    rs rsVar = new rs(qpVar, z4);
                    rzVarA.setWebChromeClient(new pv(qpVar));
                    rzVarA.a((sg) rsVar);
                    rzVarA.a((sl) rsVar);
                    rzVarA.a((sk) rsVar);
                    rzVarA.a((si) rsVar);
                    rzVarA.a(rsVar);
                    return qpVar;
                }
            });
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.aw.i().a(th, "AdWebViewFactory.newAdWebView2");
            throw new qo("Webview initialization failed.", th);
        }
    }
}
