package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ajv implements ake {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aji f4097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f4098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.gmsg.c f4099c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private azx f4100d;
    private boolean e;
    private final com.google.android.gms.ads.internal.gmsg.ae<bah> f = new aka(this);
    private final com.google.android.gms.ads.internal.gmsg.ae<bah> g = new akb(this);
    private final com.google.android.gms.ads.internal.gmsg.ae<bah> h = new akc(this);
    private final com.google.android.gms.ads.internal.gmsg.ae<bah> i = new akd(this);

    public ajv(aji ajiVar, azk azkVar, Context context) {
        this.f4097a = ajiVar;
        this.f4098b = context;
        this.f4099c = new com.google.android.gms.ads.internal.gmsg.c(this.f4098b);
        this.f4100d = azkVar.b((agv) null);
        this.f4100d.a(new ajw(this), new ajx(this));
        String strValueOf = String.valueOf(this.f4097a.f4076a.d());
        jd.b(strValueOf.length() != 0 ? "Core JS tracking ad unit: ".concat(strValueOf) : new String("Core JS tracking ad unit: "));
    }

    static /* synthetic */ boolean a(ajv ajvVar, boolean z) {
        ajvVar.e = true;
        return true;
    }

    final void a(bah bahVar) {
        bahVar.a("/updateActiveView", this.f);
        bahVar.a("/untrackActiveViewUnit", this.g);
        bahVar.a("/visibilityChanged", this.h);
        if (com.google.android.gms.ads.internal.aw.B().a(this.f4098b)) {
            bahVar.a("/logScionEvent", this.i);
        }
    }

    @Override // com.google.android.gms.internal.ads.ake
    public final void a(JSONObject jSONObject, boolean z) {
        this.f4100d.a(new ajy(this, jSONObject), new ns());
    }

    @Override // com.google.android.gms.internal.ads.ake
    public final boolean a() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.ake
    public final void b() {
        this.f4100d.a(new ajz(this), new ns());
        this.f4100d.c();
    }

    final void b(bah bahVar) {
        bahVar.b("/visibilityChanged", this.h);
        bahVar.b("/untrackActiveViewUnit", this.g);
        bahVar.b("/updateActiveView", this.f);
        if (com.google.android.gms.ads.internal.aw.B().a(this.f4098b)) {
            bahVar.b("/logScionEvent", this.i);
        }
    }
}
