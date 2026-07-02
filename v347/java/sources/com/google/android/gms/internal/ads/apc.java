package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;

/* JADX INFO: loaded from: classes.dex */
public final class apc extends aiy implements apa {
    apc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final aox a() throws RemoteException {
        aox aozVar;
        Parcel parcelA = a(1, q_());
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            aozVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            aozVar = iInterfaceQueryLocalInterface instanceof aox ? (aox) iInterfaceQueryLocalInterface : new aoz(strongBinder);
        }
        parcelA.recycle();
        return aozVar;
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, publisherAdViewOptions);
        b(9, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(aou aouVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aouVar);
        b(2, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(apu apuVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, apuVar);
        b(7, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(avc avcVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, avcVar);
        b(3, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(avf avfVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, avfVar);
        b(4, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(avp avpVar, zzjn zzjnVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, avpVar);
        aja.a(parcelQ_, zzjnVar);
        b(8, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(avs avsVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, avsVar);
        b(10, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(zzpl zzplVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzplVar);
        b(6, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(String str, avm avmVar, avj avjVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        aja.a(parcelQ_, avmVar);
        aja.a(parcelQ_, avjVar);
        b(5, parcelQ_);
    }
}
