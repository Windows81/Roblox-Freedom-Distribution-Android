package com.google.firebase.iid;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final /* synthetic */ class al implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Executor f5216a = new al();

    private al() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
