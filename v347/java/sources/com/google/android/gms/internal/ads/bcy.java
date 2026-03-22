package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class bcy<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> implements MediationBannerListener, MediationInterstitialListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final bca f4804a;

    public bcy(bca bcaVar) {
        this.f4804a = bcaVar;
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onClick(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        mj.b("Adapter called onClick.");
        aoo.a();
        if (!ly.b()) {
            mj.d("#008 Must be called on the main UI thread.", null);
            ly.f5287a.post(new bcz(this));
        } else {
            try {
                this.f4804a.a();
            } catch (RemoteException e) {
                mj.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onDismissScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        mj.b("Adapter called onDismissScreen.");
        aoo.a();
        if (!ly.b()) {
            mj.e("#008 Must be called on the main UI thread.");
            ly.f5287a.post(new bdc(this));
        } else {
            try {
                this.f4804a.b();
            } catch (RemoteException e) {
                mj.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        mj.b("Adapter called onDismissScreen.");
        aoo.a();
        if (!ly.b()) {
            mj.d("#008 Must be called on the main UI thread.", null);
            ly.f5287a.post(new bdh(this));
        } else {
            try {
                this.f4804a.b();
            } catch (RemoteException e) {
                mj.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, AdRequest.ErrorCode errorCode) {
        String strValueOf = String.valueOf(errorCode);
        mj.b(new StringBuilder(String.valueOf(strValueOf).length() + 47).append("Adapter called onFailedToReceiveAd with error. ").append(strValueOf).toString());
        aoo.a();
        if (!ly.b()) {
            mj.d("#008 Must be called on the main UI thread.", null);
            ly.f5287a.post(new bdd(this, errorCode));
        } else {
            try {
                this.f4804a.a(bdl.a(errorCode));
            } catch (RemoteException e) {
                mj.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, AdRequest.ErrorCode errorCode) {
        String strValueOf = String.valueOf(errorCode);
        mj.b(new StringBuilder(String.valueOf(strValueOf).length() + 47).append("Adapter called onFailedToReceiveAd with error ").append(strValueOf).append(".").toString());
        aoo.a();
        if (!ly.b()) {
            mj.d("#008 Must be called on the main UI thread.", null);
            ly.f5287a.post(new bdj(this, errorCode));
        } else {
            try {
                this.f4804a.a(bdl.a(errorCode));
            } catch (RemoteException e) {
                mj.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onLeaveApplication(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        mj.b("Adapter called onLeaveApplication.");
        aoo.a();
        if (!ly.b()) {
            mj.d("#008 Must be called on the main UI thread.", null);
            ly.f5287a.post(new bde(this));
        } else {
            try {
                this.f4804a.c();
            } catch (RemoteException e) {
                mj.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        mj.b("Adapter called onLeaveApplication.");
        aoo.a();
        if (!ly.b()) {
            mj.d("#008 Must be called on the main UI thread.", null);
            ly.f5287a.post(new bdk(this));
        } else {
            try {
                this.f4804a.c();
            } catch (RemoteException e) {
                mj.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onPresentScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        mj.b("Adapter called onPresentScreen.");
        aoo.a();
        if (!ly.b()) {
            mj.d("#008 Must be called on the main UI thread.", null);
            ly.f5287a.post(new bdf(this));
        } else {
            try {
                this.f4804a.d();
            } catch (RemoteException e) {
                mj.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        mj.b("Adapter called onPresentScreen.");
        aoo.a();
        if (!ly.b()) {
            mj.d("#008 Must be called on the main UI thread.", null);
            ly.f5287a.post(new bda(this));
        } else {
            try {
                this.f4804a.d();
            } catch (RemoteException e) {
                mj.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onReceivedAd(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        mj.b("Adapter called onReceivedAd.");
        aoo.a();
        if (!ly.b()) {
            mj.d("#008 Must be called on the main UI thread.", null);
            ly.f5287a.post(new bdg(this));
        } else {
            try {
                this.f4804a.e();
            } catch (RemoteException e) {
                mj.d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        mj.b("Adapter called onReceivedAd.");
        aoo.a();
        if (!ly.b()) {
            mj.d("#008 Must be called on the main UI thread.", null);
            ly.f5287a.post(new bdb(this));
        } else {
            try {
                this.f4804a.e();
            } catch (RemoteException e) {
                mj.d("#007 Could not call remote method.", e);
            }
        }
    }
}
