package com.a.b.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface a extends IInterface {
    int a(int i, String str, String str2) throws RemoteException;

    Bundle a(int i, String str, String str2, Bundle bundle) throws RemoteException;

    Bundle a(int i, String str, String str2, String str3) throws RemoteException;

    Bundle a(int i, String str, String str2, String str3, Bundle bundle) throws RemoteException;

    Bundle a(int i, String str, String str2, String str3, String str4) throws RemoteException;

    Bundle a(int i, String str, String str2, String str3, String str4, Bundle bundle) throws RemoteException;

    Bundle a(int i, String str, List<String> list, String str2, String str3, String str4) throws RemoteException;

    int b(int i, String str, String str2) throws RemoteException;

    int b(int i, String str, String str2, Bundle bundle) throws RemoteException;

    int c(int i, String str, String str2) throws RemoteException;

    /* JADX INFO: renamed from: com.a.b.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0062a extends Binder implements a {
        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof a)) {
                return (a) iInterfaceQueryLocalInterface;
            }
            return new C0063a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.android.vending.billing.IInAppBillingService");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int iA = a(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iA);
                    return true;
                case 2:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle bundleA = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (bundleA != null) {
                        parcel2.writeInt(1);
                        bundleA.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle bundleA2 = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (bundleA2 != null) {
                        parcel2.writeInt(1);
                        bundleA2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 4:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle bundleA3 = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (bundleA3 != null) {
                        parcel2.writeInt(1);
                        bundleA3.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 5:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int iB = b(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iB);
                    return true;
                case 6:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int iC = c(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iC);
                    return true;
                case 7:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle bundleA4 = a(parcel.readInt(), parcel.readString(), parcel.createStringArrayList(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (bundleA4 != null) {
                        parcel2.writeInt(1);
                        bundleA4.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 8:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle bundleA5 = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (bundleA5 != null) {
                        parcel2.writeInt(1);
                        bundleA5.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 9:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle bundleA6 = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (bundleA6 != null) {
                        parcel2.writeInt(1);
                        bundleA6.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 10:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int iB2 = b(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iB2);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* JADX INFO: renamed from: com.a.b.a.a$a$a, reason: collision with other inner class name */
        private static class C0063a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static a f2881a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f2882b;

            C0063a(IBinder iBinder) {
                this.f2882b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f2882b;
            }

            @Override // com.a.b.a.a
            public int a(int i, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.f2882b.transact(1, parcelObtain, parcelObtain2, 0) && AbstractBinderC0062a.a() != null) {
                        return AbstractBinderC0062a.a().a(i, str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.a.b.a.a
            public Bundle a(int i, String str, String str2, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f2882b.transact(2, parcelObtain, parcelObtain2, 0) && AbstractBinderC0062a.a() != null) {
                        return AbstractBinderC0062a.a().a(i, str, str2, bundle);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.a.b.a.a
            public Bundle a(int i, String str, String str2, String str3, String str4) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeString(str4);
                    if (!this.f2882b.transact(3, parcelObtain, parcelObtain2, 0) && AbstractBinderC0062a.a() != null) {
                        return AbstractBinderC0062a.a().a(i, str, str2, str3, str4);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.a.b.a.a
            public Bundle a(int i, String str, String str2, String str3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (!this.f2882b.transact(4, parcelObtain, parcelObtain2, 0) && AbstractBinderC0062a.a() != null) {
                        return AbstractBinderC0062a.a().a(i, str, str2, str3);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.a.b.a.a
            public int b(int i, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.f2882b.transact(5, parcelObtain, parcelObtain2, 0) && AbstractBinderC0062a.a() != null) {
                        return AbstractBinderC0062a.a().b(i, str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.a.b.a.a
            public int c(int i, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.f2882b.transact(6, parcelObtain, parcelObtain2, 0) && AbstractBinderC0062a.a() != null) {
                        return AbstractBinderC0062a.a().c(i, str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.a.b.a.a
            public Bundle a(int i, String str, List<String> list, String str2, String str3, String str4) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeString(str4);
                    try {
                        if (!this.f2882b.transact(7, parcelObtain, parcelObtain2, 0) && AbstractBinderC0062a.a() != null) {
                            Bundle bundleA = AbstractBinderC0062a.a().a(i, str, list, str2, str3, str4);
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                            return bundleA;
                        }
                        parcelObtain2.readException();
                        Bundle bundle = parcelObtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return bundle;
                    } catch (Throwable th) {
                        th = th;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // com.a.b.a.a
            public Bundle a(int i, String str, String str2, String str3, String str4, Bundle bundle) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeString(str4);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    try {
                        if (!this.f2882b.transact(8, parcelObtain, parcelObtain2, 0) && AbstractBinderC0062a.a() != null) {
                            Bundle bundleA = AbstractBinderC0062a.a().a(i, str, str2, str3, str4, bundle);
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                            return bundleA;
                        }
                        parcelObtain2.readException();
                        Bundle bundle2 = parcelObtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return bundle2;
                    } catch (Throwable th) {
                        th = th;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // com.a.b.a.a
            public Bundle a(int i, String str, String str2, String str3, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f2882b.transact(9, parcelObtain, parcelObtain2, 0) && AbstractBinderC0062a.a() != null) {
                        return AbstractBinderC0062a.a().a(i, str, str2, str3, bundle);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.a.b.a.a
            public int b(int i, String str, String str2, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f2882b.transact(10, parcelObtain, parcelObtain2, 0) && AbstractBinderC0062a.a() != null) {
                        return AbstractBinderC0062a.a().b(i, str, str2, bundle);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static a a() {
            return C0063a.f2881a;
        }
    }
}
