package com.appsflyer.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class u {
    u() {
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    static b m194(Context context) throws Exception {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        try {
            byte b2 = 0;
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            d dVar = new d(b2);
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                try {
                    if (!context.bindService(intent, dVar, 1)) {
                        if (context != null) {
                            context.unbindService(dVar);
                        }
                        throw new IOException("Google Play connection failed");
                    }
                    if (dVar.f301) {
                        throw new IllegalStateException();
                    }
                    dVar.f301 = true;
                    e eVar = new e(dVar.f302.take());
                    return new b(eVar.m197(), eVar.m196());
                } catch (Exception e2) {
                    throw e2;
                }
            } finally {
                if (context != null) {
                    context.unbindService(dVar);
                }
            }
        } catch (Exception e3) {
            throw e3;
        }
    }

    static final class b {

        /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
        private final boolean f299;

        /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
        final String f300;

        b(String str, boolean z) {
            this.f300 = str;
            this.f299 = z;
        }

        /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
        final boolean m195() {
            return this.f299;
        }
    }

    static final class d implements ServiceConnection {

        /* JADX INFO: renamed from: ı, reason: contains not printable characters */
        boolean f301;

        /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
        final LinkedBlockingQueue<IBinder> f302;

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }

        private d() {
            this.f302 = new LinkedBlockingQueue<>(1);
            this.f301 = false;
        }

        /* synthetic */ d(byte b2) {
            this();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f302.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }
    }

    static final class e implements IInterface {

        /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
        private IBinder f303;

        e(IBinder iBinder) {
            this.f303 = iBinder;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.f303;
        }

        /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
        public final String m197() throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f303.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        /* JADX INFO: renamed from: ı, reason: contains not printable characters */
        final boolean m196() throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(1);
                this.f303.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }
}
