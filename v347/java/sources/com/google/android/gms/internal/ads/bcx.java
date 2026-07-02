package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bcx<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> extends bby {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> f4802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NETWORK_EXTRAS f4803b;

    public bcx(MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter, NETWORK_EXTRAS network_extras) {
        this.f4802a = mediationAdapter;
        this.f4803b = network_extras;
    }

    private final SERVER_PARAMETERS a(String str, int i, String str2) throws RemoteException {
        HashMap map;
        try {
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                map = new HashMap(jSONObject.length());
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject.getString(next));
                }
            } else {
                map = new HashMap(0);
            }
            Class<SERVER_PARAMETERS> serverParametersType = this.f4802a.getServerParametersType();
            if (serverParametersType == null) {
                return null;
            }
            SERVER_PARAMETERS server_parametersNewInstance = serverParametersType.newInstance();
            server_parametersNewInstance.load(map);
            return server_parametersNewInstance;
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
        if (!(this.f4802a instanceof MediationBannerAdapter)) {
            String strValueOf = String.valueOf(this.f4802a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(strValueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return com.google.android.gms.b.b.a(((MediationBannerAdapter) this.f4802a).getBannerView());
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, he heVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjj zzjjVar, String str, bca bcaVar) throws RemoteException {
        a(aVar, zzjjVar, str, (String) null, bcaVar);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjj zzjjVar, String str, he heVar, String str2) throws RemoteException {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjj zzjjVar, String str, String str2, bca bcaVar) throws RemoteException {
        if (!(this.f4802a instanceof MediationInterstitialAdapter)) {
            String strValueOf = String.valueOf(this.f4802a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(strValueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        mj.b("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f4802a).requestInterstitialAd(new bcy(bcaVar), (Activity) com.google.android.gms.b.b.a(aVar), a(str, zzjjVar.g, str2), bdl.a(zzjjVar, a(zzjjVar)), this.f4803b);
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjj zzjjVar, String str, String str2, bca bcaVar, zzpl zzplVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjn zzjnVar, zzjj zzjjVar, String str, bca bcaVar) throws RemoteException {
        a(aVar, zzjnVar, zzjjVar, str, null, bcaVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjn zzjnVar, zzjj zzjjVar, String str, String str2, bca bcaVar) throws RemoteException {
        AdSize adSize;
        int i = 0;
        if (!(this.f4802a instanceof MediationBannerAdapter)) {
            String strValueOf = String.valueOf(this.f4802a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(strValueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        mj.b("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f4802a;
            bcy bcyVar = new bcy(bcaVar);
            Activity activity = (Activity) com.google.android.gms.b.b.a(aVar);
            MediationServerParameters mediationServerParametersA = a(str, zzjjVar.g, str2);
            AdSize[] adSizeArr = {AdSize.SMART_BANNER, AdSize.BANNER, AdSize.IAB_MRECT, AdSize.IAB_BANNER, AdSize.IAB_LEADERBOARD, AdSize.IAB_WIDE_SKYSCRAPER};
            while (true) {
                if (i >= 6) {
                    adSize = new AdSize(com.google.android.gms.ads.m.a(zzjnVar.e, zzjnVar.f5804b, zzjnVar.f5803a));
                    break;
                } else {
                    if (adSizeArr[i].getWidth() == zzjnVar.e && adSizeArr[i].getHeight() == zzjnVar.f5804b) {
                        adSize = adSizeArr[i];
                        break;
                    }
                    i++;
                }
            }
            mediationBannerAdapter.requestBannerAd(bcyVar, activity, mediationServerParametersA, adSize, bdl.a(zzjjVar, a(zzjjVar)), this.f4803b);
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(zzjj zzjjVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(zzjj zzjjVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void b() throws RemoteException {
        if (!(this.f4802a instanceof MediationInterstitialAdapter)) {
            String strValueOf = String.valueOf(this.f4802a.getClass().getCanonicalName());
            mj.e(strValueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(strValueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        mj.b("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f4802a).showInterstitial();
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void c() throws RemoteException {
        try {
            this.f4802a.destroy();
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void d() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void e() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void f() {
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final boolean g() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final bcg h() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final bck i() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final Bundle j() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final Bundle k() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final Bundle l() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final boolean m() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final auy n() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final aqc o() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final bcn p() {
        return null;
    }
}
