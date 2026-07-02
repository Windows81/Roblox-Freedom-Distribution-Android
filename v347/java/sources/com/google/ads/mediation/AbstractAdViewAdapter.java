package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.b;
import com.google.android.gms.ads.c;
import com.google.android.gms.ads.e;
import com.google.android.gms.ads.formats.f;
import com.google.android.gms.ads.formats.g;
import com.google.android.gms.ads.formats.h;
import com.google.android.gms.ads.formats.i;
import com.google.android.gms.ads.formats.j;
import com.google.android.gms.ads.h;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.b;
import com.google.android.gms.ads.mediation.c;
import com.google.android.gms.ads.mediation.d;
import com.google.android.gms.ads.mediation.g;
import com.google.android.gms.ads.mediation.k;
import com.google.android.gms.ads.mediation.l;
import com.google.android.gms.ads.mediation.m;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.a;
import com.google.android.gms.internal.ads.anv;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aqc;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.ly;
import com.google.android.gms.internal.ads.mj;
import com.google.android.gms.internal.ads.zzatm;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@cm
public abstract class AbstractAdViewAdapter implements com.google.android.gms.ads.mediation.MediationBannerAdapter, MediationNativeAdapter, k, m, MediationRewardedVideoAdAdapter, zzatm {
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    private e zzgw;
    private h zzgx;
    private b zzgy;
    private Context zzgz;
    private h zzha;
    private a zzhb;
    private final com.google.android.gms.ads.reward.b zzhc = new com.google.ads.mediation.zza(this);

    static class zza extends g {
        private final com.google.android.gms.ads.formats.g zzhe;

        public zza(com.google.android.gms.ads.formats.g gVar) {
            this.zzhe = gVar;
            setHeadline(gVar.b().toString());
            setImages(gVar.c());
            setBody(gVar.d().toString());
            setIcon(gVar.e());
            setCallToAction(gVar.f().toString());
            if (gVar.g() != null) {
                setStarRating(gVar.g().doubleValue());
            }
            if (gVar.h() != null) {
                setStore(gVar.h().toString());
            }
            if (gVar.i() != null) {
                setPrice(gVar.i().toString());
            }
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(gVar.j());
        }

        @Override // com.google.android.gms.ads.mediation.f
        public final void trackView(View view) {
            if (view instanceof com.google.android.gms.ads.formats.e) {
                ((com.google.android.gms.ads.formats.e) view).setNativeAd(this.zzhe);
            }
            f fVar = f.f2974a.get(view);
            if (fVar != null) {
                fVar.a(this.zzhe);
            }
        }
    }

    static class zzb extends com.google.android.gms.ads.mediation.h {
        private final com.google.android.gms.ads.formats.h zzhf;

        public zzb(com.google.android.gms.ads.formats.h hVar) {
            this.zzhf = hVar;
            setHeadline(hVar.b().toString());
            setImages(hVar.c());
            setBody(hVar.d().toString());
            if (hVar.e() != null) {
                setLogo(hVar.e());
            }
            setCallToAction(hVar.f().toString());
            setAdvertiser(hVar.g().toString());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(hVar.h());
        }

        @Override // com.google.android.gms.ads.mediation.f
        public final void trackView(View view) {
            if (view instanceof com.google.android.gms.ads.formats.e) {
                ((com.google.android.gms.ads.formats.e) view).setNativeAd(this.zzhf);
            }
            f fVar = f.f2974a.get(view);
            if (fVar != null) {
                fVar.a(this.zzhf);
            }
        }
    }

    static class zzc extends l {
        private final j zzhg;

        public zzc(j jVar) {
            this.zzhg = jVar;
            setHeadline(jVar.a());
            setImages(jVar.b());
            setBody(jVar.c());
            setIcon(jVar.d());
            setCallToAction(jVar.e());
            setAdvertiser(jVar.f());
            setStarRating(jVar.g());
            setStore(jVar.h());
            setPrice(jVar.i());
            zzl(jVar.l());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(jVar.j());
        }

        @Override // com.google.android.gms.ads.mediation.l
        public final void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
            if (view instanceof com.google.android.gms.ads.formats.k) {
                ((com.google.android.gms.ads.formats.k) view).setNativeAd(this.zzhg);
                return;
            }
            f fVar = f.f2974a.get(view);
            if (fVar != null) {
                fVar.a(this.zzhg);
            }
        }
    }

    static final class zzd extends com.google.android.gms.ads.a implements com.google.android.gms.ads.doubleclick.a, anv {
        private final AbstractAdViewAdapter zzhh;
        private final c zzhi;

        public zzd(AbstractAdViewAdapter abstractAdViewAdapter, c cVar) {
            this.zzhh = abstractAdViewAdapter;
            this.zzhi = cVar;
        }

        @Override // com.google.android.gms.ads.a, com.google.android.gms.internal.ads.anv
        public final void onAdClicked() {
            this.zzhi.e(this.zzhh);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdClosed() {
            this.zzhi.c(this.zzhh);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdFailedToLoad(int i) {
            this.zzhi.a(this.zzhh, i);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdLeftApplication() {
            this.zzhi.d(this.zzhh);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdLoaded() {
            this.zzhi.a(this.zzhh);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdOpened() {
            this.zzhi.b(this.zzhh);
        }

        @Override // com.google.android.gms.ads.doubleclick.a
        public final void onAppEvent(String str, String str2) {
            this.zzhi.a(this.zzhh, str, str2);
        }
    }

    static final class zze extends com.google.android.gms.ads.a implements anv {
        private final AbstractAdViewAdapter zzhh;
        private final d zzhj;

        public zze(AbstractAdViewAdapter abstractAdViewAdapter, d dVar) {
            this.zzhh = abstractAdViewAdapter;
            this.zzhj = dVar;
        }

        @Override // com.google.android.gms.ads.a, com.google.android.gms.internal.ads.anv
        public final void onAdClicked() {
            this.zzhj.e(this.zzhh);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdClosed() {
            this.zzhj.c(this.zzhh);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdFailedToLoad(int i) {
            this.zzhj.a(this.zzhh, i);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdLeftApplication() {
            this.zzhj.d(this.zzhh);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdLoaded() {
            this.zzhj.a(this.zzhh);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdOpened() {
            this.zzhj.b(this.zzhh);
        }
    }

    static final class zzf extends com.google.android.gms.ads.a implements g.a, h.a, i.a, i.b, j.a {
        private final AbstractAdViewAdapter zzhh;
        private final com.google.android.gms.ads.mediation.e zzhk;

        public zzf(AbstractAdViewAdapter abstractAdViewAdapter, com.google.android.gms.ads.mediation.e eVar) {
            this.zzhh = abstractAdViewAdapter;
            this.zzhk = eVar;
        }

        @Override // com.google.android.gms.ads.a, com.google.android.gms.internal.ads.anv
        public final void onAdClicked() {
            this.zzhk.d(this.zzhh);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdClosed() {
            this.zzhk.b(this.zzhh);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdFailedToLoad(int i) {
            this.zzhk.a(this.zzhh, i);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdImpression() {
            this.zzhk.e(this.zzhh);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdLeftApplication() {
            this.zzhk.c(this.zzhh);
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdLoaded() {
        }

        @Override // com.google.android.gms.ads.a
        public final void onAdOpened() {
            this.zzhk.a(this.zzhh);
        }

        @Override // com.google.android.gms.ads.formats.g.a
        public final void onAppInstallAdLoaded(com.google.android.gms.ads.formats.g gVar) {
            this.zzhk.a(this.zzhh, new zza(gVar));
        }

        @Override // com.google.android.gms.ads.formats.h.a
        public final void onContentAdLoaded(com.google.android.gms.ads.formats.h hVar) {
            this.zzhk.a(this.zzhh, new zzb(hVar));
        }

        @Override // com.google.android.gms.ads.formats.i.a
        public final void onCustomClick(i iVar, String str) {
            this.zzhk.a(this.zzhh, iVar, str);
        }

        @Override // com.google.android.gms.ads.formats.i.b
        public final void onCustomTemplateAdLoaded(i iVar) {
            this.zzhk.a(this.zzhh, iVar);
        }

        @Override // com.google.android.gms.ads.formats.j.a
        public final void onUnifiedNativeAdLoaded(j jVar) {
            this.zzhk.a(this.zzhh, new zzc(jVar));
        }
    }

    private final com.google.android.gms.ads.c zza(Context context, com.google.android.gms.ads.mediation.a aVar, Bundle bundle, Bundle bundle2) {
        c.a aVar2 = new c.a();
        Date dateA = aVar.a();
        if (dateA != null) {
            aVar2.a(dateA);
        }
        int iB = aVar.b();
        if (iB != 0) {
            aVar2.a(iB);
        }
        Set<String> setC = aVar.c();
        if (setC != null) {
            Iterator<String> it = setC.iterator();
            while (it.hasNext()) {
                aVar2.a(it.next());
            }
        }
        Location locationD = aVar.d();
        if (locationD != null) {
            aVar2.a(locationD);
        }
        if (aVar.f()) {
            aoo.a();
            aVar2.b(ly.a(context));
        }
        if (aVar.e() != -1) {
            aVar2.a(aVar.e() == 1);
        }
        aVar2.b(aVar.g());
        aVar2.a(AdMobAdapter.class, zza(bundle, bundle2));
        return aVar2.a();
    }

    static /* synthetic */ com.google.android.gms.ads.h zza(AbstractAdViewAdapter abstractAdViewAdapter, com.google.android.gms.ads.h hVar) {
        abstractAdViewAdapter.zzha = null;
        return null;
    }

    public String getAdUnitId(Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.zzgw;
    }

    @Override // com.google.android.gms.internal.ads.zzatm
    public Bundle getInterstitialAdapterInfo() {
        return new b.a().a(1).a();
    }

    @Override // com.google.android.gms.ads.mediation.m
    public aqc getVideoController() {
        com.google.android.gms.ads.j videoController;
        if (this.zzgw == null || (videoController = this.zzgw.getVideoController()) == null) {
            return null;
        }
        return videoController.a();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void initialize(Context context, com.google.android.gms.ads.mediation.a aVar, String str, a aVar2, Bundle bundle, Bundle bundle2) {
        this.zzgz = context.getApplicationContext();
        this.zzhb = aVar2;
        this.zzhb.a(this);
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public boolean isInitialized() {
        return this.zzhb != null;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void loadAd(com.google.android.gms.ads.mediation.a aVar, Bundle bundle, Bundle bundle2) {
        if (this.zzgz == null || this.zzhb == null) {
            mj.c("AdMobAdapter.loadAd called before initialize.");
            return;
        }
        this.zzha = new com.google.android.gms.ads.h(this.zzgz);
        this.zzha.a(true);
        this.zzha.a(getAdUnitId(bundle));
        this.zzha.a(this.zzhc);
        this.zzha.a(new com.google.ads.mediation.zzb(this));
        this.zzha.a(zza(this.zzgz, aVar, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.b
    public void onDestroy() {
        if (this.zzgw != null) {
            this.zzgw.c();
            this.zzgw = null;
        }
        if (this.zzgx != null) {
            this.zzgx = null;
        }
        if (this.zzgy != null) {
            this.zzgy = null;
        }
        if (this.zzha != null) {
            this.zzha = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.k
    public void onImmersiveModeUpdated(boolean z) {
        if (this.zzgx != null) {
            this.zzgx.b(z);
        }
        if (this.zzha != null) {
            this.zzha.b(z);
        }
    }

    @Override // com.google.android.gms.ads.mediation.b
    public void onPause() {
        if (this.zzgw != null) {
            this.zzgw.b();
        }
    }

    @Override // com.google.android.gms.ads.mediation.b
    public void onResume() {
        if (this.zzgw != null) {
            this.zzgw.a();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, com.google.android.gms.ads.mediation.c cVar, Bundle bundle, com.google.android.gms.ads.d dVar, com.google.android.gms.ads.mediation.a aVar, Bundle bundle2) {
        this.zzgw = new e(context);
        this.zzgw.setAdSize(new com.google.android.gms.ads.d(dVar.b(), dVar.a()));
        this.zzgw.setAdUnitId(getAdUnitId(bundle));
        this.zzgw.setAdListener(new zzd(this, cVar));
        this.zzgw.a(zza(context, aVar, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, d dVar, Bundle bundle, com.google.android.gms.ads.mediation.a aVar, Bundle bundle2) {
        this.zzgx = new com.google.android.gms.ads.h(context);
        this.zzgx.a(getAdUnitId(bundle));
        this.zzgx.a(new zze(this, dVar));
        this.zzgx.a(zza(context, aVar, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, com.google.android.gms.ads.mediation.e eVar, Bundle bundle, com.google.android.gms.ads.mediation.i iVar, Bundle bundle2) {
        zzf zzfVar = new zzf(this, eVar);
        b.a aVarA = new b.a(context, bundle.getString(AD_UNIT_ID_PARAMETER)).a((com.google.android.gms.ads.a) zzfVar);
        com.google.android.gms.ads.formats.d dVarH = iVar.h();
        if (dVarH != null) {
            aVarA.a(dVarH);
        }
        if (iVar.j()) {
            aVarA.a((j.a) zzfVar);
        }
        if (iVar.i()) {
            aVarA.a((g.a) zzfVar);
        }
        if (iVar.k()) {
            aVarA.a((h.a) zzfVar);
        }
        if (iVar.l()) {
            for (String str : iVar.m().keySet()) {
                aVarA.a(str, zzfVar, iVar.m().get(str).booleanValue() ? zzfVar : null);
            }
        }
        this.zzgy = aVarA.a();
        this.zzgy.a(zza(context, iVar, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        this.zzgx.a();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void showVideo() {
        this.zzha.a();
    }

    protected abstract Bundle zza(Bundle bundle, Bundle bundle2);
}
