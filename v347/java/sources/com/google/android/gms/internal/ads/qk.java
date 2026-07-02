package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class qk {
    public static nd<qd> a(final Context context, final zzang zzangVar, final String str, final agv agvVar, final com.google.android.gms.ads.internal.bt btVar) {
        return ms.a(ms.a((Object) null), new mn(context, agvVar, zzangVar, btVar, str) { // from class: com.google.android.gms.internal.ads.ql

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Context f5477a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final agv f5478b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final zzang f5479c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final com.google.android.gms.ads.internal.bt f5480d;
            private final String e;

            {
                this.f5477a = context;
                this.f5478b = agvVar;
                this.f5479c = zzangVar;
                this.f5480d = btVar;
                this.e = str;
            }

            @Override // com.google.android.gms.internal.ads.mn
            public final nd a(Object obj) throws qo {
                Context context2 = this.f5477a;
                agv agvVar2 = this.f5478b;
                zzang zzangVar2 = this.f5479c;
                com.google.android.gms.ads.internal.bt btVar2 = this.f5480d;
                String str2 = this.e;
                com.google.android.gms.ads.internal.aw.f();
                qd qdVarA = qk.a(context2, rr.a(), "", false, false, agvVar2, zzangVar2, null, null, btVar2, ami.a());
                final nn nnVarA = nn.a(qdVarA);
                qdVarA.v().a(new rm(nnVarA) { // from class: com.google.android.gms.internal.ads.qn

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    private final nn f5485a;

                    {
                        this.f5485a = nnVarA;
                    }

                    @Override // com.google.android.gms.internal.ads.rm
                    public final void a(boolean z) {
                        this.f5485a.a();
                    }
                });
                qdVarA.loadUrl(str2);
                return nnVarA;
            }
        }, nj.f5346a);
    }

    public static qd a(final Context context, final rr rrVar, final String str, final boolean z, final boolean z2, final agv agvVar, final zzang zzangVar, final asb asbVar, final com.google.android.gms.ads.internal.ap apVar, final com.google.android.gms.ads.internal.bt btVar, final ami amiVar) throws qo {
        aro.a(context);
        if (((Boolean) aoo.f().a(aro.az)).booleanValue()) {
            return rx.a(context, rrVar, str, z2, z, agvVar, zzangVar, asbVar, apVar, btVar, amiVar);
        }
        try {
            return (qd) lp.a(new Callable(context, rrVar, str, z, z2, agvVar, zzangVar, asbVar, apVar, btVar, amiVar) { // from class: com.google.android.gms.internal.ads.qm

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final Context f5481a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final rr f5482b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                private final String f5483c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private final boolean f5484d;
                private final boolean e;
                private final agv f;
                private final zzang g;
                private final asb h;
                private final com.google.android.gms.ads.internal.ap i;
                private final com.google.android.gms.ads.internal.bt j;
                private final ami k;

                {
                    this.f5481a = context;
                    this.f5482b = rrVar;
                    this.f5483c = str;
                    this.f5484d = z;
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
                    Context context2 = this.f5481a;
                    rr rrVar2 = this.f5482b;
                    String str2 = this.f5483c;
                    boolean z3 = this.f5484d;
                    boolean z4 = this.e;
                    qp qpVar = new qp(qq.a(context2, rrVar2, str2, z3, z4, this.f, this.g, this.h, this.i, this.j, this.k));
                    qpVar.setWebViewClient(com.google.android.gms.ads.internal.aw.g().a(qpVar, z4));
                    qpVar.setWebChromeClient(new pv(qpVar));
                    return qpVar;
                }
            });
        } catch (Throwable th) {
            throw new qo("Webview initialization failed.", th);
        }
    }
}
