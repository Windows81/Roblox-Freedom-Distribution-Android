package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.l;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class al implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<ServiceConnection> f3756a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3757b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3758c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private IBinder f3759d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final l.a f3760e;
    private ComponentName f;
    private final /* synthetic */ ak g;

    public al(ak akVar, l.a aVar) {
        this.g = akVar;
        this.f3760e = aVar;
    }

    public final void a(ServiceConnection serviceConnection, String str) {
        this.g.f3754d.a(this.g.f3752b, serviceConnection, str, this.f3760e.a(this.g.f3752b));
        this.f3756a.add(serviceConnection);
    }

    public final void a(String str) {
        this.f3757b = 3;
        boolean zA = this.g.f3754d.a(this.g.f3752b, str, this.f3760e.a(this.g.f3752b), this, this.f3760e.c());
        this.f3758c = zA;
        if (zA) {
            this.g.f3753c.sendMessageDelayed(this.g.f3753c.obtainMessage(1, this.f3760e), this.g.f);
        } else {
            this.f3757b = 2;
            try {
                this.g.f3754d.a(this.g.f3752b, this);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    public final boolean a() {
        return this.f3758c;
    }

    public final boolean a(ServiceConnection serviceConnection) {
        return this.f3756a.contains(serviceConnection);
    }

    public final int b() {
        return this.f3757b;
    }

    public final void b(ServiceConnection serviceConnection, String str) {
        this.g.f3754d.b(this.g.f3752b, serviceConnection);
        this.f3756a.remove(serviceConnection);
    }

    public final void b(String str) {
        this.g.f3753c.removeMessages(1, this.f3760e);
        this.g.f3754d.a(this.g.f3752b, this);
        this.f3758c = false;
        this.f3757b = 2;
    }

    public final boolean c() {
        return this.f3756a.isEmpty();
    }

    public final IBinder d() {
        return this.f3759d;
    }

    public final ComponentName e() {
        return this.f;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.g.f3751a) {
            this.g.f3753c.removeMessages(1, this.f3760e);
            this.f3759d = iBinder;
            this.f = componentName;
            Iterator<ServiceConnection> it = this.f3756a.iterator();
            while (it.hasNext()) {
                it.next().onServiceConnected(componentName, iBinder);
            }
            this.f3757b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.g.f3751a) {
            this.g.f3753c.removeMessages(1, this.f3760e);
            this.f3759d = null;
            this.f = componentName;
            Iterator<ServiceConnection> it = this.f3756a.iterator();
            while (it.hasNext()) {
                it.next().onServiceDisconnected(componentName);
            }
            this.f3757b = 2;
        }
    }
}
