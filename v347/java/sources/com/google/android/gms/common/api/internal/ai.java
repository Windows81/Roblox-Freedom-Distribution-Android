package com.google.android.gms.common.api.internal;

import android.content.DialogInterface;
import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class ai extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected volatile boolean f3359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final AtomicReference<aj> f3360c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final com.google.android.gms.common.e f3361d;
    private final Handler e;

    private static int a(aj ajVar) {
        if (ajVar == null) {
            return -1;
        }
        return ajVar.a();
    }

    protected abstract void a(ConnectionResult connectionResult, int i);

    protected abstract void b();

    public final void b(ConnectionResult connectionResult, int i) {
        aj ajVar = new aj(connectionResult, i);
        if (this.f3360c.compareAndSet(null, ajVar)) {
            this.e.post(new ak(this, ajVar));
        }
    }

    protected final void c() {
        this.f3360c.set(null);
        b();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        a(new ConnectionResult(13, null), a(this.f3360c.get()));
        c();
    }
}
