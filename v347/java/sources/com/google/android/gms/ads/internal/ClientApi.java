package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Keep;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.internal.ads.apa;
import com.google.android.gms.internal.ads.apf;
import com.google.android.gms.internal.ads.aps;
import com.google.android.gms.internal.ads.apx;
import com.google.android.gms.internal.ads.ats;
import com.google.android.gms.internal.ads.atu;
import com.google.android.gms.internal.ads.aug;
import com.google.android.gms.internal.ads.aul;
import com.google.android.gms.internal.ads.bbu;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.fs;
import com.google.android.gms.internal.ads.gb;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzjn;
import java.util.HashMap;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@Keep
@cm
@DynamiteApi
@ParametersAreNonnullByDefault
public class ClientApi extends aps {
    @Override // com.google.android.gms.internal.ads.apr
    public apa createAdLoaderBuilder(com.google.android.gms.b.a aVar, String str, bbu bbuVar, int i) {
        Context context = (Context) com.google.android.gms.b.b.a(aVar);
        aw.e();
        return new l(context, str, bbuVar, new zzang(12451000, i, true, jm.k(context)), bt.a(context));
    }

    @Override // com.google.android.gms.internal.ads.apr
    public com.google.android.gms.internal.ads.r createAdOverlay(com.google.android.gms.b.a aVar) {
        Activity activity = (Activity) com.google.android.gms.b.b.a(aVar);
        AdOverlayInfoParcel adOverlayInfoParcelA = AdOverlayInfoParcel.a(activity.getIntent());
        if (adOverlayInfoParcelA == null) {
            return new com.google.android.gms.ads.internal.overlay.q(activity);
        }
        switch (adOverlayInfoParcelA.k) {
        }
        return new com.google.android.gms.ads.internal.overlay.q(activity);
    }

    @Override // com.google.android.gms.internal.ads.apr
    public apf createBannerAdManager(com.google.android.gms.b.a aVar, zzjn zzjnVar, String str, bbu bbuVar, int i) throws RemoteException {
        Context context = (Context) com.google.android.gms.b.b.a(aVar);
        aw.e();
        return new bv(context, zzjnVar, str, bbuVar, new zzang(12451000, i, true, jm.k(context)), bt.a(context));
    }

    @Override // com.google.android.gms.internal.ads.apr
    public com.google.android.gms.internal.ads.ab createInAppPurchaseManager(com.google.android.gms.b.a aVar) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004b  */
    @Override // com.google.android.gms.internal.ads.apr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.android.gms.internal.ads.apf createInterstitialAdManager(com.google.android.gms.b.a r14, com.google.android.gms.internal.ads.zzjn r15, java.lang.String r16, com.google.android.gms.internal.ads.bbu r17, int r18) throws android.os.RemoteException {
        /*
            r13 = this;
            java.lang.Object r2 = com.google.android.gms.b.b.a(r14)
            android.content.Context r2 = (android.content.Context) r2
            com.google.android.gms.internal.ads.aro.a(r2)
            com.google.android.gms.internal.ads.zzang r5 = new com.google.android.gms.internal.ads.zzang
            r1 = 12451000(0xbdfcb8, float:1.7447567E-38)
            r3 = 1
            com.google.android.gms.ads.internal.aw.e()
            boolean r4 = com.google.android.gms.internal.ads.jm.k(r2)
            r0 = r18
            r5.<init>(r1, r0, r3, r4)
            java.lang.String r1 = "reward_mb"
            java.lang.String r3 = r15.f5803a
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L37
            com.google.android.gms.internal.ads.are<java.lang.Boolean> r1 = com.google.android.gms.internal.ads.aro.aT
            com.google.android.gms.internal.ads.arm r4 = com.google.android.gms.internal.ads.aoo.f()
            java.lang.Object r1 = r4.a(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 != 0) goto L4b
        L37:
            if (r3 == 0) goto L5c
            com.google.android.gms.internal.ads.are<java.lang.Boolean> r1 = com.google.android.gms.internal.ads.aro.aU
            com.google.android.gms.internal.ads.arm r3 = com.google.android.gms.internal.ads.aoo.f()
            java.lang.Object r1 = r3.a(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L5c
        L4b:
            r1 = 1
        L4c:
            if (r1 == 0) goto L5e
            com.google.android.gms.internal.ads.ayf r1 = new com.google.android.gms.internal.ads.ayf
            com.google.android.gms.ads.internal.bt r6 = com.google.android.gms.ads.internal.bt.a(r2)
            r3 = r16
            r4 = r17
            r1.<init>(r2, r3, r4, r5, r6)
        L5b:
            return r1
        L5c:
            r1 = 0
            goto L4c
        L5e:
            com.google.android.gms.ads.internal.m r6 = new com.google.android.gms.ads.internal.m
            com.google.android.gms.ads.internal.bt r12 = com.google.android.gms.ads.internal.bt.a(r2)
            r7 = r2
            r8 = r15
            r9 = r16
            r10 = r17
            r11 = r5
            r6.<init>(r7, r8, r9, r10, r11, r12)
            r1 = r6
            goto L5b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.ClientApi.createInterstitialAdManager(com.google.android.gms.b.a, com.google.android.gms.internal.ads.zzjn, java.lang.String, com.google.android.gms.internal.ads.bbu, int):com.google.android.gms.internal.ads.apf");
    }

    @Override // com.google.android.gms.internal.ads.apr
    public aug createNativeAdViewDelegate(com.google.android.gms.b.a aVar, com.google.android.gms.b.a aVar2) {
        return new ats((FrameLayout) com.google.android.gms.b.b.a(aVar), (FrameLayout) com.google.android.gms.b.b.a(aVar2));
    }

    @Override // com.google.android.gms.internal.ads.apr
    public aul createNativeAdViewHolderDelegate(com.google.android.gms.b.a aVar, com.google.android.gms.b.a aVar2, com.google.android.gms.b.a aVar3) {
        return new atu((View) com.google.android.gms.b.b.a(aVar), (HashMap) com.google.android.gms.b.b.a(aVar2), (HashMap) com.google.android.gms.b.b.a(aVar3));
    }

    @Override // com.google.android.gms.internal.ads.apr
    public gb createRewardedVideoAd(com.google.android.gms.b.a aVar, bbu bbuVar, int i) {
        Context context = (Context) com.google.android.gms.b.b.a(aVar);
        aw.e();
        return new fs(context, bt.a(context), bbuVar, new zzang(12451000, i, true, jm.k(context)));
    }

    @Override // com.google.android.gms.internal.ads.apr
    public apf createSearchAdManager(com.google.android.gms.b.a aVar, zzjn zzjnVar, String str, int i) throws RemoteException {
        Context context = (Context) com.google.android.gms.b.b.a(aVar);
        aw.e();
        return new aq(context, zzjnVar, str, new zzang(12451000, i, true, jm.k(context)));
    }

    @Override // com.google.android.gms.internal.ads.apr
    public apx getMobileAdsSettingsManager(com.google.android.gms.b.a aVar) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.apr
    public apx getMobileAdsSettingsManagerWithClientJarVersion(com.google.android.gms.b.a aVar, int i) {
        Context context = (Context) com.google.android.gms.b.b.a(aVar);
        aw.e();
        return y.a(context, new zzang(12451000, i, true, jm.k(context)));
    }
}
