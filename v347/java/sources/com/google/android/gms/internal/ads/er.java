package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
final class er implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Future f4980a;

    er(eo eoVar, Future future) {
        this.f4980a = future;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4980a.isDone()) {
            return;
        }
        this.f4980a.cancel(true);
    }
}
