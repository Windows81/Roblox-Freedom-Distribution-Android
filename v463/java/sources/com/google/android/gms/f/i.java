package com.google.android.gms.f;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Executor f3924a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Executor f3925b = new y();

    private static final class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f3926a = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f3926a.post(runnable);
        }
    }
}
