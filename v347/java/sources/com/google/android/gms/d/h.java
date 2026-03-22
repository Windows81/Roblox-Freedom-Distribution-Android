package com.google.android.gms.d;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Executor f3574a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Executor f3575b = new t();

    private static final class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f3576a = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f3576a.post(runnable);
        }
    }
}
