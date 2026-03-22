package com.google.firebase.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class zzk implements Parcelable {
    public static final Parcelable.Creator<zzk> CREATOR = new am();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Messenger f5297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private av f5298b;

    public static final class a extends ClassLoader {
        @Override // java.lang.ClassLoader
        protected final Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
            if (!"com.google.android.gms.iid.MessengerCompat".equals(str)) {
                return super.loadClass(str, z);
            }
            if (!FirebaseInstanceId.g()) {
                return zzk.class;
            }
            Log.d("FirebaseInstanceId", "Using renamed FirebaseIidMessengerCompat class");
            return zzk.class;
        }
    }

    public zzk(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f5297a = new Messenger(iBinder);
        } else {
            this.f5298b = new aw(iBinder);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final void a(Message message) throws RemoteException {
        Messenger messenger = this.f5297a;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.f5298b.a(message);
        }
    }

    private final IBinder a() {
        Messenger messenger = this.f5297a;
        return messenger != null ? messenger.getBinder() : this.f5298b.asBinder();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return a().equals(((zzk) obj).a());
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int hashCode() {
        return a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.f5297a;
        if (messenger != null) {
            parcel.writeStrongBinder(messenger.getBinder());
        } else {
            parcel.writeStrongBinder(this.f5298b.asBinder());
        }
    }
}
