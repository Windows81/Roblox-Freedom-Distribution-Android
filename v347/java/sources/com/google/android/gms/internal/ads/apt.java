package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class apt extends aiy implements apr {
    apt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.apr
    public final apa createAdLoaderBuilder(com.google.android.gms.b.a aVar, String str, bbu bbuVar, int i) throws RemoteException {
        apa apcVar;
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        parcelQ_.writeString(str);
        aja.a(parcelQ_, bbuVar);
        parcelQ_.writeInt(i);
        Parcel parcelA = a(3, parcelQ_);
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            apcVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            apcVar = iInterfaceQueryLocalInterface instanceof apa ? (apa) iInterfaceQueryLocalInterface : new apc(strongBinder);
        }
        parcelA.recycle();
        return apcVar;
    }

    @Override // com.google.android.gms.internal.ads.apr
    public final r createAdOverlay(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        Parcel parcelA = a(8, parcelQ_);
        r rVarA = s.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return rVarA;
    }

    @Override // com.google.android.gms.internal.ads.apr
    public final apf createBannerAdManager(com.google.android.gms.b.a aVar, zzjn zzjnVar, String str, bbu bbuVar, int i) throws RemoteException {
        apf aphVar;
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, zzjnVar);
        parcelQ_.writeString(str);
        aja.a(parcelQ_, bbuVar);
        parcelQ_.writeInt(i);
        Parcel parcelA = a(1, parcelQ_);
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            aphVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            aphVar = iInterfaceQueryLocalInterface instanceof apf ? (apf) iInterfaceQueryLocalInterface : new aph(strongBinder);
        }
        parcelA.recycle();
        return aphVar;
    }

    @Override // com.google.android.gms.internal.ads.apr
    public final ab createInAppPurchaseManager(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        Parcel parcelA = a(7, parcelQ_);
        ab abVarA = ad.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return abVarA;
    }

    @Override // com.google.android.gms.internal.ads.apr
    public final apf createInterstitialAdManager(com.google.android.gms.b.a aVar, zzjn zzjnVar, String str, bbu bbuVar, int i) throws RemoteException {
        apf aphVar;
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, zzjnVar);
        parcelQ_.writeString(str);
        aja.a(parcelQ_, bbuVar);
        parcelQ_.writeInt(i);
        Parcel parcelA = a(2, parcelQ_);
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            aphVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            aphVar = iInterfaceQueryLocalInterface instanceof apf ? (apf) iInterfaceQueryLocalInterface : new aph(strongBinder);
        }
        parcelA.recycle();
        return aphVar;
    }

    @Override // com.google.android.gms.internal.ads.apr
    public final aug createNativeAdViewDelegate(com.google.android.gms.b.a aVar, com.google.android.gms.b.a aVar2) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, aVar2);
        Parcel parcelA = a(5, parcelQ_);
        aug augVarA = auh.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return augVarA;
    }

    @Override // com.google.android.gms.internal.ads.apr
    public final aul createNativeAdViewHolderDelegate(com.google.android.gms.b.a aVar, com.google.android.gms.b.a aVar2, com.google.android.gms.b.a aVar3) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, aVar2);
        aja.a(parcelQ_, aVar3);
        Parcel parcelA = a(11, parcelQ_);
        aul aulVarA = aum.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aulVarA;
    }

    @Override // com.google.android.gms.internal.ads.apr
    public final gb createRewardedVideoAd(com.google.android.gms.b.a aVar, bbu bbuVar, int i) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, bbuVar);
        parcelQ_.writeInt(i);
        Parcel parcelA = a(6, parcelQ_);
        gb gbVarA = gd.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return gbVarA;
    }

    @Override // com.google.android.gms.internal.ads.apr
    public final apf createSearchAdManager(com.google.android.gms.b.a aVar, zzjn zzjnVar, String str, int i) throws RemoteException {
        apf aphVar;
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, zzjnVar);
        parcelQ_.writeString(str);
        parcelQ_.writeInt(i);
        Parcel parcelA = a(10, parcelQ_);
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            aphVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            aphVar = iInterfaceQueryLocalInterface instanceof apf ? (apf) iInterfaceQueryLocalInterface : new aph(strongBinder);
        }
        parcelA.recycle();
        return aphVar;
    }

    @Override // com.google.android.gms.internal.ads.apr
    public final apx getMobileAdsSettingsManager(com.google.android.gms.b.a aVar) throws RemoteException {
        apx apzVar;
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        Parcel parcelA = a(4, parcelQ_);
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            apzVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            apzVar = iInterfaceQueryLocalInterface instanceof apx ? (apx) iInterfaceQueryLocalInterface : new apz(strongBinder);
        }
        parcelA.recycle();
        return apzVar;
    }

    @Override // com.google.android.gms.internal.ads.apr
    public final apx getMobileAdsSettingsManagerWithClientJarVersion(com.google.android.gms.b.a aVar, int i) throws RemoteException {
        apx apzVar;
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        parcelQ_.writeInt(i);
        Parcel parcelA = a(9, parcelQ_);
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            apzVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            apzVar = iInterfaceQueryLocalInterface instanceof apx ? (apx) iInterfaceQueryLocalInterface : new apz(strongBinder);
        }
        parcelA.recycle();
        return apzVar;
    }
}
