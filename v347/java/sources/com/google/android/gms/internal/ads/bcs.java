package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bcs extends bby {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.mediation.b f4790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private bct f4791b;

    public bcs(com.google.android.gms.ads.mediation.b bVar) {
        this.f4790a = bVar;
    }

    private final Bundle a(String str, zzjj zzjjVar, String str2) throws RemoteException {
        String strValueOf = String.valueOf(str);
        mj.e(strValueOf.length() != 0 ? "Server parameters: ".concat(strValueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
                bundle = bundle2;
            }
            if (this.f4790a instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzjjVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzjjVar.g);
                }
            }
            return bundle;
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    private static boolean a(zzjj zzjjVar) {
        if (!zzjjVar.f) {
            aoo.a();
            if (!ly.a()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final com.google.android.gms.b.a a() throws RemoteException {
        if (!(this.f4790a instanceof MediationBannerAdapter)) {
            String strValueOf = String.valueOf(this.f4790a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(strValueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return com.google.android.gms.b.b.a(((MediationBannerAdapter) this.f4790a).getBannerView());
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar) throws RemoteException {
        try {
            ((com.google.android.gms.ads.mediation.j) this.f4790a).a((Context) com.google.android.gms.b.b.a(aVar));
        } catch (Throwable th) {
            mj.c("Failed", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, he heVar, List<String> list) throws RemoteException {
        if (!(this.f4790a instanceof InitializableMediationRewardedVideoAdAdapter)) {
            String strValueOf = String.valueOf(this.f4790a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not an InitializableMediationRewardedVideoAdAdapter: ".concat(strValueOf) : new String("Not an InitializableMediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        mj.b("Initialize rewarded video adapter.");
        try {
            InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.f4790a;
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(a(it.next(), (zzjj) null, (String) null));
            }
            initializableMediationRewardedVideoAdAdapter.initialize((Context) com.google.android.gms.b.b.a(aVar), new hh(heVar), arrayList);
        } catch (Throwable th) {
            mj.c("Could not initialize rewarded video adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjj zzjjVar, String str, bca bcaVar) throws RemoteException {
        a(aVar, zzjjVar, str, (String) null, bcaVar);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjj zzjjVar, String str, he heVar, String str2) throws RemoteException {
        Bundle bundle;
        bcr bcrVar;
        if (!(this.f4790a instanceof MediationRewardedVideoAdAdapter)) {
            String strValueOf = String.valueOf(this.f4790a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not a MediationRewardedVideoAdAdapter: ".concat(strValueOf) : new String("Not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        mj.b("Initialize rewarded video adapter.");
        try {
            MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f4790a;
            Bundle bundleA = a(str2, zzjjVar, (String) null);
            if (zzjjVar != null) {
                bcr bcrVar2 = new bcr(zzjjVar.f5800b == -1 ? null : new Date(zzjjVar.f5800b), zzjjVar.f5802d, zzjjVar.e != null ? new HashSet(zzjjVar.e) : null, zzjjVar.k, a(zzjjVar), zzjjVar.g, zzjjVar.r);
                if (zzjjVar.m != null) {
                    bundle = zzjjVar.m.getBundle(mediationRewardedVideoAdAdapter.getClass().getName());
                    bcrVar = bcrVar2;
                } else {
                    bundle = null;
                    bcrVar = bcrVar2;
                }
            } else {
                bundle = null;
                bcrVar = null;
            }
            mediationRewardedVideoAdAdapter.initialize((Context) com.google.android.gms.b.b.a(aVar), bcrVar, str, new hh(heVar), bundleA, bundle);
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjj zzjjVar, String str, String str2, bca bcaVar) throws RemoteException {
        if (!(this.f4790a instanceof MediationInterstitialAdapter)) {
            String strValueOf = String.valueOf(this.f4790a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(strValueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        mj.b("Requesting interstitial ad from adapter.");
        try {
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.f4790a;
            mediationInterstitialAdapter.requestInterstitialAd((Context) com.google.android.gms.b.b.a(aVar), new bct(bcaVar), a(str, zzjjVar, str2), new bcr(zzjjVar.f5800b == -1 ? null : new Date(zzjjVar.f5800b), zzjjVar.f5802d, zzjjVar.e != null ? new HashSet(zzjjVar.e) : null, zzjjVar.k, a(zzjjVar), zzjjVar.g, zzjjVar.r), zzjjVar.m != null ? zzjjVar.m.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjj zzjjVar, String str, String str2, bca bcaVar, zzpl zzplVar, List<String> list) throws RemoteException {
        if (!(this.f4790a instanceof MediationNativeAdapter)) {
            String strValueOf = String.valueOf(this.f4790a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not a MediationNativeAdapter: ".concat(strValueOf) : new String("Not a MediationNativeAdapter: "));
            throw new RemoteException();
        }
        try {
            MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) this.f4790a;
            bcw bcwVar = new bcw(zzjjVar.f5800b == -1 ? null : new Date(zzjjVar.f5800b), zzjjVar.f5802d, zzjjVar.e != null ? new HashSet(zzjjVar.e) : null, zzjjVar.k, a(zzjjVar), zzjjVar.g, zzplVar, list, zzjjVar.r);
            Bundle bundle = zzjjVar.m != null ? zzjjVar.m.getBundle(mediationNativeAdapter.getClass().getName()) : null;
            this.f4791b = new bct(bcaVar);
            mediationNativeAdapter.requestNativeAd((Context) com.google.android.gms.b.b.a(aVar), this.f4791b, a(str, zzjjVar, str2), bcwVar, bundle);
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjn zzjnVar, zzjj zzjjVar, String str, bca bcaVar) throws RemoteException {
        a(aVar, zzjnVar, zzjjVar, str, null, bcaVar);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjn zzjnVar, zzjj zzjjVar, String str, String str2, bca bcaVar) throws RemoteException {
        if (!(this.f4790a instanceof MediationBannerAdapter)) {
            String strValueOf = String.valueOf(this.f4790a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(strValueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        mj.b("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f4790a;
            mediationBannerAdapter.requestBannerAd((Context) com.google.android.gms.b.b.a(aVar), new bct(bcaVar), a(str, zzjjVar, str2), com.google.android.gms.ads.m.a(zzjnVar.e, zzjnVar.f5804b, zzjnVar.f5803a), new bcr(zzjjVar.f5800b == -1 ? null : new Date(zzjjVar.f5800b), zzjjVar.f5802d, zzjjVar.e != null ? new HashSet(zzjjVar.e) : null, zzjjVar.k, a(zzjjVar), zzjjVar.g, zzjjVar.r), zzjjVar.m != null ? zzjjVar.m.getBundle(mediationBannerAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(zzjj zzjjVar, String str) throws RemoteException {
        a(zzjjVar, str, (String) null);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(zzjj zzjjVar, String str, String str2) throws RemoteException {
        if (!(this.f4790a instanceof MediationRewardedVideoAdAdapter)) {
            String strValueOf = String.valueOf(this.f4790a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not a MediationRewardedVideoAdAdapter: ".concat(strValueOf) : new String("Not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        mj.b("Requesting rewarded video ad from adapter.");
        try {
            MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f4790a;
            mediationRewardedVideoAdAdapter.loadAd(new bcr(zzjjVar.f5800b == -1 ? null : new Date(zzjjVar.f5800b), zzjjVar.f5802d, zzjjVar.e != null ? new HashSet(zzjjVar.e) : null, zzjjVar.k, a(zzjjVar), zzjjVar.g, zzjjVar.r), a(str, zzjjVar, str2), zzjjVar.m != null ? zzjjVar.m.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(boolean z) throws RemoteException {
        if (!(this.f4790a instanceof com.google.android.gms.ads.mediation.k)) {
            String strValueOf = String.valueOf(this.f4790a.getClass().getCanonicalName());
            mj.d(strValueOf.length() != 0 ? "Not an OnImmersiveModeUpdatedListener: ".concat(strValueOf) : new String("Not an OnImmersiveModeUpdatedListener: "));
        } else {
            try {
                ((com.google.android.gms.ads.mediation.k) this.f4790a).onImmersiveModeUpdated(z);
            } catch (Throwable th) {
                mj.b("", th);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void b() throws RemoteException {
        if (!(this.f4790a instanceof MediationInterstitialAdapter)) {
            String strValueOf = String.valueOf(this.f4790a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(strValueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        mj.b("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f4790a).showInterstitial();
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void c() throws RemoteException {
        try {
            this.f4790a.onDestroy();
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void d() throws RemoteException {
        try {
            this.f4790a.onPause();
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void e() throws RemoteException {
        try {
            this.f4790a.onResume();
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void f() throws RemoteException {
        if (!(this.f4790a instanceof MediationRewardedVideoAdAdapter)) {
            String strValueOf = String.valueOf(this.f4790a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not a MediationRewardedVideoAdAdapter: ".concat(strValueOf) : new String("Not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        mj.b("Show rewarded video ad from adapter.");
        try {
            ((MediationRewardedVideoAdAdapter) this.f4790a).showVideo();
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final boolean g() throws RemoteException {
        if (!(this.f4790a instanceof MediationRewardedVideoAdAdapter)) {
            String strValueOf = String.valueOf(this.f4790a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not a MediationRewardedVideoAdAdapter: ".concat(strValueOf) : new String("Not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        mj.b("Check if adapter is initialized.");
        try {
            return ((MediationRewardedVideoAdAdapter) this.f4790a).isInitialized();
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final bcg h() {
        com.google.android.gms.ads.mediation.f fVarA = this.f4791b.a();
        if (fVarA instanceof com.google.android.gms.ads.mediation.g) {
            return new bcu((com.google.android.gms.ads.mediation.g) fVarA);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final bck i() {
        com.google.android.gms.ads.mediation.f fVarA = this.f4791b.a();
        if (fVarA instanceof com.google.android.gms.ads.mediation.h) {
            return new bcv((com.google.android.gms.ads.mediation.h) fVarA);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final Bundle j() {
        if (this.f4790a instanceof zzatl) {
            return ((zzatl) this.f4790a).zzmq();
        }
        String strValueOf = String.valueOf(this.f4790a.getClass().getCanonicalName());
        mj.e(strValueOf.length() != 0 ? "Not a v2 MediationBannerAdapter: ".concat(strValueOf) : new String("Not a v2 MediationBannerAdapter: "));
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final Bundle k() {
        if (this.f4790a instanceof zzatm) {
            return ((zzatm) this.f4790a).getInterstitialAdapterInfo();
        }
        String strValueOf = String.valueOf(this.f4790a.getClass().getCanonicalName());
        mj.e(strValueOf.length() != 0 ? "Not a v2 MediationInterstitialAdapter: ".concat(strValueOf) : new String("Not a v2 MediationInterstitialAdapter: "));
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final Bundle l() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final boolean m() {
        return this.f4790a instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final auy n() {
        com.google.android.gms.ads.formats.i iVarC = this.f4791b.c();
        if (iVarC instanceof avb) {
            return ((avb) iVarC).b();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final aqc o() {
        if (!(this.f4790a instanceof com.google.android.gms.ads.mediation.m)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.m) this.f4790a).getVideoController();
        } catch (Throwable th) {
            mj.b("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final bcn p() {
        com.google.android.gms.ads.mediation.l lVarB = this.f4791b.b();
        if (lVarB != null) {
            return new bdn(lVarB);
        }
        return null;
    }
}
