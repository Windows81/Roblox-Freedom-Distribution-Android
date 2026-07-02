package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface apr extends IInterface {
    apa createAdLoaderBuilder(com.google.android.gms.b.a aVar, String str, bbu bbuVar, int i) throws RemoteException;

    r createAdOverlay(com.google.android.gms.b.a aVar) throws RemoteException;

    apf createBannerAdManager(com.google.android.gms.b.a aVar, zzjn zzjnVar, String str, bbu bbuVar, int i) throws RemoteException;

    ab createInAppPurchaseManager(com.google.android.gms.b.a aVar) throws RemoteException;

    apf createInterstitialAdManager(com.google.android.gms.b.a aVar, zzjn zzjnVar, String str, bbu bbuVar, int i) throws RemoteException;

    aug createNativeAdViewDelegate(com.google.android.gms.b.a aVar, com.google.android.gms.b.a aVar2) throws RemoteException;

    aul createNativeAdViewHolderDelegate(com.google.android.gms.b.a aVar, com.google.android.gms.b.a aVar2, com.google.android.gms.b.a aVar3) throws RemoteException;

    gb createRewardedVideoAd(com.google.android.gms.b.a aVar, bbu bbuVar, int i) throws RemoteException;

    apf createSearchAdManager(com.google.android.gms.b.a aVar, zzjn zzjnVar, String str, int i) throws RemoteException;

    apx getMobileAdsSettingsManager(com.google.android.gms.b.a aVar) throws RemoteException;

    apx getMobileAdsSettingsManagerWithClientJarVersion(com.google.android.gms.b.a aVar, int i) throws RemoteException;
}
