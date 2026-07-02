package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class ajh implements ajq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4072a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakHashMap<ii, aji> f4073b = new WeakHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<aji> f4074c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f4075d;
    private final zzang e;
    private final azk f;

    public ajh(Context context, zzang zzangVar) {
        this.f4075d = context.getApplicationContext();
        this.e = zzangVar;
        this.f = new azk(context.getApplicationContext(), zzangVar, (String) aoo.f().a(aro.f4399a));
    }

    private final boolean e(ii iiVar) {
        boolean z;
        synchronized (this.f4072a) {
            aji ajiVar = this.f4073b.get(iiVar);
            z = ajiVar != null && ajiVar.c();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.ajq
    public final void a(aji ajiVar) {
        synchronized (this.f4072a) {
            if (!ajiVar.c()) {
                this.f4074c.remove(ajiVar);
                Iterator<Map.Entry<ii, aji>> it = this.f4073b.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getValue() == ajiVar) {
                        it.remove();
                    }
                }
            }
        }
    }

    public final void a(ii iiVar) {
        synchronized (this.f4072a) {
            aji ajiVar = this.f4073b.get(iiVar);
            if (ajiVar != null) {
                ajiVar.b();
            }
        }
    }

    public final void a(zzjn zzjnVar, ii iiVar) {
        a(zzjnVar, iiVar, iiVar.f5114b.getView());
    }

    public final void a(zzjn zzjnVar, ii iiVar, View view) {
        a(zzjnVar, iiVar, new ajo(view, iiVar), (qd) null);
    }

    public final void a(zzjn zzjnVar, ii iiVar, View view, qd qdVar) {
        a(zzjnVar, iiVar, new ajo(view, iiVar), qdVar);
    }

    public final void a(zzjn zzjnVar, ii iiVar, aku akuVar, qd qdVar) {
        aji ajiVar;
        synchronized (this.f4072a) {
            if (e(iiVar)) {
                ajiVar = this.f4073b.get(iiVar);
            } else {
                ajiVar = new aji(this.f4075d, zzjnVar, iiVar, this.e, akuVar);
                ajiVar.a(this);
                this.f4073b.put(iiVar, ajiVar);
                this.f4074c.add(ajiVar);
            }
            if (qdVar != null) {
                ajiVar.a(new ajr(ajiVar, qdVar));
            } else {
                ajiVar.a(new ajv(ajiVar, this.f, this.f4075d));
            }
        }
    }

    public final void b(ii iiVar) {
        synchronized (this.f4072a) {
            aji ajiVar = this.f4073b.get(iiVar);
            if (ajiVar != null) {
                ajiVar.d();
            }
        }
    }

    public final void c(ii iiVar) {
        synchronized (this.f4072a) {
            aji ajiVar = this.f4073b.get(iiVar);
            if (ajiVar != null) {
                ajiVar.e();
            }
        }
    }

    public final void d(ii iiVar) {
        synchronized (this.f4072a) {
            aji ajiVar = this.f4073b.get(iiVar);
            if (ajiVar != null) {
                ajiVar.f();
            }
        }
    }
}
