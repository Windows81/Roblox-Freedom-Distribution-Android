package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.i;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.ads.mj;

/* JADX INFO: loaded from: classes.dex */
@KeepName
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f3216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CustomEventBanner f3217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CustomEventInterstitial f3218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CustomEventNative f3219d;

    static final class a implements com.google.android.gms.ads.mediation.customevent.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CustomEventAdapter f3220a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.google.android.gms.ads.mediation.c f3221b;

        public a(CustomEventAdapter customEventAdapter, com.google.android.gms.ads.mediation.c cVar) {
            this.f3220a = customEventAdapter;
            this.f3221b = cVar;
        }
    }

    class b implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CustomEventAdapter f3222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.google.android.gms.ads.mediation.d f3223b;

        public b(CustomEventAdapter customEventAdapter, com.google.android.gms.ads.mediation.d dVar) {
            this.f3222a = customEventAdapter;
            this.f3223b = dVar;
        }
    }

    static class c implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CustomEventAdapter f3225a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.google.android.gms.ads.mediation.e f3226b;

        public c(CustomEventAdapter customEventAdapter, com.google.android.gms.ads.mediation.e eVar) {
            this.f3225a = customEventAdapter;
            this.f3226b = eVar;
        }
    }

    private static <T> T a(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            mj.e(new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length()).append("Could not instantiate custom event adapter: ").append(str).append(". ").append(message).toString());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.f3216a;
    }

    @Override // com.google.android.gms.ads.mediation.b
    public final void onDestroy() {
        if (this.f3217b != null) {
            this.f3217b.a();
        }
        if (this.f3218c != null) {
            this.f3218c.a();
        }
        if (this.f3219d != null) {
            this.f3219d.a();
        }
    }

    @Override // com.google.android.gms.ads.mediation.b
    public final void onPause() {
        if (this.f3217b != null) {
            this.f3217b.b();
        }
        if (this.f3218c != null) {
            this.f3218c.b();
        }
        if (this.f3219d != null) {
            this.f3219d.b();
        }
    }

    @Override // com.google.android.gms.ads.mediation.b
    public final void onResume() {
        if (this.f3217b != null) {
            this.f3217b.c();
        }
        if (this.f3218c != null) {
            this.f3218c.c();
        }
        if (this.f3219d != null) {
            this.f3219d.c();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(Context context, com.google.android.gms.ads.mediation.c cVar, Bundle bundle, com.google.android.gms.ads.d dVar, com.google.android.gms.ads.mediation.a aVar, Bundle bundle2) {
        this.f3217b = (CustomEventBanner) a(bundle.getString("class_name"));
        if (this.f3217b == null) {
            cVar.a(this, 0);
        } else {
            this.f3217b.requestBannerAd(context, new a(this, cVar), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), dVar, aVar, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, com.google.android.gms.ads.mediation.d dVar, Bundle bundle, com.google.android.gms.ads.mediation.a aVar, Bundle bundle2) {
        this.f3218c = (CustomEventInterstitial) a(bundle.getString("class_name"));
        if (this.f3218c == null) {
            dVar.a(this, 0);
        } else {
            this.f3218c.requestInterstitialAd(context, new b(this, dVar), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), aVar, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void requestNativeAd(Context context, com.google.android.gms.ads.mediation.e eVar, Bundle bundle, i iVar, Bundle bundle2) {
        this.f3219d = (CustomEventNative) a(bundle.getString("class_name"));
        if (this.f3219d == null) {
            eVar.a(this, 0);
        } else {
            this.f3219d.requestNativeAd(context, new c(this, eVar), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), iVar, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.f3218c.showInterstitial();
    }
}
