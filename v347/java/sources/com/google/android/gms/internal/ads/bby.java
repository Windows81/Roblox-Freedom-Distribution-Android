package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.b.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class bby extends aiz implements bbx {
    public bby() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.aiz
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        bca bccVar;
        bca bccVar2;
        bca bccVar3;
        bca bccVar4 = null;
        switch (i) {
            case 1:
                com.google.android.gms.b.a aVarA = a.AbstractBinderC0065a.a(parcel.readStrongBinder());
                zzjn zzjnVar = (zzjn) aja.a(parcel, zzjn.CREATOR);
                zzjj zzjjVar = (zzjj) aja.a(parcel, zzjj.CREATOR);
                String string = parcel.readString();
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    bccVar3 = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    bccVar3 = iInterfaceQueryLocalInterface instanceof bca ? (bca) iInterfaceQueryLocalInterface : new bcc(strongBinder);
                }
                a(aVarA, zzjnVar, zzjjVar, string, bccVar3);
                parcel2.writeNoException();
                return true;
            case 2:
                com.google.android.gms.b.a aVarA2 = a();
                parcel2.writeNoException();
                aja.a(parcel2, aVarA2);
                return true;
            case 3:
                com.google.android.gms.b.a aVarA3 = a.AbstractBinderC0065a.a(parcel.readStrongBinder());
                zzjj zzjjVar2 = (zzjj) aja.a(parcel, zzjj.CREATOR);
                String string2 = parcel.readString();
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    bccVar4 = iInterfaceQueryLocalInterface2 instanceof bca ? (bca) iInterfaceQueryLocalInterface2 : new bcc(strongBinder2);
                }
                a(aVarA3, zzjjVar2, string2, bccVar4);
                parcel2.writeNoException();
                return true;
            case 4:
                b();
                parcel2.writeNoException();
                return true;
            case 5:
                c();
                parcel2.writeNoException();
                return true;
            case 6:
                com.google.android.gms.b.a aVarA4 = a.AbstractBinderC0065a.a(parcel.readStrongBinder());
                zzjn zzjnVar2 = (zzjn) aja.a(parcel, zzjn.CREATOR);
                zzjj zzjjVar3 = (zzjj) aja.a(parcel, zzjj.CREATOR);
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    bccVar4 = iInterfaceQueryLocalInterface3 instanceof bca ? (bca) iInterfaceQueryLocalInterface3 : new bcc(strongBinder3);
                }
                a(aVarA4, zzjnVar2, zzjjVar3, string3, string4, bccVar4);
                parcel2.writeNoException();
                return true;
            case 7:
                com.google.android.gms.b.a aVarA5 = a.AbstractBinderC0065a.a(parcel.readStrongBinder());
                zzjj zzjjVar4 = (zzjj) aja.a(parcel, zzjj.CREATOR);
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 == null) {
                    bccVar2 = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    bccVar2 = iInterfaceQueryLocalInterface4 instanceof bca ? (bca) iInterfaceQueryLocalInterface4 : new bcc(strongBinder4);
                }
                a(aVarA5, zzjjVar4, string5, string6, bccVar2);
                parcel2.writeNoException();
                return true;
            case 8:
                d();
                parcel2.writeNoException();
                return true;
            case 9:
                e();
                parcel2.writeNoException();
                return true;
            case 10:
                a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), (zzjj) aja.a(parcel, zzjj.CREATOR), parcel.readString(), hf.a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                a((zzjj) aja.a(parcel, zzjj.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                f();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zG = g();
                parcel2.writeNoException();
                aja.a(parcel2, zG);
                return true;
            case 14:
                com.google.android.gms.b.a aVarA6 = a.AbstractBinderC0065a.a(parcel.readStrongBinder());
                zzjj zzjjVar5 = (zzjj) aja.a(parcel, zzjj.CREATOR);
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 == null) {
                    bccVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    bccVar = iInterfaceQueryLocalInterface5 instanceof bca ? (bca) iInterfaceQueryLocalInterface5 : new bcc(strongBinder5);
                }
                a(aVarA6, zzjjVar5, string7, string8, bccVar, (zzpl) aja.a(parcel, zzpl.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                bcg bcgVarH = h();
                parcel2.writeNoException();
                aja.a(parcel2, bcgVarH);
                return true;
            case 16:
                bck bckVarI = i();
                parcel2.writeNoException();
                aja.a(parcel2, bckVarI);
                return true;
            case 17:
                Bundle bundleJ = j();
                parcel2.writeNoException();
                aja.b(parcel2, bundleJ);
                return true;
            case 18:
                Bundle bundleK = k();
                parcel2.writeNoException();
                aja.b(parcel2, bundleK);
                return true;
            case 19:
                Bundle bundleL = l();
                parcel2.writeNoException();
                aja.b(parcel2, bundleL);
                return true;
            case 20:
                a((zzjj) aja.a(parcel, zzjj.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                boolean zM = m();
                parcel2.writeNoException();
                aja.a(parcel2, zM);
                return true;
            case 23:
                a(a.AbstractBinderC0065a.a(parcel.readStrongBinder()), hf.a(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                auy auyVarN = n();
                parcel2.writeNoException();
                aja.a(parcel2, auyVarN);
                return true;
            case 25:
                a(aja.a(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                aqc aqcVarO = o();
                parcel2.writeNoException();
                aja.a(parcel2, aqcVarO);
                return true;
            case 27:
                bcn bcnVarP = p();
                parcel2.writeNoException();
                aja.a(parcel2, bcnVarP);
                return true;
            default:
                return false;
        }
    }
}
