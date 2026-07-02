package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ajr implements ake {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aji f4090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final qd f4091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.gmsg.ae<qd> f4092c = new ajs(this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.gmsg.ae<qd> f4093d = new ajt(this);
    private final com.google.android.gms.ads.internal.gmsg.ae<qd> e = new aju(this);

    public ajr(aji ajiVar, qd qdVar) {
        this.f4090a = ajiVar;
        this.f4091b = qdVar;
        qd qdVar2 = this.f4091b;
        qdVar2.a("/updateActiveView", this.f4092c);
        qdVar2.a("/untrackActiveViewUnit", this.f4093d);
        qdVar2.a("/visibilityChanged", this.e);
        String strValueOf = String.valueOf(this.f4090a.f4076a.d());
        jd.b(strValueOf.length() != 0 ? "Custom JS tracking ad unit: ".concat(strValueOf) : new String("Custom JS tracking ad unit: "));
    }

    @Override // com.google.android.gms.internal.ads.ake
    public final void a(JSONObject jSONObject, boolean z) {
        if (z) {
            this.f4090a.b(this);
        } else {
            this.f4091b.b("AFMA_updateActiveView", jSONObject);
        }
    }

    @Override // com.google.android.gms.internal.ads.ake
    public final boolean a() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ake
    public final void b() {
        qd qdVar = this.f4091b;
        qdVar.b("/visibilityChanged", this.e);
        qdVar.b("/untrackActiveViewUnit", this.f4093d);
        qdVar.b("/updateActiveView", this.f4092c);
    }
}
