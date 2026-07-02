package com.google.android.gms.ads.internal;

import android.os.Bundle;
import com.google.android.gms.internal.ads.asb;
import com.google.android.gms.internal.ads.ath;
import com.google.android.gms.internal.ads.dl;
import com.google.android.gms.internal.ads.ij;
import com.google.android.gms.internal.ads.ms;
import com.google.android.gms.internal.ads.zzaef;
import com.google.android.gms.internal.ads.zzjj;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class af implements Callable<ath> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ int f2992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ JSONArray f2993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ int f2994c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ ij f2995d;
    private final /* synthetic */ ad e;

    af(ad adVar, int i, JSONArray jSONArray, int i2, ij ijVar) {
        this.e = adVar;
        this.f2992a = i;
        this.f2993b = jSONArray;
        this.f2994c = i2;
        this.f2995d = ijVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ ath call() throws Exception {
        if (this.f2992a >= this.f2993b.length()) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(this.f2993b.get(this.f2992a));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("ads", jSONArray);
        ad adVar = new ad(this.e.e.f3036c, this.e.i, this.e.e.i, this.e.e.f3035b, this.e.j, this.e.e.e, true);
        ad adVar2 = this.e;
        ad.a(this.e.e, adVar.e);
        adVar.j_();
        adVar.a(this.e.f2982b);
        asb asbVar = adVar.f2981a;
        int i = this.f2992a;
        asbVar.a("num_ads_requested", String.valueOf(this.f2994c));
        asbVar.a("ad_index", String.valueOf(i));
        zzaef zzaefVar = this.f2995d.f5117a;
        String string = jSONObject.toString();
        Bundle bundle = zzaefVar.f5760c.f5801c != null ? new Bundle(zzaefVar.f5760c.f5801c) : new Bundle();
        bundle.putString("_ad", string);
        adVar.a(new dl(zzaefVar.f5759b, new zzjj(zzaefVar.f5760c.f5799a, zzaefVar.f5760c.f5800b, bundle, zzaefVar.f5760c.f5802d, zzaefVar.f5760c.e, zzaefVar.f5760c.f, zzaefVar.f5760c.g, zzaefVar.f5760c.h, zzaefVar.f5760c.i, zzaefVar.f5760c.j, zzaefVar.f5760c.k, zzaefVar.f5760c.l, zzaefVar.f5760c.m, zzaefVar.f5760c.n, zzaefVar.f5760c.o, zzaefVar.f5760c.p, zzaefVar.f5760c.q, zzaefVar.f5760c.r), zzaefVar.f5761d, zzaefVar.e, zzaefVar.f, zzaefVar.g, zzaefVar.i, zzaefVar.j, zzaefVar.k, zzaefVar.l, zzaefVar.n, zzaefVar.z, zzaefVar.o, zzaefVar.p, zzaefVar.q, zzaefVar.r, zzaefVar.s, zzaefVar.t, zzaefVar.u, zzaefVar.v, zzaefVar.w, zzaefVar.x, zzaefVar.y, zzaefVar.B, zzaefVar.C, zzaefVar.I, zzaefVar.D, zzaefVar.E, zzaefVar.F, zzaefVar.G, ms.a(zzaefVar.H), zzaefVar.J, zzaefVar.K, zzaefVar.L, zzaefVar.M, zzaefVar.N, zzaefVar.O, zzaefVar.P, zzaefVar.Q, zzaefVar.U, ms.a(zzaefVar.h), zzaefVar.V, zzaefVar.W, zzaefVar.X, 1, zzaefVar.Z, zzaefVar.aa, zzaefVar.ab, zzaefVar.ac), adVar.f2981a);
        return adVar.J().get();
    }
}
