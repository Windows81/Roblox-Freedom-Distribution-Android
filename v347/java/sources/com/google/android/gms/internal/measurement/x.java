package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class x implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ v f6025a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile bf f6026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f6027c;

    protected x(v vVar) {
        this.f6025a = vVar;
    }

    public final bf a() {
        bf bfVar = null;
        com.google.android.gms.analytics.s.d();
        Intent intent = new Intent("com.google.android.gms.analytics.service.START");
        intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
        Context contextJ = this.f6025a.j();
        intent.putExtra("app_package_name", contextJ.getPackageName());
        com.google.android.gms.common.stats.a aVarA = com.google.android.gms.common.stats.a.a();
        synchronized (this) {
            this.f6026b = null;
            this.f6027c = true;
            boolean zA = aVarA.a(contextJ, intent, this.f6025a.f6020a, 129);
            this.f6025a.a("Bind to service requested", Boolean.valueOf(zA));
            if (zA) {
                try {
                    wait(az.B.a().longValue());
                } catch (InterruptedException e) {
                    this.f6025a.e("Wait for service connect was interrupted");
                }
                this.f6027c = false;
                bfVar = this.f6026b;
                this.f6026b = null;
                if (bfVar == null) {
                    this.f6025a.f("Successfully bound to service but never got onServiceConnected callback");
                }
            } else {
                this.f6027c = false;
            }
        }
        return bfVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        bf bgVar;
        com.google.android.gms.common.internal.w.b("AnalyticsServiceConnection.onServiceConnected");
        synchronized (this) {
            try {
                if (iBinder == null) {
                    this.f6025a.f("Service connected with null binder");
                    return;
                }
                try {
                    String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                    if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(interfaceDescriptor)) {
                        if (iBinder == null) {
                            bgVar = null;
                        } else {
                            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                            bgVar = iInterfaceQueryLocalInterface instanceof bf ? (bf) iInterfaceQueryLocalInterface : new bg(iBinder);
                        }
                        try {
                            this.f6025a.b("Bound to IAnalyticsService interface");
                        } catch (RemoteException e) {
                            this.f6025a.f("Service connect failed to get IAnalyticsService");
                        }
                    } else {
                        this.f6025a.e("Got binder with a wrong descriptor", interfaceDescriptor);
                        bgVar = null;
                    }
                } catch (RemoteException e2) {
                    bgVar = null;
                }
                if (bgVar == null) {
                    try {
                        com.google.android.gms.common.stats.a.a().a(this.f6025a.j(), this.f6025a.f6020a);
                    } catch (IllegalArgumentException e3) {
                    }
                } else if (this.f6027c) {
                    this.f6026b = bgVar;
                } else {
                    this.f6025a.e("onServiceConnected received after the timeout limit");
                    this.f6025a.m().a(new y(this, bgVar));
                }
            } finally {
                notifyAll();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.common.internal.w.b("AnalyticsServiceConnection.onServiceDisconnected");
        this.f6025a.m().a(new z(this, componentName));
    }
}
