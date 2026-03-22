package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface d extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.c.b implements d {

        /* JADX INFO: renamed from: com.google.android.gms.signin.internal.d$a$a, reason: collision with other inner class name */
        public static class C0086a extends com.google.android.gms.internal.c.a implements d {
            C0086a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.signin.internal.ISignInCallbacks");
            }

            @Override // com.google.android.gms.signin.internal.d
            public void a(ConnectionResult connectionResult, AuthAccountResult authAccountResult) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, connectionResult);
                com.google.android.gms.internal.c.c.a(parcelB, authAccountResult);
                b(3, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.d
            public void a(Status status) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, status);
                b(4, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.d
            public void a(Status status, GoogleSignInAccount googleSignInAccount) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, status);
                com.google.android.gms.internal.c.c.a(parcelB, googleSignInAccount);
                b(7, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.d
            public void a(SignInResponse signInResponse) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, signInResponse);
                b(8, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.d
            public void b(Status status) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, status);
                b(6, parcelB);
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
            return iInterfaceQueryLocalInterface instanceof d ? (d) iInterfaceQueryLocalInterface : new C0086a(iBinder);
        }

        @Override // com.google.android.gms.internal.c.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 3:
                    a((ConnectionResult) com.google.android.gms.internal.c.c.a(parcel, ConnectionResult.CREATOR), (AuthAccountResult) com.google.android.gms.internal.c.c.a(parcel, AuthAccountResult.CREATOR));
                    break;
                case 4:
                    a((Status) com.google.android.gms.internal.c.c.a(parcel, Status.CREATOR));
                    break;
                case 5:
                default:
                    return false;
                case 6:
                    b((Status) com.google.android.gms.internal.c.c.a(parcel, Status.CREATOR));
                    break;
                case 7:
                    a((Status) com.google.android.gms.internal.c.c.a(parcel, Status.CREATOR), (GoogleSignInAccount) com.google.android.gms.internal.c.c.a(parcel, GoogleSignInAccount.CREATOR));
                    break;
                case 8:
                    a((SignInResponse) com.google.android.gms.internal.c.c.a(parcel, SignInResponse.CREATOR));
                    break;
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
