package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.q;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.signin.internal.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface e extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.d.b implements e {

        /* JADX INFO: renamed from: com.google.android.gms.signin.internal.e$a$a, reason: collision with other inner class name */
        public static class C0106a extends com.google.android.gms.internal.d.a implements e {
            C0106a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(int i) throws RemoteException {
                Parcel parcelD = d();
                parcelD.writeInt(i);
                b(7, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(int i, Account account, d dVar) throws RemoteException {
                Parcel parcelD = d();
                parcelD.writeInt(i);
                com.google.android.gms.internal.d.c.a(parcelD, account);
                com.google.android.gms.internal.d.c.a(parcelD, dVar);
                b(8, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(AuthAccountRequest authAccountRequest, d dVar) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, authAccountRequest);
                com.google.android.gms.internal.d.c.a(parcelD, dVar);
                b(2, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(ResolveAccountRequest resolveAccountRequest, w wVar) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, resolveAccountRequest);
                com.google.android.gms.internal.d.c.a(parcelD, wVar);
                b(5, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(q qVar, int i, boolean z) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, qVar);
                parcelD.writeInt(i);
                com.google.android.gms.internal.d.c.a(parcelD, z);
                b(9, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(CheckServerAuthResult checkServerAuthResult) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, checkServerAuthResult);
                b(3, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(RecordConsentRequest recordConsentRequest, d dVar) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, recordConsentRequest);
                com.google.android.gms.internal.d.c.a(parcelD, dVar);
                b(10, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(SignInRequest signInRequest, d dVar) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, signInRequest);
                com.google.android.gms.internal.d.c.a(parcelD, dVar);
                b(12, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(d dVar) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, dVar);
                b(11, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(boolean z) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, z);
                b(4, parcelD);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void b(boolean z) throws RemoteException {
                Parcel parcelD = d();
                com.google.android.gms.internal.d.c.a(parcelD, z);
                b(13, parcelD);
            }
        }

        public static e a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
            return iInterfaceQueryLocalInterface instanceof e ? (e) iInterfaceQueryLocalInterface : new C0106a(iBinder);
        }

        @Override // com.google.android.gms.internal.d.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    a((AuthAccountRequest) com.google.android.gms.internal.d.c.a(parcel, AuthAccountRequest.CREATOR), d.a.a(parcel.readStrongBinder()));
                    break;
                case 3:
                    a((CheckServerAuthResult) com.google.android.gms.internal.d.c.a(parcel, CheckServerAuthResult.CREATOR));
                    break;
                case 4:
                    a(com.google.android.gms.internal.d.c.a(parcel));
                    break;
                case 5:
                    a((ResolveAccountRequest) com.google.android.gms.internal.d.c.a(parcel, ResolveAccountRequest.CREATOR), w.a.a(parcel.readStrongBinder()));
                    break;
                case 6:
                default:
                    return false;
                case 7:
                    a(parcel.readInt());
                    break;
                case 8:
                    a(parcel.readInt(), (Account) com.google.android.gms.internal.d.c.a(parcel, Account.CREATOR), d.a.a(parcel.readStrongBinder()));
                    break;
                case 9:
                    a(q.a.a(parcel.readStrongBinder()), parcel.readInt(), com.google.android.gms.internal.d.c.a(parcel));
                    break;
                case 10:
                    a((RecordConsentRequest) com.google.android.gms.internal.d.c.a(parcel, RecordConsentRequest.CREATOR), d.a.a(parcel.readStrongBinder()));
                    break;
                case 11:
                    a(d.a.a(parcel.readStrongBinder()));
                    break;
                case 12:
                    a((SignInRequest) com.google.android.gms.internal.d.c.a(parcel, SignInRequest.CREATOR), d.a.a(parcel.readStrongBinder()));
                    break;
                case 13:
                    b(com.google.android.gms.internal.d.c.a(parcel));
                    break;
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void a(int i) throws RemoteException;

    void a(int i, Account account, d dVar) throws RemoteException;

    void a(AuthAccountRequest authAccountRequest, d dVar) throws RemoteException;

    void a(ResolveAccountRequest resolveAccountRequest, w wVar) throws RemoteException;

    void a(q qVar, int i, boolean z) throws RemoteException;

    void a(CheckServerAuthResult checkServerAuthResult) throws RemoteException;

    void a(RecordConsentRequest recordConsentRequest, d dVar) throws RemoteException;

    void a(SignInRequest signInRequest, d dVar) throws RemoteException;

    void a(d dVar) throws RemoteException;

    void a(boolean z) throws RemoteException;

    void b(boolean z) throws RemoteException;
}
