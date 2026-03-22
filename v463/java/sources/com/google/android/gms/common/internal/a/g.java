package com.google.android.gms.common.internal.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.a.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface g extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.d.b implements g {

        /* JADX INFO: renamed from: com.google.android.gms.common.internal.a.g$a$a, reason: collision with other inner class name */
        public static class C0089a extends com.google.android.gms.internal.d.a implements g {
            C0089a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.service.ICommonService");
            }

            @Override // com.google.android.gms.common.internal.a.g
            public void a(f fVar) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, fVar);
                c(1, parcelD);
            }
        }

        public static g a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonService");
            return iInterfaceQueryLocalInterface instanceof g ? (g) iInterfaceQueryLocalInterface : new C0089a(iBinder);
        }

        @Override // com.google.android.gms.internal.d.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                return false;
            }
            a(f.a.a(parcel.readStrongBinder()));
            return true;
        }
    }

    void a(f fVar) throws RemoteException;
}
