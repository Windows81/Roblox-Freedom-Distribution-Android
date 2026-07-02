package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.d;

/* JADX INFO: loaded from: classes.dex */
final class bb implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ d.a f3526a;

    bb(d.a aVar) {
        this.f3526a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3526a.o();
    }
}
