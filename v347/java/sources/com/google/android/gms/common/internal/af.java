package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.k;
import java.util.HashMap;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class af extends k implements Handler.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f3467c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("mConnectionStatus")
    private final HashMap<k.a, ag> f3465a = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.common.stats.a f3468d = com.google.android.gms.common.stats.a.a();
    private final long e = 5000;
    private final long f = 300000;

    af(Context context) {
        this.f3466b = context.getApplicationContext();
        this.f3467c = new Handler(context.getMainLooper(), this);
    }

    @Override // com.google.android.gms.common.internal.k
    protected final boolean a(k.a aVar, ServiceConnection serviceConnection, String str) {
        boolean zA;
        w.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f3465a) {
            ag agVar = this.f3465a.get(aVar);
            if (agVar != null) {
                this.f3467c.removeMessages(0, aVar);
                if (!agVar.a(serviceConnection)) {
                    agVar.a(serviceConnection, str);
                    switch (agVar.b()) {
                        case 1:
                            serviceConnection.onServiceConnected(agVar.e(), agVar.d());
                            break;
                        case 2:
                            agVar.a(str);
                            break;
                    }
                } else {
                    String strValueOf = String.valueOf(aVar);
                    throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 81).append("Trying to bind a GmsServiceConnection that was already connected before.  config=").append(strValueOf).toString());
                }
            } else {
                agVar = new ag(this, aVar);
                agVar.a(serviceConnection, str);
                agVar.a(str);
                this.f3465a.put(aVar, agVar);
            }
            zA = agVar.a();
        }
        return zA;
    }

    @Override // com.google.android.gms.common.internal.k
    protected final void b(k.a aVar, ServiceConnection serviceConnection, String str) {
        w.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f3465a) {
            ag agVar = this.f3465a.get(aVar);
            if (agVar == null) {
                String strValueOf = String.valueOf(aVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 50).append("Nonexistent connection status for service config: ").append(strValueOf).toString());
            }
            if (!agVar.a(serviceConnection)) {
                String strValueOf2 = String.valueOf(aVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf2).length() + 76).append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=").append(strValueOf2).toString());
            }
            agVar.b(serviceConnection, str);
            if (agVar.c()) {
                this.f3467c.sendMessageDelayed(this.f3467c.obtainMessage(0, aVar), this.e);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                synchronized (this.f3465a) {
                    k.a aVar = (k.a) message.obj;
                    ag agVar = this.f3465a.get(aVar);
                    if (agVar != null && agVar.c()) {
                        if (agVar.a()) {
                            agVar.b("GmsClientSupervisor");
                        }
                        this.f3465a.remove(aVar);
                    }
                    break;
                }
                return true;
            case 1:
                synchronized (this.f3465a) {
                    k.a aVar2 = (k.a) message.obj;
                    ag agVar2 = this.f3465a.get(aVar2);
                    if (agVar2 != null && agVar2.b() == 3) {
                        String strValueOf = String.valueOf(aVar2);
                        Log.wtf("GmsClientSupervisor", new StringBuilder(String.valueOf(strValueOf).length() + 47).append("Timeout waiting for ServiceConnection callback ").append(strValueOf).toString(), new Exception());
                        ComponentName componentNameE = agVar2.e();
                        if (componentNameE == null) {
                            componentNameE = aVar2.b();
                        }
                        agVar2.onServiceDisconnected(componentNameE == null ? new ComponentName(aVar2.a(), "unknown") : componentNameE);
                    }
                    break;
                }
                return true;
            default:
                return false;
        }
    }
}
