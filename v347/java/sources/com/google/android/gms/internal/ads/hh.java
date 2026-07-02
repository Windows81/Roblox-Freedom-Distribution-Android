package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class hh implements com.google.android.gms.ads.reward.mediation.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final he f5080a;

    public hh(he heVar) {
        this.f5080a = heVar;
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void a(Bundle bundle) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdMetadataChanged.");
        try {
            this.f5080a.a(bundle);
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void a(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onInitializationSucceeded.");
        try {
            this.f5080a.a(com.google.android.gms.b.b.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void a(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdFailedToLoad.");
        try {
            this.f5080a.b(com.google.android.gms.b.b.a(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void a(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, com.google.android.gms.ads.reward.a aVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onRewarded.");
        try {
            if (aVar != null) {
                this.f5080a.a(com.google.android.gms.b.b.a(mediationRewardedVideoAdAdapter), new zzaig(aVar));
            } else {
                this.f5080a.a(com.google.android.gms.b.b.a(mediationRewardedVideoAdAdapter), new zzaig("", 1));
            }
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void b(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdLoaded.");
        try {
            this.f5080a.b(com.google.android.gms.b.b.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void c(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdOpened.");
        try {
            this.f5080a.c(com.google.android.gms.b.b.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void d(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onVideoStarted.");
        try {
            this.f5080a.d(com.google.android.gms.b.b.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void e(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdClosed.");
        try {
            this.f5080a.e(com.google.android.gms.b.b.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void f(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdLeftApplication.");
        try {
            this.f5080a.g(com.google.android.gms.b.b.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.a
    public final void g(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onVideoCompleted.");
        try {
            this.f5080a.h(com.google.android.gms.b.b.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }
}
