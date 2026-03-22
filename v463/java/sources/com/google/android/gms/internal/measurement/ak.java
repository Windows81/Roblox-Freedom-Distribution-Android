package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ak implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ai f4028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile bs f4029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f4030c;

    protected ak(ai aiVar) {
        this.f4028a = aiVar;
    }

    public final bs a() {
        com.google.android.gms.analytics.s.d();
        Intent intent = new Intent("com.google.android.gms.analytics.service.START");
        intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
        Context contextJ = this.f4028a.j();
        intent.putExtra("app_package_name", contextJ.getPackageName());
        com.google.android.gms.common.stats.a aVarA = com.google.android.gms.common.stats.a.a();
        synchronized (this) {
            this.f4029b = null;
            this.f4030c = true;
            boolean zA = aVarA.a(contextJ, intent, this.f4028a.f4023a, 129);
            this.f4028a.a("Bind to service requested", Boolean.valueOf(zA));
            if (!zA) {
                this.f4030c = false;
                return null;
            }
            try {
                wait(bm.B.a().longValue());
            } catch (InterruptedException unused) {
                this.f4028a.e("Wait for service connect was interrupted");
            }
            this.f4030c = false;
            bs bsVar = this.f4029b;
            this.f4029b = null;
            if (bsVar == null) {
                this.f4028a.f("Successfully bound to service but never got onServiceConnected callback");
            }
            return bsVar;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.google.android.gms.common.internal.aa.b("AnalyticsServiceConnection.onServiceConnected");
        synchronized (this) {
            try {
                if (iBinder == null) {
                    this.f4028a.f("Service connected with null binder");
                    return;
                }
                bs btVar = null;
                try {
                    String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                    if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(interfaceDescriptor)) {
                        if (iBinder != null) {
                            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                            btVar = iInterfaceQueryLocalInterface instanceof bs ? (bs) iInterfaceQueryLocalInterface : new bt(iBinder);
                        }
                        this.f4028a.b("Bound to IAnalyticsService interface");
                    } else {
                        this.f4028a.e("Got binder with a wrong descriptor", interfaceDescriptor);
                    }
                } catch (RemoteException unused) {
                    this.f4028a.f("Service connect failed to get IAnalyticsService");
                }
                if (btVar == null) {
                    try {
                        com.google.android.gms.common.stats.a.a().a(this.f4028a.j(), this.f4028a.f4023a);
                    } catch (IllegalArgumentException unused2) {
                    }
                } else if (this.f4030c) {
                    this.f4029b = btVar;
                } else {
                    this.f4028a.e("onServiceConnected received after the timeout limit");
                    this.f4028a.m().a(new al(this, btVar));
                }
            } finally {
                notifyAll();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.common.internal.aa.b("AnalyticsServiceConnection.onServiceDisconnected");
        this.f4028a.m().a(new am(this, componentName));
    }
}
