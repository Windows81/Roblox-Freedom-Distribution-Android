package com.google.android.gms.f;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class y implements Executor {
    y() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
