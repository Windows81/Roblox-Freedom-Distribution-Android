package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ot {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final pc f5394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ViewGroup f5395c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private oo f5396d;

    private ot(Context context, ViewGroup viewGroup, pc pcVar, oo ooVar) {
        this.f5393a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f5395c = viewGroup;
        this.f5394b = pcVar;
        this.f5396d = null;
    }

    public ot(Context context, ViewGroup viewGroup, qd qdVar) {
        this(context, viewGroup, qdVar, null);
    }

    public final oo a() {
        com.google.android.gms.common.internal.w.b("getAdVideoUnderlay must be called from the UI thread.");
        return this.f5396d;
    }

    public final void a(int i, int i2, int i3, int i4) {
        com.google.android.gms.common.internal.w.b("The underlay may only be modified from the UI thread.");
        if (this.f5396d != null) {
            this.f5396d.a(i, i2, i3, i4);
        }
    }

    public final void a(int i, int i2, int i3, int i4, int i5, boolean z, pb pbVar) {
        if (this.f5396d != null) {
            return;
        }
        aru.a(this.f5394b.j().a(), this.f5394b.c(), "vpr2");
        this.f5396d = new oo(this.f5393a, this.f5394b, i5, z, this.f5394b.j().a(), pbVar);
        this.f5395c.addView(this.f5396d, 0, new ViewGroup.LayoutParams(-1, -1));
        this.f5396d.a(i, i2, i3, i4);
        this.f5394b.a(false);
    }

    public final void b() {
        com.google.android.gms.common.internal.w.b("onPause must be called from the UI thread.");
        if (this.f5396d != null) {
            this.f5396d.i();
        }
    }

    public final void c() {
        com.google.android.gms.common.internal.w.b("onDestroy must be called from the UI thread.");
        if (this.f5396d != null) {
            this.f5396d.n();
            this.f5395c.removeView(this.f5396d);
            this.f5396d = null;
        }
    }
}
