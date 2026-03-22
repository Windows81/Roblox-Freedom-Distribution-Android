package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class u extends cj {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.c.b<cg<?>> f3673e;
    private d f;

    private u(h hVar) {
        super(hVar);
        this.f3673e = new androidx.c.b<>();
        this.f3471a.a("ConnectionlessLifecycleHelper", this);
    }

    public static void a(Activity activity, d dVar, cg<?> cgVar) {
        h hVarA = a(activity);
        u uVar = (u) hVarA.a("ConnectionlessLifecycleHelper", u.class);
        if (uVar == null) {
            uVar = new u(hVarA);
        }
        uVar.f = dVar;
        com.google.android.gms.common.internal.aa.a(cgVar, "ApiKey cannot be null");
        uVar.f3673e.add(cgVar);
        dVar.a(uVar);
    }

    private final void i() {
        if (this.f3673e.isEmpty()) {
            return;
        }
        this.f.a(this);
    }

    @Override // com.google.android.gms.common.api.internal.cj
    protected final void a(ConnectionResult connectionResult, int i) {
        this.f.b(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.cj, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void b() {
        super.b();
        i();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void c() {
        super.c();
        i();
    }

    @Override // com.google.android.gms.common.api.internal.cj, com.google.android.gms.common.api.internal.LifecycleCallback
    public void d() {
        super.d();
        this.f.b(this);
    }

    @Override // com.google.android.gms.common.api.internal.cj
    protected final void f() {
        this.f.d();
    }

    final androidx.c.b<cg<?>> g() {
        return this.f3673e;
    }
}
