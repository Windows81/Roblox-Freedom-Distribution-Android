package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class gx implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ boolean f4446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ gv f4447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ gv f4448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ gw f4449d;

    gx(gw gwVar, boolean z, gv gvVar, gv gvVar2) {
        this.f4449d = gwVar;
        this.f4446a = z;
        this.f4447b = gvVar;
        this.f4448c = gvVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4446a && this.f4449d.f4441a != null) {
            gw gwVar = this.f4449d;
            gwVar.a(gwVar.f4441a);
        }
        gv gvVar = this.f4447b;
        if ((gvVar != null && gvVar.f4439c == this.f4448c.f4439c && iq.b(this.f4447b.f4438b, this.f4448c.f4438b) && iq.b(this.f4447b.f4437a, this.f4448c.f4437a)) ? false : true) {
            Bundle bundle = new Bundle();
            gw.a(this.f4448c, bundle, true);
            gv gvVar2 = this.f4447b;
            if (gvVar2 != null) {
                if (gvVar2.f4437a != null) {
                    bundle.putString("_pn", this.f4447b.f4437a);
                }
                bundle.putString("_pc", this.f4447b.f4438b);
                bundle.putLong("_pi", this.f4447b.f4439c);
            }
            this.f4449d.e().b("auto", "_vs", bundle);
        }
        this.f4449d.f4441a = this.f4448c;
        this.f4449d.h().a(this.f4448c);
    }
}
