package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface w extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.d.b implements w {

        /* JADX INFO: renamed from: com.google.android.gms.common.internal.w$a$a, reason: collision with other inner class name */
        public static class C0097a extends com.google.android.gms.internal.d.a implements w {
            C0097a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IResolveAccountCallbacks");
            }

            @Override // com.google.android.gms.common.internal.w
            public void a(ResolveAccountResponse resolveAccountResponse) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, resolveAccountResponse);
                b(2, parcelD);
            }
        }

        public static w a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
            return iInterfaceQueryLocalInterface instanceof w ? (w) iInterfaceQueryLocalInterface : new C0097a(iBinder);
        }

        @Override // com.google.android.gms.internal.d.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 2) {
                return false;
            }
            a((ResolveAccountResponse) com.google.android.gms.internal.d.c.a(parcel, ResolveAccountResponse.CREATOR));
            parcel2.writeNoException();
            return true;
        }
    }

    void a(ResolveAccountResponse resolveAccountResponse) throws RemoteException;
}
