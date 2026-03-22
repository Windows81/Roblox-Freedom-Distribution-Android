package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.internal.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class bd implements d.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d.a f3529a;

    bd(d.a aVar) {
        this.f3529a = aVar;
    }

    @Override // com.google.android.gms.common.internal.d.j
    public final void a() {
        d.this.q.post(new be(this));
    }
}
