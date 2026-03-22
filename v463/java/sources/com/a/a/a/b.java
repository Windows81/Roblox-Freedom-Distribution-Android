package com.a.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.b.a.a;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b extends com.a.a.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2874a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f2875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.google.android.b.a.a f2876c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ServiceConnection f2877d;

    private final class a implements ServiceConnection {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c f2879b;

        private a(c cVar) {
            if (cVar == null) {
                throw new RuntimeException("Please specify a listener to know when setup is done.");
            }
            this.f2879b = cVar;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            com.a.a.b.a.a("InstallReferrerClient", "Install Referrer service connected.");
            b.this.f2876c = a.AbstractBinderC0074a.a(iBinder);
            b.this.f2874a = 2;
            this.f2879b.onInstallReferrerSetupFinished(0);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            com.a.a.b.a.b("InstallReferrerClient", "Install Referrer service disconnected.");
            b.this.f2876c = null;
            b.this.f2874a = 0;
            this.f2879b.onInstallReferrerServiceDisconnected();
        }
    }

    public b(Context context) {
        this.f2875b = context.getApplicationContext();
    }

    @Override // com.a.a.a.a
    public boolean a() {
        return (this.f2874a != 2 || this.f2876c == null || this.f2877d == null) ? false : true;
    }

    @Override // com.a.a.a.a
    public void b() {
        this.f2874a = 3;
        if (this.f2877d != null) {
            com.a.a.b.a.a("InstallReferrerClient", "Unbinding from service.");
            this.f2875b.unbindService(this.f2877d);
            this.f2877d = null;
        }
        this.f2876c = null;
    }

    @Override // com.a.a.a.a
    public d c() throws RemoteException {
        if (!a()) {
            throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", this.f2875b.getPackageName());
        try {
            return new d(this.f2876c.a(bundle));
        } catch (RemoteException e2) {
            com.a.a.b.a.b("InstallReferrerClient", "RemoteException getting install referrer information");
            this.f2874a = 0;
            throw e2;
        }
    }

    private boolean d() {
        return this.f2875b.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
    }

    @Override // com.a.a.a.a
    public void a(c cVar) {
        if (a()) {
            com.a.a.b.a.a("InstallReferrerClient", "Service connection is valid. No need to re-initialize.");
            cVar.onInstallReferrerSetupFinished(0);
            return;
        }
        int i = this.f2874a;
        if (i == 1) {
            com.a.a.b.a.b("InstallReferrerClient", "Client is already in the process of connecting to the service.");
            cVar.onInstallReferrerSetupFinished(3);
            return;
        }
        if (i == 3) {
            com.a.a.b.a.b("InstallReferrerClient", "Client was already closed and can't be reused. Please create another instance.");
            cVar.onInstallReferrerSetupFinished(3);
            return;
        }
        com.a.a.b.a.a("InstallReferrerClient", "Starting install referrer service setup.");
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        List<ResolveInfo> listQueryIntentServices = this.f2875b.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices != null && !listQueryIntentServices.isEmpty()) {
            ResolveInfo resolveInfo = listQueryIntentServices.get(0);
            if (resolveInfo.serviceInfo != null) {
                String str = resolveInfo.serviceInfo.packageName;
                String str2 = resolveInfo.serviceInfo.name;
                if (!"com.android.vending".equals(str) || str2 == null || !d()) {
                    com.a.a.b.a.b("InstallReferrerClient", "Play Store missing or incompatible. Version 8.3.73 or later required.");
                    this.f2874a = 0;
                    cVar.onInstallReferrerSetupFinished(2);
                    return;
                }
                Intent intent2 = new Intent(intent);
                a aVar = new a(cVar);
                this.f2877d = aVar;
                if (this.f2875b.bindService(intent2, aVar, 1)) {
                    com.a.a.b.a.a("InstallReferrerClient", "Service was bonded successfully.");
                    return;
                }
                com.a.a.b.a.b("InstallReferrerClient", "Connection to service is blocked.");
                this.f2874a = 0;
                cVar.onInstallReferrerSetupFinished(1);
                return;
            }
        }
        this.f2874a = 0;
        com.a.a.b.a.a("InstallReferrerClient", "Install Referrer service unavailable on device.");
        cVar.onInstallReferrerSetupFinished(2);
    }
}
