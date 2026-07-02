package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.internal.ads.aqo;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aqo f2960a;

    public e(Context context) {
        this.f2960a = new aqo(context, this);
        w.a(context, "Context cannot be null");
    }

    public final String a() {
        return this.f2960a.a();
    }

    public final void a(com.google.android.gms.ads.a aVar) {
        this.f2960a.a(aVar);
    }

    public final void a(d dVar) {
        this.f2960a.a(dVar.a());
    }

    public final void a(String str) {
        this.f2960a.a(str);
    }

    public final boolean b() {
        return this.f2960a.b();
    }

    public final void c() {
        this.f2960a.d();
    }
}
