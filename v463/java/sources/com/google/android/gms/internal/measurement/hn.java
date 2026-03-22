package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class hn implements ServiceConnection, d.a, d.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ gz f4500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile boolean f4501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile dw f4502c;

    protected hn(gz gzVar) {
        this.f4500a = gzVar;
    }

    static /* synthetic */ boolean a(hn hnVar, boolean z) {
        hnVar.f4501b = false;
        return false;
    }

    public final void a() {
        this.f4500a.c();
        Context contextK = this.f4500a.k();
        synchronized (this) {
            if (this.f4501b) {
                this.f4500a.q().C().a("Connection attempt already in progress");
                return;
            }
            if (this.f4502c != null) {
                this.f4500a.q().C().a("Already awaiting connection attempt");
                return;
            }
            this.f4502c = new dw(contextK, Looper.getMainLooper(), this, this);
            this.f4500a.q().C().a("Connecting to remote service");
            this.f4501b = true;
            this.f4502c.s();
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(int i) {
        com.google.android.gms.common.internal.aa.b("MeasurementServiceConnection.onConnectionSuspended");
        this.f4500a.q().B().a("Service connection suspended");
        this.f4500a.p().a(new hr(this));
    }

    public final void a(Intent intent) {
        this.f4500a.c();
        Context contextK = this.f4500a.k();
        com.google.android.gms.common.stats.a aVarA = com.google.android.gms.common.stats.a.a();
        synchronized (this) {
            if (this.f4501b) {
                this.f4500a.q().C().a("Connection attempt already in progress");
                return;
            }
            this.f4500a.q().C().a("Using local app measurement service");
            this.f4501b = true;
            aVarA.a(contextK, intent, this.f4500a.f4452a, 129);
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(Bundle bundle) {
        com.google.android.gms.common.internal.aa.b("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                dp dpVarA = this.f4502c.A();
                this.f4502c = null;
                this.f4500a.p().a(new hq(this, dpVarA));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f4502c = null;
                this.f4501b = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
        com.google.android.gms.common.internal.aa.b("MeasurementServiceConnection.onConnectionFailed");
        dx dxVarD = this.f4500a.q.d();
        if (dxVarD != null) {
            dxVarD.y().a("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f4501b = false;
            this.f4502c = null;
        }
        this.f4500a.p().a(new hs(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.google.android.gms.common.internal.aa.b("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f4501b = false;
                this.f4500a.q().v().a("Service connected with null binder");
                return;
            }
            dp drVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    if (iBinder != null) {
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                        drVar = iInterfaceQueryLocalInterface instanceof dp ? (dp) iInterfaceQueryLocalInterface : new dr(iBinder);
                    }
                    this.f4500a.q().C().a("Bound to IMeasurementService interface");
                } else {
                    this.f4500a.q().v().a("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.f4500a.q().v().a("Service connect failed to get IMeasurementService");
            }
            if (drVar == null) {
                this.f4501b = false;
                try {
                    com.google.android.gms.common.stats.a.a().a(this.f4500a.k(), this.f4500a.f4452a);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.f4500a.p().a(new ho(this, drVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.common.internal.aa.b("MeasurementServiceConnection.onServiceDisconnected");
        this.f4500a.q().B().a("Service disconnected");
        this.f4500a.p().a(new hp(this, componentName));
    }
}
