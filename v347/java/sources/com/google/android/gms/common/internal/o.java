package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface o extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.c.b implements o {

        /* JADX INFO: renamed from: com.google.android.gms.common.internal.o$a$a, reason: collision with other inner class name */
        public static class C0075a extends com.google.android.gms.internal.c.a implements o {
            C0075a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
            }

            @Override // com.google.android.gms.common.internal.o
            public Account a() throws RemoteException {
                Parcel parcelA = a(2, b());
                Account account = (Account) com.google.android.gms.internal.c.c.a(parcelA, Account.CREATOR);
                parcelA.recycle();
                return account;
            }
        }

        public static o a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return iInterfaceQueryLocalInterface instanceof o ? (o) iInterfaceQueryLocalInterface : new C0075a(iBinder);
        }

        @Override // com.google.android.gms.internal.c.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 2) {
                return false;
            }
            Account accountA = a();
            parcel2.writeNoException();
            com.google.android.gms.internal.c.c.b(parcel2, accountA);
            return true;
        }
    }

    Account a() throws RemoteException;
}
