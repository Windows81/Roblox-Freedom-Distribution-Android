package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class bbz extends aiy implements bbx {
    bbz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final com.google.android.gms.b.a a() throws RemoteException {
        Parcel parcelA = a(2, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        b(21, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, he heVar, List<String> list) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, heVar);
        parcelQ_.writeStringList(list);
        b(23, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjj zzjjVar, String str, bca bcaVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, zzjjVar);
        parcelQ_.writeString(str);
        aja.a(parcelQ_, bcaVar);
        b(3, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjj zzjjVar, String str, he heVar, String str2) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, zzjjVar);
        parcelQ_.writeString(str);
        aja.a(parcelQ_, heVar);
        parcelQ_.writeString(str2);
        b(10, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjj zzjjVar, String str, String str2, bca bcaVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, zzjjVar);
        parcelQ_.writeString(str);
        parcelQ_.writeString(str2);
        aja.a(parcelQ_, bcaVar);
        b(7, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjj zzjjVar, String str, String str2, bca bcaVar, zzpl zzplVar, List<String> list) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, zzjjVar);
        parcelQ_.writeString(str);
        parcelQ_.writeString(str2);
        aja.a(parcelQ_, bcaVar);
        aja.a(parcelQ_, zzplVar);
        parcelQ_.writeStringList(list);
        b(14, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjn zzjnVar, zzjj zzjjVar, String str, bca bcaVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, zzjnVar);
        aja.a(parcelQ_, zzjjVar);
        parcelQ_.writeString(str);
        aja.a(parcelQ_, bcaVar);
        b(1, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(com.google.android.gms.b.a aVar, zzjn zzjnVar, zzjj zzjjVar, String str, String str2, bca bcaVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aVar);
        aja.a(parcelQ_, zzjnVar);
        aja.a(parcelQ_, zzjjVar);
        parcelQ_.writeString(str);
        parcelQ_.writeString(str2);
        aja.a(parcelQ_, bcaVar);
        b(6, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(zzjj zzjjVar, String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzjjVar);
        parcelQ_.writeString(str);
        b(11, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(zzjj zzjjVar, String str, String str2) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzjjVar);
        parcelQ_.writeString(str);
        parcelQ_.writeString(str2);
        b(20, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void a(boolean z) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, z);
        b(25, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void b() throws RemoteException {
        b(4, q_());
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void c() throws RemoteException {
        b(5, q_());
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void d() throws RemoteException {
        b(8, q_());
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void e() throws RemoteException {
        b(9, q_());
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final void f() throws RemoteException {
        b(12, q_());
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final boolean g() throws RemoteException {
        Parcel parcelA = a(13, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final bcg h() throws RemoteException {
        bcg bcjVar;
        Parcel parcelA = a(15, q_());
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            bcjVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            bcjVar = iInterfaceQueryLocalInterface instanceof bcg ? (bcg) iInterfaceQueryLocalInterface : new bcj(strongBinder);
        }
        parcelA.recycle();
        return bcjVar;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final bck i() throws RemoteException {
        bck bcmVar;
        Parcel parcelA = a(16, q_());
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            bcmVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            bcmVar = iInterfaceQueryLocalInterface instanceof bck ? (bck) iInterfaceQueryLocalInterface : new bcm(strongBinder);
        }
        parcelA.recycle();
        return bcmVar;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final Bundle j() throws RemoteException {
        Parcel parcelA = a(17, q_());
        Bundle bundle = (Bundle) aja.a(parcelA, Bundle.CREATOR);
        parcelA.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final Bundle k() throws RemoteException {
        Parcel parcelA = a(18, q_());
        Bundle bundle = (Bundle) aja.a(parcelA, Bundle.CREATOR);
        parcelA.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final Bundle l() throws RemoteException {
        Parcel parcelA = a(19, q_());
        Bundle bundle = (Bundle) aja.a(parcelA, Bundle.CREATOR);
        parcelA.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final boolean m() throws RemoteException {
        Parcel parcelA = a(22, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final auy n() throws RemoteException {
        Parcel parcelA = a(24, q_());
        auy auyVarA = auz.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return auyVarA;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final aqc o() throws RemoteException {
        Parcel parcelA = a(26, q_());
        aqc aqcVarA = aqd.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aqcVarA;
    }

    @Override // com.google.android.gms.internal.ads.bbx
    public final bcn p() throws RemoteException {
        bcn bcpVar;
        Parcel parcelA = a(27, q_());
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            bcpVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            bcpVar = iInterfaceQueryLocalInterface instanceof bcn ? (bcn) iInterfaceQueryLocalInterface : new bcp(strongBinder);
        }
        parcelA.recycle();
        return bcpVar;
    }
}
