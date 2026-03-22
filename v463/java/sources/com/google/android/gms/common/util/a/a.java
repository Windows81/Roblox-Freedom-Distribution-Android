package com.google.android.gms.common.util.a;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f3862a;

    public a(Looper looper) {
        this.f3862a = new Handler(looper);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f3862a.post(runnable);
    }
}
