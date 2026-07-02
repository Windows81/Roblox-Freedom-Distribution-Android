package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.b;
import com.google.android.gms.common.internal.d;

/* JADX INFO: loaded from: classes.dex */
final class s implements d.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ b.a f3400a;

    s(b.a aVar) {
        this.f3400a = aVar;
    }

    @Override // com.google.android.gms.common.internal.d.j
    public final void a() {
        b.this.q.post(new t(this));
    }
}
