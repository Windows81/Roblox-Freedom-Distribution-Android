package com.google.android.b.a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.a.b;
import com.google.android.a.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: com.google.android.b.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0074a extends b implements a {

        /* JADX INFO: renamed from: com.google.android.b.a.a$a$a, reason: collision with other inner class name */
        public static class C0075a extends com.google.android.a.a implements a {
            C0075a(IBinder iBinder) {
                super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            }

            @Override // com.google.android.b.a.a
            public final Bundle a(Bundle bundle) throws RemoteException {
                Parcel parcelA = a();
                c.a(parcelA, bundle);
                Parcel parcelA2 = a(parcelA);
                Bundle bundle2 = (Bundle) c.a(parcelA2, Bundle.CREATOR);
                parcelA2.recycle();
                return bundle2;
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new C0075a(iBinder);
        }
    }

    Bundle a(Bundle bundle) throws RemoteException;
}
