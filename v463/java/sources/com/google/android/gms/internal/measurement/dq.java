package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.RemoteException;
import java.util.Collection;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class dq extends jk implements dp {
    public dq() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.jk
    protected final boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        Collection collectionA;
        switch (i) {
            case 1:
                a((zzeu) jl.a(parcel, zzeu.CREATOR), (zzdz) jl.a(parcel, zzdz.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                a((zzjx) jl.a(parcel, zzjx.CREATOR), (zzdz) jl.a(parcel, zzdz.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                a((zzdz) jl.a(parcel, zzdz.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                a((zzeu) jl.a(parcel, zzeu.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                b((zzdz) jl.a(parcel, zzdz.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                collectionA = a((zzdz) jl.a(parcel, zzdz.CREATOR), jl.a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(collectionA);
                return true;
            case 9:
                byte[] bArrA = a((zzeu) jl.a(parcel, zzeu.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrA);
                return true;
            case 10:
                a(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String strC = c((zzdz) jl.a(parcel, zzdz.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(strC);
                return true;
            case 12:
                a((zzed) jl.a(parcel, zzed.CREATOR), (zzdz) jl.a(parcel, zzdz.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                a((zzed) jl.a(parcel, zzed.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                collectionA = a(parcel.readString(), parcel.readString(), jl.a(parcel), (zzdz) jl.a(parcel, zzdz.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(collectionA);
                return true;
            case 15:
                collectionA = a(parcel.readString(), parcel.readString(), parcel.readString(), jl.a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(collectionA);
                return true;
            case 16:
                collectionA = a(parcel.readString(), parcel.readString(), (zzdz) jl.a(parcel, zzdz.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(collectionA);
                return true;
            case 17:
                collectionA = a(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(collectionA);
                return true;
            case 18:
                d((zzdz) jl.a(parcel, zzdz.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
