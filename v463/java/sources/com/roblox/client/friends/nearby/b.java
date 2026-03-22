package com.roblox.client.friends.nearby;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements com.roblox.client.friends.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f6138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f6139b;

    public b(Executor executor, Executor executor2) {
        this.f6138a = executor;
        this.f6139b = executor2;
    }

    public b() {
        this(Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors()), new a());
    }

    @Override // com.roblox.client.friends.a
    public Executor a() {
        return this.f6138a;
    }

    @Override // com.roblox.client.friends.a
    public Executor b() {
        return this.f6139b;
    }

    private static class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Handler f6140a;

        private a() {
            this.f6140a = new Handler(Looper.getMainLooper());
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f6140a.post(runnable);
        }
    }
}
