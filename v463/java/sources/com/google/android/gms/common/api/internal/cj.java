package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class cj extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected volatile boolean f3602b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final AtomicReference<ck> f3603c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final com.google.android.gms.common.e f3604d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f3605e;

    protected cj(h hVar) {
        this(hVar, com.google.android.gms.common.e.a());
    }

    private cj(h hVar, com.google.android.gms.common.e eVar) {
        super(hVar);
        this.f3603c = new AtomicReference<>(null);
        this.f3605e = new Handler(Looper.getMainLooper());
        this.f3604d = eVar;
    }

    private static int a(ck ckVar) {
        if (ckVar == null) {
            return -1;
        }
        return ckVar.a();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void a(int i, int i2, Intent intent) {
        ck ckVar = this.f3603c.get();
        if (i != 1) {
            if (i != 2) {
                z = false;
            } else {
                int iA = this.f3604d.a(a());
                z = iA == 0;
                if (ckVar == null) {
                    return;
                }
                if (ckVar.b().c() == 18 && iA == 18) {
                    return;
                }
            }
        } else if (i2 != -1) {
            if (i2 == 0) {
                ck ckVar2 = new ck(new ConnectionResult(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null), a(ckVar));
                this.f3603c.set(ckVar2);
                ckVar = ckVar2;
            }
            z = false;
        }
        if (z) {
            h();
        } else if (ckVar != null) {
            a(ckVar.b(), ckVar.a());
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void a(Bundle bundle) {
        super.a(bundle);
        if (bundle != null) {
            this.f3603c.set(bundle.getBoolean("resolving_error", false) ? new ck(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    protected abstract void a(ConnectionResult connectionResult, int i);

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void b() {
        super.b();
        this.f3602b = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void b(Bundle bundle) {
        super.b(bundle);
        ck ckVar = this.f3603c.get();
        if (ckVar != null) {
            bundle.putBoolean("resolving_error", true);
            bundle.putInt("failed_client_id", ckVar.a());
            bundle.putInt("failed_status", ckVar.b().c());
            bundle.putParcelable("failed_resolution", ckVar.b().d());
        }
    }

    public final void b(ConnectionResult connectionResult, int i) {
        ck ckVar = new ck(connectionResult, i);
        if (this.f3603c.compareAndSet(null, ckVar)) {
            this.f3605e.post(new cl(this, ckVar));
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void d() {
        super.d();
        this.f3602b = false;
    }

    protected abstract void f();

    protected final void h() {
        this.f3603c.set(null);
        f();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        a(new ConnectionResult(13, null), a(this.f3603c.get()));
        h();
    }
}
