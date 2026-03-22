package com.google.firebase.iid;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Messenger f5261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzk f5262b;

    k(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f5261a = new Messenger(iBinder);
            this.f5262b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f5262b = new zzk(iBinder);
            this.f5261a = null;
        } else {
            String strValueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", strValueOf.length() != 0 ? "Invalid interface descriptor: ".concat(strValueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }

    final void a(Message message) throws RemoteException {
        Messenger messenger = this.f5261a;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        zzk zzkVar = this.f5262b;
        if (zzkVar != null) {
            zzkVar.a(message);
            return;
        }
        throw new IllegalStateException("Both messengers are null");
    }
}
