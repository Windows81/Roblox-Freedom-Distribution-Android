package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.r;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface s extends IInterface {

    public static abstract class a extends Binder implements s {

        /* JADX INFO: renamed from: com.google.android.gms.common.internal.s$a$a, reason: collision with other inner class name */
        private static class C0077a implements s {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final IBinder f3516a;

            C0077a(IBinder iBinder) {
                this.f3516a = iBinder;
            }

            @Override // com.google.android.gms.common.internal.s
            public final void a(r rVar, GetServiceRequest getServiceRequest) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    parcelObtain.writeStrongBinder(rVar != null ? rVar.asBinder() : null);
                    if (getServiceRequest != null) {
                        parcelObtain.writeInt(1);
                        getServiceRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f3516a.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f3516a;
            }
        }

        public static s a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof s)) ? new C0077a(iBinder) : (s) iInterfaceQueryLocalInterface;
        }

        protected void a(int i, r rVar, int i2, String str, String str2, String[] strArr, Bundle bundle, IBinder iBinder, String str3, String str4) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        protected void a(r rVar, ValidateAccountRequest validateAccountRequest) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            String string;
            String string2;
            IBinder strongBinder;
            Bundle bundle;
            String[] strArrCreateStringArray;
            String string3;
            if (i > 16777215) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            r rVarA = r.a.a(parcel.readStrongBinder());
            if (i == 46) {
                a(rVarA, parcel.readInt() != 0 ? GetServiceRequest.CREATOR.createFromParcel(parcel) : null);
            } else if (i == 47) {
                a(rVarA, parcel.readInt() != 0 ? ValidateAccountRequest.CREATOR.createFromParcel(parcel) : null);
            } else {
                int i3 = parcel.readInt();
                String string4 = i != 4 ? parcel.readString() : null;
                switch (i) {
                    case 1:
                        string2 = parcel.readString();
                        strArrCreateStringArray = parcel.createStringArray();
                        string3 = parcel.readString();
                        if (parcel.readInt() == 0) {
                            string = null;
                            strongBinder = null;
                            bundle = null;
                        } else {
                            string = null;
                            strongBinder = null;
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        break;
                    case 2:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 23:
                    case 25:
                    case 27:
                    case 37:
                    case 38:
                    case 41:
                    case 43:
                        if (parcel.readInt() != 0) {
                            string = null;
                            string2 = null;
                            strongBinder = null;
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                            strArrCreateStringArray = null;
                            string3 = null;
                            break;
                        }
                    case 3:
                    case 4:
                    case 21:
                    case 22:
                    case 24:
                    case 26:
                    case 28:
                    case 29:
                    case 31:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case 39:
                    case 40:
                    case 42:
                    default:
                        string = null;
                        string2 = null;
                        strongBinder = null;
                        bundle = null;
                        strArrCreateStringArray = null;
                        string3 = null;
                        break;
                    case 9:
                        string3 = parcel.readString();
                        strArrCreateStringArray = parcel.createStringArray();
                        string2 = parcel.readString();
                        strongBinder = parcel.readStrongBinder();
                        string = parcel.readString();
                        bundle = parcel.readInt() == 0 ? null : (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        break;
                    case 10:
                        string3 = parcel.readString();
                        strArrCreateStringArray = parcel.createStringArray();
                        string = null;
                        string2 = null;
                        strongBinder = null;
                        bundle = null;
                        break;
                    case 19:
                        strongBinder = parcel.readStrongBinder();
                        if (parcel.readInt() == 0) {
                            string = null;
                            string2 = null;
                            bundle = null;
                            strArrCreateStringArray = null;
                            string3 = null;
                        } else {
                            string = null;
                            string2 = null;
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                            strArrCreateStringArray = null;
                            string3 = null;
                        }
                        break;
                    case 20:
                    case 30:
                        strArrCreateStringArray = parcel.createStringArray();
                        string3 = parcel.readString();
                        if (parcel.readInt() == 0) {
                            string = null;
                            string2 = null;
                            strongBinder = null;
                            bundle = null;
                        } else {
                            string = null;
                            string2 = null;
                            strongBinder = null;
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        break;
                    case 34:
                        string3 = parcel.readString();
                        string = null;
                        string2 = null;
                        strongBinder = null;
                        bundle = null;
                        strArrCreateStringArray = null;
                        break;
                }
                a(i, rVarA, i3, string4, string3, strArrCreateStringArray, bundle, strongBinder, string2, string);
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void a(r rVar, GetServiceRequest getServiceRequest) throws RemoteException;
}
