package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.t;
import com.google.android.gms.signin.internal.d;

/* JADX INFO: loaded from: classes.dex */
public interface e extends IInterface {

    public static abstract class a extends com.google.android.gms.internal.c.b implements e {

        /* JADX INFO: renamed from: com.google.android.gms.signin.internal.e$a$a, reason: collision with other inner class name */
        public static class C0087a extends com.google.android.gms.internal.c.a implements e {
            C0087a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(int i) throws RemoteException {
                Parcel parcelB = b();
                parcelB.writeInt(i);
                b(7, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(int i, Account account, d dVar) throws RemoteException {
                Parcel parcelB = b();
                parcelB.writeInt(i);
                com.google.android.gms.internal.c.c.a(parcelB, account);
                com.google.android.gms.internal.c.c.a(parcelB, dVar);
                b(8, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(AuthAccountRequest authAccountRequest, d dVar) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, authAccountRequest);
                com.google.android.gms.internal.c.c.a(parcelB, dVar);
                b(2, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(ResolveAccountRequest resolveAccountRequest, t tVar) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, resolveAccountRequest);
                com.google.android.gms.internal.c.c.a(parcelB, tVar);
                b(5, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(o oVar, int i, boolean z) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, oVar);
                parcelB.writeInt(i);
                com.google.android.gms.internal.c.c.a(parcelB, z);
                b(9, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(CheckServerAuthResult checkServerAuthResult) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, checkServerAuthResult);
                b(3, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(RecordConsentRequest recordConsentRequest, d dVar) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, recordConsentRequest);
                com.google.android.gms.internal.c.c.a(parcelB, dVar);
                b(10, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(SignInRequest signInRequest, d dVar) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, signInRequest);
                com.google.android.gms.internal.c.c.a(parcelB, dVar);
                b(12, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(d dVar) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, dVar);
                b(11, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void a(boolean z) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, z);
                b(4, parcelB);
            }

            @Override // com.google.android.gms.signin.internal.e
            public void b(boolean z) throws RemoteException {
                Parcel parcelB = b();
                com.google.android.gms.internal.c.c.a(parcelB, z);
                b(13, parcelB);
            }
        }

        public static e a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
            return iInterfaceQueryLocalInterface instanceof e ? (e) iInterfaceQueryLocalInterface : new C0087a(iBinder);
        }

        @Override // com.google.android.gms.internal.c.b
        protected boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    a((AuthAccountRequest) com.google.android.gms.internal.c.c.a(parcel, AuthAccountRequest.CREATOR), d.a.a(parcel.readStrongBinder()));
                    break;
                case 3:
                    a((CheckServerAuthResult) com.google.android.gms.internal.c.c.a(parcel, CheckServerAuthResult.CREATOR));
                    break;
                case 4:
                    a(com.google.android.gms.internal.c.c.a(parcel));
                    break;
                case 5:
                    a((ResolveAccountRequest) com.google.android.gms.internal.c.c.a(parcel, ResolveAccountRequest.CREATOR), t.a.a(parcel.readStrongBinder()));
                    break;
                case 6:
                default:
                    return false;
                case 7:
                    a(parcel.readInt());
                    break;
                case 8:
                    a(parcel.readInt(), (Account) com.google.android.gms.internal.c.c.a(parcel, Account.CREATOR), d.a.a(parcel.readStrongBinder()));
                    break;
                case 9:
                    a(o.a.a(parcel.readStrongBinder()), parcel.readInt(), com.google.android.gms.internal.c.c.a(parcel));
                    break;
                case 10:
                    a((RecordConsentRequest) com.google.android.gms.internal.c.c.a(parcel, RecordConsentRequest.CREATOR), d.a.a(parcel.readStrongBinder()));
                    break;
                case 11:
                    a(d.a.a(parcel.readStrongBinder()));
                    break;
                case 12:
                    a((SignInRequest) com.google.android.gms.internal.c.c.a(parcel, SignInRequest.CREATOR), d.a.a(parcel.readStrongBinder()));
                    break;
                case 13:
                    b(com.google.android.gms.internal.c.c.a(parcel));
                    break;
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void a(int i) throws RemoteException;

    void a(int i, Account account, d dVar) throws RemoteException;

    void a(AuthAccountRequest authAccountRequest, d dVar) throws RemoteException;

    void a(ResolveAccountRequest resolveAccountRequest, t tVar) throws RemoteException;

    void a(o oVar, int i, boolean z) throws RemoteException;

    void a(CheckServerAuthResult checkServerAuthResult) throws RemoteException;

    void a(RecordConsentRequest recordConsentRequest, d dVar) throws RemoteException;

    void a(SignInRequest signInRequest, d dVar) throws RemoteException;

    void a(d dVar) throws RemoteException;

    void a(boolean z) throws RemoteException;

    void b(boolean z) throws RemoteException;
}
