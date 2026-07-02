package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.apy;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.bbd;
import com.google.android.gms.internal.ads.bbe;
import com.google.android.gms.internal.ads.bbx;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.ft;
import com.google.android.gms.internal.ads.hd;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.kg;
import com.google.android.gms.internal.ads.nj;
import com.google.android.gms.internal.ads.zzang;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class y extends apy {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f3199b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("sLock")
    private static y f3200c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3201a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f3202d = new Object();
    private boolean e = false;
    private zzang f;

    private y(Context context, zzang zzangVar) {
        this.f3201a = context;
        this.f = zzangVar;
    }

    public static y a(Context context, zzang zzangVar) {
        y yVar;
        synchronized (f3199b) {
            if (f3200c == null) {
                f3200c = new y(context.getApplicationContext(), zzangVar);
            }
            yVar = f3200c;
        }
        return yVar;
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final void a() {
        synchronized (f3199b) {
            if (this.e) {
                jd.e("Mobile ads is initialized already.");
                return;
            }
            this.e = true;
            aro.a(this.f3201a);
            aw.i().a(this.f3201a, this.f);
            aw.k().a(this.f3201a);
        }
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final void a(float f) {
        aw.D().a(f);
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final void a(com.google.android.gms.b.a aVar, String str) {
        if (aVar == null) {
            jd.c("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) com.google.android.gms.b.b.a(aVar);
        if (context == null) {
            jd.c("Context is null. Failed to open debug menu.");
            return;
        }
        kg kgVar = new kg(context);
        kgVar.a(str);
        kgVar.b(this.f.f5784a);
        kgVar.a();
    }

    final /* synthetic */ void a(Runnable runnable) {
        Context context = this.f3201a;
        com.google.android.gms.common.internal.w.b("Adapters must be initialized on the main thread.");
        Map<String, bbe> mapE = aw.i().l().h().e();
        if (mapE == null || mapE.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                jd.c("Could not initialize rewarded ads.", th);
                return;
            }
        }
        ft ftVarI = ft.I();
        if (ftVarI != null) {
            Collection<bbe> collectionValues = mapE.values();
            HashMap map = new HashMap();
            com.google.android.gms.b.a aVarA = com.google.android.gms.b.b.a(context);
            Iterator<bbe> it = collectionValues.iterator();
            while (it.hasNext()) {
                for (bbd bbdVar : it.next().f4745a) {
                    String str = bbdVar.k;
                    for (String str2 : bbdVar.f4743c) {
                        if (!map.containsKey(str2)) {
                            map.put(str2, new ArrayList());
                        }
                        if (str != null) {
                            ((Collection) map.get(str2)).add(str);
                        }
                    }
                }
            }
            for (Map.Entry entry : map.entrySet()) {
                String str3 = (String) entry.getKey();
                try {
                    hd hdVarB = ftVarI.b(str3);
                    if (hdVarB != null) {
                        bbx bbxVarA = hdVarB.a();
                        if (!bbxVarA.g() && bbxVarA.m()) {
                            bbxVarA.a(aVarA, hdVarB.b(), (List<String>) entry.getValue());
                            String strValueOf = String.valueOf(str3);
                            jd.b(strValueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(strValueOf) : new String("Initialized rewarded video mediation adapter "));
                        }
                    }
                } catch (Throwable th2) {
                    jd.c(new StringBuilder(String.valueOf(str3).length() + 56).append("Failed to initialize rewarded video mediation adapter \"").append(str3).append("\"").toString(), th2);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final void a(String str) {
        aro.a(this.f3201a);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (((Boolean) aoo.f().a(aro.cs)).booleanValue()) {
            aw.m().a(this.f3201a, this.f, str, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final void a(String str, com.google.android.gms.b.a aVar) {
        Runnable runnable;
        boolean z;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        aro.a(this.f3201a);
        boolean zBooleanValue = ((Boolean) aoo.f().a(aro.cs)).booleanValue() | ((Boolean) aoo.f().a(aro.aD)).booleanValue();
        if (((Boolean) aoo.f().a(aro.aD)).booleanValue()) {
            final Runnable runnable2 = (Runnable) com.google.android.gms.b.b.a(aVar);
            runnable = new Runnable(this, runnable2) { // from class: com.google.android.gms.ads.internal.z

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final y f3203a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final Runnable f3204b;

                {
                    this.f3203a = this;
                    this.f3204b = runnable2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    nj.f5346a.execute(new Runnable(this.f3203a, this.f3204b) { // from class: com.google.android.gms.ads.internal.ab

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        private final y f2988a;

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        private final Runnable f2989b;

                        {
                            this.f2988a = yVar;
                            this.f2989b = runnable;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f2988a.a(this.f2989b);
                        }
                    });
                }
            };
            z = true;
        } else {
            runnable = null;
            z = zBooleanValue;
        }
        if (z) {
            aw.m().a(this.f3201a, this.f, str, runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final void a(boolean z) {
        aw.D().a(z);
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final float b() {
        return aw.D().a();
    }

    @Override // com.google.android.gms.internal.ads.apx
    public final boolean c() {
        return aw.D().b();
    }
}
