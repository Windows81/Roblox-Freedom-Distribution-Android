package com.roblox.platform.http;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Deque<Runnable> f7710a = new ArrayDeque();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f7711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Runnable f7712c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f7713d;

    d(Executor executor, int i) {
        this.f7711b = (ScheduledExecutorService) executor;
        this.f7713d = i;
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(final Runnable runnable) {
        this.f7710a.addFirst(new Runnable() { // from class: com.roblox.platform.http.d.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    runnable.run();
                } finally {
                    d.this.a();
                }
            }
        });
        if (this.f7712c == null) {
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a() {
        Runnable runnablePoll = this.f7710a.poll();
        this.f7712c = runnablePoll;
        if (runnablePoll != null) {
            this.f7711b.schedule(runnablePoll, this.f7713d, TimeUnit.MILLISECONDS);
            this.f7710a.clear();
        }
    }
}
