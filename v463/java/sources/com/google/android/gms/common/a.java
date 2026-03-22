package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.aa;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f3426a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BlockingQueue<IBinder> f3427b = new LinkedBlockingQueue();

    public IBinder a(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        aa.c("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.f3426a) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.f3426a = true;
        IBinder iBinderPoll = this.f3427b.poll(j, timeUnit);
        if (iBinderPoll != null) {
            return iBinderPoll;
        }
        throw new TimeoutException("Timed out waiting for the service connection");
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f3427b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
