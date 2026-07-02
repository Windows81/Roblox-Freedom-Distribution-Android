package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bct implements com.google.android.gms.ads.mediation.c, com.google.android.gms.ads.mediation.d, com.google.android.gms.ads.mediation.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final bca f4792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.gms.ads.mediation.f f4793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.google.android.gms.ads.mediation.l f4794c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.gms.ads.formats.i f4795d;

    public bct(bca bcaVar) {
        this.f4792a = bcaVar;
    }

    private static void a(MediationNativeAdapter mediationNativeAdapter, com.google.android.gms.ads.mediation.l lVar, com.google.android.gms.ads.mediation.f fVar) {
        if (mediationNativeAdapter instanceof AdMobAdapter) {
            return;
        }
        com.google.android.gms.ads.j jVar = new com.google.android.gms.ads.j();
        jVar.a(new bcq());
        if (lVar != null && lVar.hasVideoContent()) {
            lVar.zza(jVar);
        }
        if (fVar == null || !fVar.hasVideoContent()) {
            return;
        }
        fVar.zza(jVar);
    }

    public final com.google.android.gms.ads.mediation.f a() {
        return this.f4793b;
    }

    @Override // com.google.android.gms.ads.mediation.c
    public final void a(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdLoaded.");
        try {
            this.f4792a.e();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.c
    public final void a(MediationBannerAdapter mediationBannerAdapter, int i) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b(new StringBuilder(55).append("Adapter called onAdFailedToLoad with error. ").append(i).toString());
        try {
            this.f4792a.a(i);
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.c
    public final void a(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAppEvent.");
        try {
            this.f4792a.a(str, str2);
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final void a(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdLoaded.");
        try {
            this.f4792a.e();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final void a(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b(new StringBuilder(55).append("Adapter called onAdFailedToLoad with error ").append(i).append(".").toString());
        try {
            this.f4792a.a(i);
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void a(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdOpened.");
        try {
            this.f4792a.d();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void a(MediationNativeAdapter mediationNativeAdapter, int i) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b(new StringBuilder(55).append("Adapter called onAdFailedToLoad with error ").append(i).append(".").toString());
        try {
            this.f4792a.a(i);
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void a(MediationNativeAdapter mediationNativeAdapter, com.google.android.gms.ads.formats.i iVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        String strValueOf = String.valueOf(iVar.a());
        mj.b(strValueOf.length() != 0 ? "Adapter called onAdLoaded with template id ".concat(strValueOf) : new String("Adapter called onAdLoaded with template id "));
        this.f4795d = iVar;
        try {
            this.f4792a.e();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void a(MediationNativeAdapter mediationNativeAdapter, com.google.android.gms.ads.formats.i iVar, String str) {
        if (!(iVar instanceof avb)) {
            mj.e("Unexpected native custom template ad type.");
            return;
        }
        try {
            this.f4792a.a(((avb) iVar).b(), str);
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void a(MediationNativeAdapter mediationNativeAdapter, com.google.android.gms.ads.mediation.f fVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdLoaded.");
        this.f4793b = fVar;
        this.f4794c = null;
        a(mediationNativeAdapter, this.f4794c, this.f4793b);
        try {
            this.f4792a.e();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void a(MediationNativeAdapter mediationNativeAdapter, com.google.android.gms.ads.mediation.l lVar) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdLoaded.");
        this.f4794c = lVar;
        this.f4793b = null;
        a(mediationNativeAdapter, this.f4794c, this.f4793b);
        try {
            this.f4792a.e();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    public final com.google.android.gms.ads.mediation.l b() {
        return this.f4794c;
    }

    @Override // com.google.android.gms.ads.mediation.c
    public final void b(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdOpened.");
        try {
            this.f4792a.d();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final void b(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdOpened.");
        try {
            this.f4792a.d();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void b(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdClosed.");
        try {
            this.f4792a.b();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    public final com.google.android.gms.ads.formats.i c() {
        return this.f4795d;
    }

    @Override // com.google.android.gms.ads.mediation.c
    public final void c(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdClosed.");
        try {
            this.f4792a.b();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final void c(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdClosed.");
        try {
            this.f4792a.b();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void c(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdLeftApplication.");
        try {
            this.f4792a.c();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.c
    public final void d(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdLeftApplication.");
        try {
            this.f4792a.c();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final void d(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdLeftApplication.");
        try {
            this.f4792a.c();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void d(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        com.google.android.gms.ads.mediation.f fVar = this.f4793b;
        com.google.android.gms.ads.mediation.l lVar = this.f4794c;
        if (this.f4795d == null) {
            if (fVar == null && lVar == null) {
                mj.d("#007 Could not call remote method.", null);
                return;
            }
            if (lVar != null && !lVar.getOverrideClickHandling()) {
                mj.b("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            } else if (fVar != null && !fVar.getOverrideClickHandling()) {
                mj.b("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        mj.b("Adapter called onAdClicked.");
        try {
            this.f4792a.a();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.c
    public final void e(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdClicked.");
        try {
            this.f4792a.a();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.d
    public final void e(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        mj.b("Adapter called onAdClicked.");
        try {
            this.f4792a.a();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.e
    public final void e(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.w.b("#008 Must be called on the main UI thread.");
        com.google.android.gms.ads.mediation.f fVar = this.f4793b;
        com.google.android.gms.ads.mediation.l lVar = this.f4794c;
        if (this.f4795d == null) {
            if (fVar == null && lVar == null) {
                mj.d("#007 Could not call remote method.", null);
                return;
            }
            if (lVar != null && !lVar.getOverrideImpressionRecording()) {
                mj.b("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            } else if (fVar != null && !fVar.getOverrideImpressionRecording()) {
                mj.b("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        mj.b("Adapter called onAdImpression.");
        try {
            this.f4792a.f();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }
}
