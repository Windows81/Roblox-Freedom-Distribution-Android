package com.birbit.android.jobqueue.scheduling;

import android.content.Context;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class Scheduler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Callback f3082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f3083b;

    public interface Callback {
        boolean start(a aVar);

        boolean stop(a aVar);
    }

    public abstract void a();

    public abstract void a(a aVar, boolean z);

    public abstract void b(a aVar);

    protected Scheduler() {
    }

    public void a(Context context, Callback callback) {
        this.f3083b = context.getApplicationContext();
        this.f3082a = callback;
    }

    public final boolean c(a aVar) {
        Callback callback = this.f3082a;
        if (callback == null) {
            throw new IllegalStateException("JobManager callback is not configured");
        }
        return callback.start(aVar);
    }

    public final boolean d(a aVar) {
        Callback callback = this.f3082a;
        if (callback == null) {
            throw new IllegalStateException("JobManager callback is not configured");
        }
        return callback.stop(aVar);
    }
}
