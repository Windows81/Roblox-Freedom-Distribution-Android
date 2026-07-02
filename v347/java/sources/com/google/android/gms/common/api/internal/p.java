package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.a;

/* JADX INFO: loaded from: classes.dex */
final class p implements a.InterfaceC0071a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ b f3397a;

    p(b bVar) {
        this.f3397a = bVar;
    }

    @Override // com.google.android.gms.common.api.internal.a.InterfaceC0071a
    public final void a(boolean z) {
        this.f3397a.q.sendMessage(this.f3397a.q.obtainMessage(1, Boolean.valueOf(z)));
    }
}
