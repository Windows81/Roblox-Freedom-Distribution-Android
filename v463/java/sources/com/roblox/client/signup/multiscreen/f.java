package com.roblox.client.signup.multiscreen;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f7442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f7443b;

    public f(Executor executor, Executor executor2) {
        this.f7442a = executor;
        this.f7443b = executor2;
    }

    public f() {
        this(Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors()), new a());
    }

    @Override // com.roblox.client.signup.multiscreen.c
    public Executor a() {
        return this.f7442a;
    }

    private static class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Handler f7444a;

        private a() {
            this.f7444a = new Handler(Looper.getMainLooper());
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f7444a.post(runnable);
        }
    }
}
