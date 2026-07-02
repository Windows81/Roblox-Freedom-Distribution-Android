package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bu implements bq<qd> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private nd<qd> f4873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.gmsg.c f4874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final atk f4875c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f4876d;
    private final zzang e;
    private final com.google.android.gms.ads.internal.ad f;
    private final agv g;
    private String h;

    public bu(Context context, com.google.android.gms.ads.internal.ad adVar, String str, agv agvVar, zzang zzangVar) {
        jd.d("Webview loading for native ads.");
        this.f4876d = context;
        this.f = adVar;
        this.g = agvVar;
        this.e = zzangVar;
        this.h = str;
        com.google.android.gms.ads.internal.aw.f();
        nd<qd> ndVarA = qk.a(this.f4876d, this.e, (String) aoo.f().a(aro.bX), this.g, this.f.h());
        this.f4874b = new com.google.android.gms.ads.internal.gmsg.c(this.f4876d);
        this.f4875c = new atk(adVar, str);
        this.f4873a = ms.a(ndVarA, new mn(this) { // from class: com.google.android.gms.internal.ads.bv

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final bu f4877a;

            {
                this.f4877a = this;
            }

            @Override // com.google.android.gms.internal.ads.mn
            public final nd a(Object obj) {
                return this.f4877a.a((qd) obj);
            }
        }, nj.f5347b);
        mq.a(this.f4873a, "WebViewNativeAdsUtil.constructor");
    }

    final /* synthetic */ nd a(qd qdVar) throws Exception {
        jd.d("Javascript has loaded for native ads.");
        qdVar.v().a(this.f, this.f, this.f, this.f, this.f, false, null, new com.google.android.gms.ads.internal.bu(this.f4876d, null, null), null, null);
        qdVar.a("/logScionEvent", this.f4874b);
        qdVar.a("/logScionEvent", this.f4875c);
        return ms.a(qdVar);
    }

    @Override // com.google.android.gms.internal.ads.bq
    public final nd<JSONObject> a(final JSONObject jSONObject) {
        return ms.a(this.f4873a, new mn(this, jSONObject) { // from class: com.google.android.gms.internal.ads.bw

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final bu f4878a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final JSONObject f4879b;

            {
                this.f4878a = this;
                this.f4879b = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.mn
            public final nd a(Object obj) {
                return this.f4878a.d(this.f4879b, (qd) obj);
            }
        }, nj.f5346a);
    }

    final /* synthetic */ nd a(JSONObject jSONObject, qd qdVar) throws Exception {
        jSONObject.put("ads_id", this.h);
        qdVar.b("google.afma.nativeAds.handleDownloadedImpressionPing", jSONObject);
        return ms.a(new JSONObject());
    }

    @Override // com.google.android.gms.internal.ads.bq
    public final void a() {
        ms.a(this.f4873a, new cf(this), nj.f5346a);
    }

    @Override // com.google.android.gms.internal.ads.bq
    public final void a(String str, com.google.android.gms.ads.internal.gmsg.ae<? super qd> aeVar) {
        ms.a(this.f4873a, new cb(this, str, aeVar), nj.f5346a);
    }

    @Override // com.google.android.gms.internal.ads.bq
    public final void a(String str, JSONObject jSONObject) {
        ms.a(this.f4873a, new cd(this, str, jSONObject), nj.f5346a);
    }

    @Override // com.google.android.gms.internal.ads.bq
    public final nd<JSONObject> b(final JSONObject jSONObject) {
        return ms.a(this.f4873a, new mn(this, jSONObject) { // from class: com.google.android.gms.internal.ads.bx

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final bu f4880a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final JSONObject f4881b;

            {
                this.f4880a = this;
                this.f4881b = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.mn
            public final nd a(Object obj) {
                return this.f4880a.c(this.f4881b, (qd) obj);
            }
        }, nj.f5346a);
    }

    final /* synthetic */ nd b(JSONObject jSONObject, qd qdVar) throws Exception {
        jSONObject.put("ads_id", this.h);
        qdVar.b("google.afma.nativeAds.handleImpressionPing", jSONObject);
        return ms.a(new JSONObject());
    }

    @Override // com.google.android.gms.internal.ads.bq
    public final void b(String str, com.google.android.gms.ads.internal.gmsg.ae<? super qd> aeVar) {
        ms.a(this.f4873a, new cc(this, str, aeVar), nj.f5346a);
    }

    @Override // com.google.android.gms.internal.ads.bq
    public final nd<JSONObject> c(final JSONObject jSONObject) {
        return ms.a(this.f4873a, new mn(this, jSONObject) { // from class: com.google.android.gms.internal.ads.by

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final bu f4882a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final JSONObject f4883b;

            {
                this.f4882a = this;
                this.f4883b = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.mn
            public final nd a(Object obj) {
                return this.f4882a.b(this.f4883b, (qd) obj);
            }
        }, nj.f5346a);
    }

    final /* synthetic */ nd c(JSONObject jSONObject, qd qdVar) throws Exception {
        jSONObject.put("ads_id", this.h);
        qdVar.b("google.afma.nativeAds.handleClickGmsg", jSONObject);
        return ms.a(new JSONObject());
    }

    @Override // com.google.android.gms.internal.ads.bq
    public final nd<JSONObject> d(final JSONObject jSONObject) {
        return ms.a(this.f4873a, new mn(this, jSONObject) { // from class: com.google.android.gms.internal.ads.bz

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final bu f4884a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final JSONObject f4885b;

            {
                this.f4884a = this;
                this.f4885b = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.mn
            public final nd a(Object obj) {
                return this.f4884a.a(this.f4885b, (qd) obj);
            }
        }, nj.f5346a);
    }

    final /* synthetic */ nd d(JSONObject jSONObject, qd qdVar) throws Exception {
        jSONObject.put("ads_id", this.h);
        no noVar = new no();
        qdVar.a("/nativeAdPreProcess", new ca(this, qdVar, noVar));
        qdVar.b("google.afma.nativeAds.preProcessJsonGmsg", jSONObject);
        return noVar;
    }
}
