package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.internal.ads.anv;
import com.google.android.gms.internal.ads.aqo;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aqo f2980a;

    public h(Context context) {
        this.f2980a = new aqo(context);
        w.a(context, "Context cannot be null");
    }

    public final void a() {
        this.f2980a.d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(a aVar) {
        this.f2980a.a(aVar);
        if (aVar != 0 && (aVar instanceof anv)) {
            this.f2980a.a((anv) aVar);
        } else if (aVar == 0) {
            this.f2980a.a((anv) null);
        }
    }

    public final void a(c cVar) {
        this.f2980a.a(cVar.a());
    }

    public final void a(com.google.android.gms.ads.reward.b bVar) {
        this.f2980a.a(bVar);
    }

    public final void a(com.google.android.gms.ads.reward.c cVar) {
        this.f2980a.a(cVar);
    }

    public final void a(String str) {
        this.f2980a.a(str);
    }

    public final void a(boolean z) {
        this.f2980a.a(true);
    }

    public final Bundle b() {
        return this.f2980a.c();
    }

    public final void b(boolean z) {
        this.f2980a.b(z);
    }
}
