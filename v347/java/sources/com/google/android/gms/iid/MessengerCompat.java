package com.google.android.gms.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.internal.ReflectedParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class MessengerCompat implements ReflectedParcelable {
    public static final Parcelable.Creator<MessengerCompat> CREATOR = new aa();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Messenger f3623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private v f3624b;

    public MessengerCompat(IBinder iBinder) {
        v wVar;
        if (Build.VERSION.SDK_INT >= 21) {
            this.f3623a = new Messenger(iBinder);
            return;
        }
        if (iBinder == null) {
            wVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.iid.IMessengerCompat");
            wVar = iInterfaceQueryLocalInterface instanceof v ? (v) iInterfaceQueryLocalInterface : new w(iBinder);
        }
        this.f3624b = wVar;
    }

    private final IBinder a() {
        return this.f3623a != null ? this.f3623a.getBinder() : this.f3624b.asBinder();
    }

    public final void a(Message message) throws RemoteException {
        if (this.f3623a != null) {
            this.f3623a.send(message);
        } else {
            this.f3624b.a(message);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return a().equals(((MessengerCompat) obj).a());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.f3623a != null) {
            parcel.writeStrongBinder(this.f3623a.getBinder());
        } else {
            parcel.writeStrongBinder(this.f3624b.asBinder());
        }
    }
}
