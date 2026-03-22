package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface q extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.d.b implements q {

        /* JADX INFO: renamed from: com.google.android.gms.common.internal.q$a$a, reason: collision with other inner class name */
        public static class C0091a extends com.google.android.gms.internal.d.a implements q {
            C0091a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
            }

            @Override // com.google.android.gms.common.internal.q
            public Account a() throws RemoteException {
                Parcel parcelA = a(2, d());
                Account account = (Account) com.google.android.gms.internal.d.c.a(parcelA, Account.CREATOR);
                parcelA.recycle();
                return account;
            }
        }

        public static q a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return iInterfaceQueryLocalInterface instanceof q ? (q) iInterfaceQueryLocalInterface : new C0091a(iBinder);
        }

        @Override // com.google.android.gms.internal.d.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 2) {
                return false;
            }
            Account accountA = a();
            parcel2.writeNoException();
            com.google.android.gms.internal.d.c.b(parcel2, accountA);
            return true;
        }
    }

    Account a() throws RemoteException;
}
