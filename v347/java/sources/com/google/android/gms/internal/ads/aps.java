package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class aps extends aiz implements apr {
    public aps() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    public static apr asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
        return iInterfaceQueryLocalInterface instanceof apr ? (apr) iInterfaceQueryLocalInterface : new apt(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                apf apfVarCreateBannerAdManager = createBannerAdManager(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), (zzjn) aja.a(parcel, zzjn.CREATOR), parcel.readString(), bbv.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                aja.a(parcel2, apfVarCreateBannerAdManager);
                return true;
            case 2:
                apf apfVarCreateInterstitialAdManager = createInterstitialAdManager(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), (zzjn) aja.a(parcel, zzjn.CREATOR), parcel.readString(), bbv.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                aja.a(parcel2, apfVarCreateInterstitialAdManager);
                return true;
            case 3:
                apa apaVarCreateAdLoaderBuilder = createAdLoaderBuilder(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), parcel.readString(), bbv.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                aja.a(parcel2, apaVarCreateAdLoaderBuilder);
                return true;
            case 4:
                apx mobileAdsSettingsManager = getMobileAdsSettingsManager(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                aja.a(parcel2, mobileAdsSettingsManager);
                return true;
            case 5:
                aug augVarCreateNativeAdViewDelegate = createNativeAdViewDelegate(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                aja.a(parcel2, augVarCreateNativeAdViewDelegate);
                return true;
            case 6:
                gb gbVarCreateRewardedVideoAd = createRewardedVideoAd(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), bbv.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                aja.a(parcel2, gbVarCreateRewardedVideoAd);
                return true;
            case 7:
                ab abVarCreateInAppPurchaseManager = createInAppPurchaseManager(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                aja.a(parcel2, abVarCreateInAppPurchaseManager);
                return true;
            case 8:
                r rVarCreateAdOverlay = createAdOverlay(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                aja.a(parcel2, rVarCreateAdOverlay);
                return true;
            case 9:
                apx mobileAdsSettingsManagerWithClientJarVersion = getMobileAdsSettingsManagerWithClientJarVersion(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                aja.a(parcel2, mobileAdsSettingsManagerWithClientJarVersion);
                return true;
            case 10:
                apf apfVarCreateSearchAdManager = createSearchAdManager(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), (zzjn) aja.a(parcel, zzjn.CREATOR), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                aja.a(parcel2, apfVarCreateSearchAdManager);
                return true;
            case 11:
                aul aulVarCreateNativeAdViewHolderDelegate = createNativeAdViewHolderDelegate(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), a.AbstractBinderC0065a.a(parcel.readStrongBinder()), a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                aja.a(parcel2, aulVarCreateNativeAdViewHolderDelegate);
                return true;
            default:
                return false;
        }
    }
}
