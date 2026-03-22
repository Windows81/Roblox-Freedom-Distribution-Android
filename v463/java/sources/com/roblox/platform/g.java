package com.roblox.platform;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f7680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f7681b;

    public g(Executor executor, Executor executor2) {
        this.f7680a = executor;
        this.f7681b = executor2;
    }

    public g() {
        this(Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors()), new a());
    }

    @Override // com.roblox.platform.d
    public Executor a() {
        return this.f7680a;
    }

    @Override // com.roblox.platform.d
    public Executor b() {
        return this.f7681b;
    }

    public static class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Handler f7682a = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f7682a.post(runnable);
        }
    }
}
