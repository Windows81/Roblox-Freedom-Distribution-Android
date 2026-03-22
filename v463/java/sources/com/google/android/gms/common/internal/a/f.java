package com.google.android.gms.common.internal.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface f extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.d.b implements f {

        /* JADX INFO: renamed from: com.google.android.gms.common.internal.a.f$a$a, reason: collision with other inner class name */
        public static class C0088a extends com.google.android.gms.internal.d.a implements f {
            C0088a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.service.ICommonCallbacks");
            }

            @Override // com.google.android.gms.common.internal.a.f
            public void a(int i) throws RemoteException {
                Parcel parcelD = d();
                parcelD.writeInt(i);
                b(1, parcelD);
            }
        }

        public a() {
            super("com.google.android.gms.common.internal.service.ICommonCallbacks");
        }

        public static f a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonCallbacks");
            return iInterfaceQueryLocalInterface instanceof f ? (f) iInterfaceQueryLocalInterface : new C0088a(iBinder);
        }

        @Override // com.google.android.gms.internal.d.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                return false;
            }
            a(parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    void a(int i) throws RemoteException;
}
