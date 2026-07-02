package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class dj extends de implements d.a, d.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f4935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzang f4936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private nq<zzaef> f4937c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final dc f4938d;
    private final Object e;
    private dk f;

    public dj(Context context, zzang zzangVar, nq<zzaef> nqVar, dc dcVar) {
        super(nqVar, dcVar);
        this.e = new Object();
        this.f4935a = context;
        this.f4936b = zzangVar;
        this.f4937c = nqVar;
        this.f4938d = dcVar;
        this.f = new dk(context, ((Boolean) aoo.f().a(aro.G)).booleanValue() ? com.google.android.gms.ads.internal.aw.t().a() : context.getMainLooper(), this, this);
        this.f.o();
    }

    @Override // com.google.android.gms.internal.ads.de
    public final void a() {
        synchronized (this.e) {
            if (this.f.b() || this.f.c()) {
                this.f.a();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(int i) {
        jd.b("Disconnected from remote ad request service.");
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(Bundle bundle) {
        c();
    }

    @Override // com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
        jd.b("Cannot connect to remote service, fallback to local instance.");
        new di(this.f4935a, this.f4937c, this.f4938d).c();
        Bundle bundle = new Bundle();
        bundle.putString("action", "gms_connection_failed_fallback_to_local");
        com.google.android.gms.ads.internal.aw.e().b(this.f4935a, this.f4936b.f5784a, "gmob-apps", bundle, true);
    }

    @Override // com.google.android.gms.internal.ads.de
    public final dq d() {
        dq dqVarA;
        synchronized (this.e) {
            try {
                dqVarA = this.f.A();
            } catch (DeadObjectException | IllegalStateException e) {
                dqVarA = null;
            }
        }
        return dqVarA;
    }
}
