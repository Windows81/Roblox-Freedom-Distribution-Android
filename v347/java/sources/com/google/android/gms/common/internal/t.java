package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface t extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.c.b implements t {

        /* JADX INFO: renamed from: com.google.android.gms.common.internal.t$a$a, reason: collision with other inner class name */
        public static class C0079a extends com.google.android.gms.internal.c.a implements t {
            C0079a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IResolveAccountCallbacks");
            }

            @Override // com.google.android.gms.common.internal.t
            public void a(ResolveAccountResponse resolveAccountResponse) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, resolveAccountResponse);
                b(2, parcelB);
            }
        }

        public static t a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
            return iInterfaceQueryLocalInterface instanceof t ? (t) iInterfaceQueryLocalInterface : new C0079a(iBinder);
        }

        @Override // com.google.android.gms.internal.c.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 2) {
                return false;
            }
            a((ResolveAccountResponse) com.google.android.gms.internal.c.c.a(parcel, ResolveAccountResponse.CREATOR));
            parcel2.writeNoException();
            return true;
        }
    }

    void a(ResolveAccountResponse resolveAccountResponse) throws RemoteException;
}
