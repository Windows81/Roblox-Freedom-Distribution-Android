package com.google.android.gms.d;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class t implements Executor {
    t() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
