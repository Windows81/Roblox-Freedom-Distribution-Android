package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class dr extends jj implements dp {
    dr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final List<zzjx> a(zzdz zzdzVar, boolean z) throws RemoteException {
        Parcel parcelA = a();
        jl.a(parcelA, zzdzVar);
        jl.a(parcelA, z);
        Parcel parcelA2 = a(7, parcelA);
        ArrayList arrayListCreateTypedArrayList = parcelA2.createTypedArrayList(zzjx.CREATOR);
        parcelA2.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final List<zzed> a(String str, String str2, zzdz zzdzVar) throws RemoteException {
        Parcel parcelA = a();
        parcelA.writeString(str);
        parcelA.writeString(str2);
        jl.a(parcelA, zzdzVar);
        Parcel parcelA2 = a(16, parcelA);
        ArrayList arrayListCreateTypedArrayList = parcelA2.createTypedArrayList(zzed.CREATOR);
        parcelA2.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final List<zzed> a(String str, String str2, String str3) throws RemoteException {
        Parcel parcelA = a();
        parcelA.writeString(str);
        parcelA.writeString(str2);
        parcelA.writeString(str3);
        Parcel parcelA2 = a(17, parcelA);
        ArrayList arrayListCreateTypedArrayList = parcelA2.createTypedArrayList(zzed.CREATOR);
        parcelA2.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final List<zzjx> a(String str, String str2, String str3, boolean z) throws RemoteException {
        Parcel parcelA = a();
        parcelA.writeString(str);
        parcelA.writeString(str2);
        parcelA.writeString(str3);
        jl.a(parcelA, z);
        Parcel parcelA2 = a(15, parcelA);
        ArrayList arrayListCreateTypedArrayList = parcelA2.createTypedArrayList(zzjx.CREATOR);
        parcelA2.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final List<zzjx> a(String str, String str2, boolean z, zzdz zzdzVar) throws RemoteException {
        Parcel parcelA = a();
        parcelA.writeString(str);
        parcelA.writeString(str2);
        jl.a(parcelA, z);
        jl.a(parcelA, zzdzVar);
        Parcel parcelA2 = a(14, parcelA);
        ArrayList arrayListCreateTypedArrayList = parcelA2.createTypedArrayList(zzjx.CREATOR);
        parcelA2.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(long j, String str, String str2, String str3) throws RemoteException {
        Parcel parcelA = a();
        parcelA.writeLong(j);
        parcelA.writeString(str);
        parcelA.writeString(str2);
        parcelA.writeString(str3);
        b(10, parcelA);
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(zzdz zzdzVar) throws RemoteException {
        Parcel parcelA = a();
        jl.a(parcelA, zzdzVar);
        b(4, parcelA);
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(zzed zzedVar) throws RemoteException {
        Parcel parcelA = a();
        jl.a(parcelA, zzedVar);
        b(13, parcelA);
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(zzed zzedVar, zzdz zzdzVar) throws RemoteException {
        Parcel parcelA = a();
        jl.a(parcelA, zzedVar);
        jl.a(parcelA, zzdzVar);
        b(12, parcelA);
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(zzeu zzeuVar, zzdz zzdzVar) throws RemoteException {
        Parcel parcelA = a();
        jl.a(parcelA, zzeuVar);
        jl.a(parcelA, zzdzVar);
        b(1, parcelA);
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(zzeu zzeuVar, String str, String str2) throws RemoteException {
        Parcel parcelA = a();
        jl.a(parcelA, zzeuVar);
        parcelA.writeString(str);
        parcelA.writeString(str2);
        b(5, parcelA);
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(zzjx zzjxVar, zzdz zzdzVar) throws RemoteException {
        Parcel parcelA = a();
        jl.a(parcelA, zzjxVar);
        jl.a(parcelA, zzdzVar);
        b(2, parcelA);
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final byte[] a(zzeu zzeuVar, String str) throws RemoteException {
        Parcel parcelA = a();
        jl.a(parcelA, zzeuVar);
        parcelA.writeString(str);
        Parcel parcelA2 = a(9, parcelA);
        byte[] bArrCreateByteArray = parcelA2.createByteArray();
        parcelA2.recycle();
        return bArrCreateByteArray;
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void b(zzdz zzdzVar) throws RemoteException {
        Parcel parcelA = a();
        jl.a(parcelA, zzdzVar);
        b(6, parcelA);
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final String c(zzdz zzdzVar) throws RemoteException {
        Parcel parcelA = a();
        jl.a(parcelA, zzdzVar);
        Parcel parcelA2 = a(11, parcelA);
        String string = parcelA2.readString();
        parcelA2.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void d(zzdz zzdzVar) throws RemoteException {
        Parcel parcelA = a();
        jl.a(parcelA, zzdzVar);
        b(18, parcelA);
    }
}
