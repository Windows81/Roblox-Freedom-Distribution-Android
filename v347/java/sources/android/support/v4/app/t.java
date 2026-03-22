package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface t extends IInterface {
    void a(String str) throws RemoteException;

    void a(String str, int i, String str2) throws RemoteException;

    void a(String str, int i, String str2, Notification notification) throws RemoteException;

    public static abstract class a extends Binder implements t {
        public static t a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.app.INotificationSideChannel");
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof t)) {
                return (t) iInterfaceQueryLocalInterface;
            }
            return new C0015a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Notification notification;
            switch (i) {
                case 1:
                    parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                    String string = parcel.readString();
                    int i3 = parcel.readInt();
                    String string2 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        notification = (Notification) Notification.CREATOR.createFromParcel(parcel);
                    } else {
                        notification = null;
                    }
                    a(string, i3, string2, notification);
                    return true;
                case 2:
                    parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                    a(parcel.readString(), parcel.readInt(), parcel.readString());
                    return true;
                case 3:
                    parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                    a(parcel.readString());
                    return true;
                case 1598968902:
                    parcel2.writeString("android.support.v4.app.INotificationSideChannel");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* JADX INFO: renamed from: android.support.v4.app.t$a$a, reason: collision with other inner class name */
        private static class C0015a implements t {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f796a;

            C0015a(IBinder iBinder) {
                this.f796a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f796a;
            }

            @Override // android.support.v4.app.t
            public void a(String str, int i, String str2, Notification notification) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str2);
                    if (notification != null) {
                        parcelObtain.writeInt(1);
                        notification.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f796a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.v4.app.t
            public void a(String str, int i, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str2);
                    this.f796a.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.v4.app.t
            public void a(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    parcelObtain.writeString(str);
                    this.f796a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }
    }
}
