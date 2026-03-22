package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.k;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ag implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<ServiceConnection> f3469a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3470b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3471c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private IBinder f3472d;
    private final k.a e;
    private ComponentName f;
    private final /* synthetic */ af g;

    public ag(af afVar, k.a aVar) {
        this.g = afVar;
        this.e = aVar;
    }

    public final void a(ServiceConnection serviceConnection, String str) {
        this.g.f3468d.a(this.g.f3466b, serviceConnection, str, this.e.a(this.g.f3466b));
        this.f3469a.add(serviceConnection);
    }

    public final void a(String str) {
        this.f3470b = 3;
        this.f3471c = this.g.f3468d.a(this.g.f3466b, str, this.e.a(this.g.f3466b), this, this.e.c());
        if (this.f3471c) {
            this.g.f3467c.sendMessageDelayed(this.g.f3467c.obtainMessage(1, this.e), this.g.f);
        } else {
            this.f3470b = 2;
            try {
                this.g.f3468d.a(this.g.f3466b, this);
            } catch (IllegalArgumentException e) {
            }
        }
    }

    public final boolean a() {
        return this.f3471c;
    }

    public final boolean a(ServiceConnection serviceConnection) {
        return this.f3469a.contains(serviceConnection);
    }

    public final int b() {
        return this.f3470b;
    }

    public final void b(ServiceConnection serviceConnection, String str) {
        this.g.f3468d.b(this.g.f3466b, serviceConnection);
        this.f3469a.remove(serviceConnection);
    }

    public final void b(String str) {
        this.g.f3467c.removeMessages(1, this.e);
        this.g.f3468d.a(this.g.f3466b, this);
        this.f3471c = false;
        this.f3470b = 2;
    }

    public final boolean c() {
        return this.f3469a.isEmpty();
    }

    public final IBinder d() {
        return this.f3472d;
    }

    public final ComponentName e() {
        return this.f;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.g.f3465a) {
            this.g.f3467c.removeMessages(1, this.e);
            this.f3472d = iBinder;
            this.f = componentName;
            Iterator<ServiceConnection> it = this.f3469a.iterator();
            while (it.hasNext()) {
                it.next().onServiceConnected(componentName, iBinder);
            }
            this.f3470b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.g.f3465a) {
            this.g.f3467c.removeMessages(1, this.e);
            this.f3472d = null;
            this.f = componentName;
            Iterator<ServiceConnection> it = this.f3469a.iterator();
            while (it.hasNext()) {
                it.next().onServiceDisconnected(componentName);
            }
            this.f3470b = 2;
        }
    }
}
