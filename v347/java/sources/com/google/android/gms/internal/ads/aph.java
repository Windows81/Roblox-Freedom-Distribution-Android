package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: classes.dex */
public final class aph extends aiy implements apf {
    aph(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final String C() throws RemoteException {
        Parcel parcelA = a(31, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final apo D() throws RemoteException {
        apo apqVar;
        Parcel parcelA = a(32, q_());
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            apqVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            apqVar = iInterfaceQueryLocalInterface instanceof apo ? (apo) iInterfaceQueryLocalInterface : new apq(strongBinder);
        }
        parcelA.recycle();
        return apqVar;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final aou E() throws RemoteException {
        aou aowVar;
        Parcel parcelA = a(33, q_());
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            aowVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            aowVar = iInterfaceQueryLocalInterface instanceof aou ? (aou) iInterfaceQueryLocalInterface : new aow(strongBinder);
        }
        parcelA.recycle();
        return aowVar;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void H() throws RemoteException {
        b(9, q_());
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final String a() throws RemoteException {
        Parcel parcelA = a(18, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(af afVar, String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, afVar);
        parcelQ_.writeString(str);
        b(15, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(aor aorVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aorVar);
        b(20, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(aou aouVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, aouVar);
        b(7, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(apk apkVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, apkVar);
        b(36, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(apo apoVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, apoVar);
        b(8, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(apu apuVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, apuVar);
        b(21, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(asi asiVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, asiVar);
        b(19, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(gh ghVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, ghVar);
        b(24, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(y yVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, yVar);
        b(14, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(zzjn zzjnVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzjnVar);
        b(13, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(zzlu zzluVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzluVar);
        b(30, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(zzmu zzmuVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzmuVar);
        b(29, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void a(String str) throws RemoteException {
        Parcel parcelQ_ = q_();
        parcelQ_.writeString(str);
        b(25, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void b(boolean z) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, z);
        b(22, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final boolean b(zzjj zzjjVar) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, zzjjVar);
        Parcel parcelA = a(4, parcelQ_);
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void c(boolean z) throws RemoteException {
        Parcel parcelQ_ = q_();
        aja.a(parcelQ_, z);
        b(34, parcelQ_);
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void i() throws RemoteException {
        b(2, q_());
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final com.google.android.gms.b.a j() throws RemoteException {
        Parcel parcelA = a(1, q_());
        com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcelA.readStrongBinder());
        parcelA.recycle();
        return aVarA;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final zzjn k() throws RemoteException {
        Parcel parcelA = a(12, q_());
        zzjn zzjnVar = (zzjn) aja.a(parcelA, zzjn.CREATOR);
        parcelA.recycle();
        return zzjnVar;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final boolean l() throws RemoteException {
        Parcel parcelA = a(3, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void m() throws RemoteException {
        b(11, q_());
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void n() throws RemoteException {
        b(5, q_());
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void o() throws RemoteException {
        b(6, q_());
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final Bundle p() throws RemoteException {
        Parcel parcelA = a(37, q_());
        Bundle bundle = (Bundle) aja.a(parcelA, Bundle.CREATOR);
        parcelA.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final String p_() throws RemoteException {
        Parcel parcelA = a(35, q_());
        String string = parcelA.readString();
        parcelA.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final void q() throws RemoteException {
        b(10, q_());
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final boolean r() throws RemoteException {
        Parcel parcelA = a(23, q_());
        boolean zA = aja.a(parcelA);
        parcelA.recycle();
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.apf
    public final aqc s() throws RemoteException {
        aqc aqeVar;
        Parcel parcelA = a(26, q_());
        IBinder strongBinder = parcelA.readStrongBinder();
        if (strongBinder == null) {
            aqeVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            aqeVar = iInterfaceQueryLocalInterface instanceof aqc ? (aqc) iInterfaceQueryLocalInterface : new aqe(strongBinder);
        }
        parcelA.recycle();
        return aqeVar;
    }
}
