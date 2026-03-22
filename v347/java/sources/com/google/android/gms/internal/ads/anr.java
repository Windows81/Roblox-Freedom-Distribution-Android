package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class anr implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Handler f4300a;

    anr(amq amqVar, Handler handler) {
        this.f4300a = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f4300a.post(runnable);
    }
}
