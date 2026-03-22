package android.support.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.support.b.f;
import android.text.TextUtils;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ComponentName f168b;

    b(g gVar, ComponentName componentName) {
        this.f167a = gVar;
        this.f168b = componentName;
    }

    public static boolean a(Context context, String str, d dVar) {
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, dVar, 33);
    }

    public boolean a(long j) {
        try {
            return this.f167a.a(j);
        } catch (RemoteException e) {
            return false;
        }
    }

    public e a(final a aVar) {
        f.a aVar2 = new f.a() { // from class: android.support.b.b.1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private Handler f171c = new Handler(Looper.getMainLooper());

            @Override // android.support.b.f
            public void a(final int i, final Bundle bundle) {
                if (aVar != null) {
                    this.f171c.post(new Runnable() { // from class: android.support.b.b.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a(i, bundle);
                        }
                    });
                }
            }

            @Override // android.support.b.f
            public void a(final String str, final Bundle bundle) throws RemoteException {
                if (aVar != null) {
                    this.f171c.post(new Runnable() { // from class: android.support.b.b.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a(str, bundle);
                        }
                    });
                }
            }

            @Override // android.support.b.f
            public void a(final Bundle bundle) throws RemoteException {
                if (aVar != null) {
                    this.f171c.post(new Runnable() { // from class: android.support.b.b.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a(bundle);
                        }
                    });
                }
            }

            @Override // android.support.b.f
            public void b(final String str, final Bundle bundle) throws RemoteException {
                if (aVar != null) {
                    this.f171c.post(new Runnable() { // from class: android.support.b.b.1.4
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.b(str, bundle);
                        }
                    });
                }
            }

            @Override // android.support.b.f
            public void a(final int i, final Uri uri, final boolean z, final Bundle bundle) throws RemoteException {
                if (aVar != null) {
                    this.f171c.post(new Runnable() { // from class: android.support.b.b.1.5
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a(i, uri, z, bundle);
                        }
                    });
                }
            }
        };
        try {
            if (this.f167a.a(aVar2)) {
                return new e(this.f167a, aVar2, this.f168b);
            }
            return null;
        } catch (RemoteException e) {
            return null;
        }
    }
}
