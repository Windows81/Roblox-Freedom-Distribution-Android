package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface d extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.d.b implements d {

        /* JADX INFO: renamed from: com.google.android.gms.signin.internal.d$a$a, reason: collision with other inner class name */
        public static class C0105a extends com.google.android.gms.internal.d.a implements d {
            C0105a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.signin.internal.ISignInCallbacks");
            }

            @Override // com.google.android.gms.signin.internal.d
            public void a(ConnectionResult connectionResult, AuthAccountResult authAccountResult) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, connectionResult);
                com.google.android.gms.internal.d.c.a(parcelD, authAccountResult);
                b(3, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.d
            public void a(Status status) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, status);
                b(4, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.d
            public void a(Status status, GoogleSignInAccount googleSignInAccount) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, status);
                com.google.android.gms.internal.d.c.a(parcelD, googleSignInAccount);
                b(7, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.d
            public void a(SignInResponse signInResponse) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, signInResponse);
                b(8, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.d
            public void b(Status status) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, status);
                b(6, parcelD);
            }
        }

        public a() {
            super("com.google.android.gms.signin.internal.ISignInCallbacks");
        }

        public static d a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
            return iInterfaceQueryLocalInterface instanceof d ? (d) iInterfaceQueryLocalInterface : new C0105a(iBinder);
        }

        @Override // com.google.android.gms.internal.d.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 3) {
                a((ConnectionResult) com.google.android.gms.internal.d.c.a(parcel, ConnectionResult.CREATOR), (AuthAccountResult) com.google.android.gms.internal.d.c.a(parcel, AuthAccountResult.CREATOR));
            } else if (i == 4) {
                a((Status) com.google.android.gms.internal.d.c.a(parcel, Status.CREATOR));
            } else if (i == 6) {
                b((Status) com.google.android.gms.internal.d.c.a(parcel, Status.CREATOR));
            } else if (i == 7) {
                a((Status) com.google.android.gms.internal.d.c.a(parcel, Status.CREATOR), (GoogleSignInAccount) com.google.android.gms.internal.d.c.a(parcel, GoogleSignInAccount.CREATOR));
            } else {
                if (i != 8) {
                    return false;
                }
                a((SignInResponse) com.google.android.gms.internal.d.c.a(parcel, SignInResponse.CREATOR));
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void a(ConnectionResult connectionResult, AuthAccountResult authAccountResult) throws RemoteException;

    void a(Status status) throws RemoteException;

    void a(Status status, GoogleSignInAccount googleSignInAccount) throws RemoteException;

    void a(SignInResponse signInResponse) throws RemoteException;

    void b(Status status) throws RemoteException;
}
