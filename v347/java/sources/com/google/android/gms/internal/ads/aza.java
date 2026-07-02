package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class aza implements ays, ayy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final qd f4649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f4650b;

    public aza(Context context, zzang zzangVar, agv agvVar, com.google.android.gms.ads.internal.bt btVar) throws qo {
        this.f4650b = context;
        com.google.android.gms.ads.internal.aw.f();
        this.f4649a = qk.a(context, rr.a(), "", false, false, agvVar, zzangVar, null, null, null, ami.a());
        this.f4649a.getView().setWillNotDraw(true);
    }

    private static void a(Runnable runnable) {
        aoo.a();
        if (ly.b()) {
            runnable.run();
        } else {
            jm.f5184a.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.ayy
    public final void a() {
        this.f4649a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.ayy
    public final void a(ayz ayzVar) {
        rl rlVarV = this.f4649a.v();
        ayzVar.getClass();
        rlVarV.a(azd.a(ayzVar));
    }

    @Override // com.google.android.gms.internal.ads.ayy
    public final void a(String str) {
        a(new azf(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str)));
    }

    @Override // com.google.android.gms.internal.ads.bah
    public final void a(String str, com.google.android.gms.ads.internal.gmsg.ae<? super bah> aeVar) {
        this.f4649a.a(str, new azi(this, aeVar));
    }

    @Override // com.google.android.gms.internal.ads.ays
    public final void a(String str, String str2) {
        ayt.a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.ayi
    public final void a(String str, Map map) {
        ayt.a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.ays, com.google.android.gms.internal.ads.ayi
    public final void a(String str, JSONObject jSONObject) {
        ayt.b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.ayy
    public final bai b() {
        return new baj(this);
    }

    @Override // com.google.android.gms.internal.ads.ays, com.google.android.gms.internal.ads.azj
    public final void b(final String str) {
        a(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.azb

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final aza f4651a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final String f4652b;

            {
                this.f4651a = this;
                this.f4652b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4651a.e(this.f4652b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.bah
    public final void b(String str, final com.google.android.gms.ads.internal.gmsg.ae<? super bah> aeVar) {
        this.f4649a.a(str, new com.google.android.gms.common.util.o(aeVar) { // from class: com.google.android.gms.internal.ads.azc

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final com.google.android.gms.ads.internal.gmsg.ae f4653a;

            {
                this.f4653a = aeVar;
            }

            @Override // com.google.android.gms.common.util.o
            public final boolean a(Object obj) {
                com.google.android.gms.ads.internal.gmsg.ae aeVar2 = (com.google.android.gms.ads.internal.gmsg.ae) obj;
                return (aeVar2 instanceof azi) && ((azi) aeVar2).f4665a.equals(this.f4653a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.azj
    public final void b(String str, JSONObject jSONObject) {
        ayt.a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.ayy
    public final void c(String str) {
        a(new azg(this, str));
    }

    @Override // com.google.android.gms.internal.ads.ayy
    public final void d(String str) {
        a(new azh(this, str));
    }

    final /* synthetic */ void e(String str) {
        this.f4649a.b(str);
    }
}
