package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.l;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ak extends l implements Handler.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f3753c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<l.a, al> f3751a = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.common.stats.a f3754d = com.google.android.gms.common.stats.a.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f3755e = 5000;
    private final long f = 300000;

    ak(Context context) {
        this.f3752b = context.getApplicationContext();
        this.f3753c = new Handler(context.getMainLooper(), this);
    }

    @Override // com.google.android.gms.common.internal.l
    protected final boolean a(l.a aVar, ServiceConnection serviceConnection, String str) {
        boolean zA;
        aa.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f3751a) {
            al alVar = this.f3751a.get(aVar);
            if (alVar == null) {
                alVar = new al(this, aVar);
                alVar.a(serviceConnection, str);
                alVar.a(str);
                this.f3751a.put(aVar, alVar);
            } else {
                this.f3753c.removeMessages(0, aVar);
                if (alVar.a(serviceConnection)) {
                    String strValueOf = String.valueOf(aVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(strValueOf);
                    throw new IllegalStateException(sb.toString());
                }
                alVar.a(serviceConnection, str);
                int iB = alVar.b();
                if (iB == 1) {
                    serviceConnection.onServiceConnected(alVar.e(), alVar.d());
                } else if (iB == 2) {
                    alVar.a(str);
                }
            }
            zA = alVar.a();
        }
        return zA;
    }

    @Override // com.google.android.gms.common.internal.l
    protected final void b(l.a aVar, ServiceConnection serviceConnection, String str) {
        aa.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f3751a) {
            al alVar = this.f3751a.get(aVar);
            if (alVar == null) {
                String strValueOf = String.valueOf(aVar);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(strValueOf);
                throw new IllegalStateException(sb.toString());
            }
            if (!alVar.a(serviceConnection)) {
                String strValueOf2 = String.valueOf(aVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(strValueOf2);
                throw new IllegalStateException(sb2.toString());
            }
            alVar.b(serviceConnection, str);
            if (alVar.c()) {
                this.f3753c.sendMessageDelayed(this.f3753c.obtainMessage(0, aVar), this.f3755e);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (this.f3751a) {
                l.a aVar = (l.a) message.obj;
                al alVar = this.f3751a.get(aVar);
                if (alVar != null && alVar.c()) {
                    if (alVar.a()) {
                        alVar.b("GmsClientSupervisor");
                    }
                    this.f3751a.remove(aVar);
                }
            }
            return true;
        }
        if (i != 1) {
            return false;
        }
        synchronized (this.f3751a) {
            l.a aVar2 = (l.a) message.obj;
            al alVar2 = this.f3751a.get(aVar2);
            if (alVar2 != null && alVar2.b() == 3) {
                String strValueOf = String.valueOf(aVar2);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 47);
                sb.append("Timeout waiting for ServiceConnection callback ");
                sb.append(strValueOf);
                Log.wtf("GmsClientSupervisor", sb.toString(), new Exception());
                ComponentName componentNameE = alVar2.e();
                if (componentNameE == null) {
                    componentNameE = aVar2.b();
                }
                if (componentNameE == null) {
                    componentNameE = new ComponentName(aVar2.a(), "unknown");
                }
                alVar2.onServiceDisconnected(componentNameE);
            }
        }
        return true;
    }
}
