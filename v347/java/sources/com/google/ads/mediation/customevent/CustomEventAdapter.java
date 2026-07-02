package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.customevent.c;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.ads.mj;

/* JADX INFO: loaded from: classes.dex */
@KeepName
public final class CustomEventAdapter implements MediationBannerAdapter<c, CustomEventServerParameters>, MediationInterstitialAdapter<c, CustomEventServerParameters> {
    private View zzhq;
    private CustomEventBanner zzhr;
    private CustomEventInterstitial zzhs;

    static final class zza implements CustomEventBannerListener {
        private final CustomEventAdapter zzht;
        private final MediationBannerListener zzhu;

        public zza(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.zzht = customEventAdapter;
            this.zzhu = mediationBannerListener;
        }

        @Override // com.google.ads.mediation.customevent.CustomEventBannerListener
        public final void onClick() {
            mj.b("Custom event adapter called onFailedToReceiveAd.");
            this.zzhu.onClick(this.zzht);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onDismissScreen() {
            mj.b("Custom event adapter called onFailedToReceiveAd.");
            this.zzhu.onDismissScreen(this.zzht);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onFailedToReceiveAd() {
            mj.b("Custom event adapter called onFailedToReceiveAd.");
            this.zzhu.onFailedToReceiveAd(this.zzht, AdRequest.ErrorCode.NO_FILL);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onLeaveApplication() {
            mj.b("Custom event adapter called onFailedToReceiveAd.");
            this.zzhu.onLeaveApplication(this.zzht);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onPresentScreen() {
            mj.b("Custom event adapter called onFailedToReceiveAd.");
            this.zzhu.onPresentScreen(this.zzht);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventBannerListener
        public final void onReceivedAd(View view) {
            mj.b("Custom event adapter called onReceivedAd.");
            this.zzht.zza(view);
            this.zzhu.onReceivedAd(this.zzht);
        }
    }

    class zzb implements CustomEventInterstitialListener {
        private final CustomEventAdapter zzht;
        private final MediationInterstitialListener zzhv;

        public zzb(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.zzht = customEventAdapter;
            this.zzhv = mediationInterstitialListener;
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onDismissScreen() {
            mj.b("Custom event adapter called onDismissScreen.");
            this.zzhv.onDismissScreen(this.zzht);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onFailedToReceiveAd() {
            mj.b("Custom event adapter called onFailedToReceiveAd.");
            this.zzhv.onFailedToReceiveAd(this.zzht, AdRequest.ErrorCode.NO_FILL);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onLeaveApplication() {
            mj.b("Custom event adapter called onLeaveApplication.");
            this.zzhv.onLeaveApplication(this.zzht);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onPresentScreen() {
            mj.b("Custom event adapter called onPresentScreen.");
            this.zzhv.onPresentScreen(this.zzht);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventInterstitialListener
        public final void onReceivedAd() {
            mj.b("Custom event adapter called onReceivedAd.");
            this.zzhv.onReceivedAd(CustomEventAdapter.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(View view) {
        this.zzhq = view;
    }

    private static <T> T zzi(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            mj.e(new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length()).append("Could not instantiate custom event adapter: ").append(str).append(". ").append(message).toString());
            return null;
        }
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public final void destroy() {
        if (this.zzhr != null) {
            this.zzhr.destroy();
        }
        if (this.zzhs != null) {
            this.zzhs.destroy();
        }
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public final Class<c> getAdditionalParametersType() {
        return c.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.zzhq;
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public final Class<CustomEventServerParameters> getServerParametersType() {
        return CustomEventServerParameters.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(MediationBannerListener mediationBannerListener, Activity activity, CustomEventServerParameters customEventServerParameters, AdSize adSize, MediationAdRequest mediationAdRequest, c cVar) {
        this.zzhr = (CustomEventBanner) zzi(customEventServerParameters.className);
        if (this.zzhr == null) {
            mediationBannerListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
        } else {
            this.zzhr.requestBannerAd(new zza(this, mediationBannerListener), activity, customEventServerParameters.label, customEventServerParameters.parameter, adSize, mediationAdRequest, cVar == null ? null : cVar.a(customEventServerParameters.label));
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(MediationInterstitialListener mediationInterstitialListener, Activity activity, CustomEventServerParameters customEventServerParameters, MediationAdRequest mediationAdRequest, c cVar) {
        this.zzhs = (CustomEventInterstitial) zzi(customEventServerParameters.className);
        if (this.zzhs == null) {
            mediationInterstitialListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
        } else {
            this.zzhs.requestInterstitialAd(new zzb(this, mediationInterstitialListener), activity, customEventServerParameters.label, customEventServerParameters.parameter, mediationAdRequest, cVar == null ? null : cVar.a(customEventServerParameters.label));
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.zzhs.showInterstitial();
    }
}
