package com.google.android.gms.d;

import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class s<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3597a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private Queue<r<TResult>> f3598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private boolean f3599c;

    s() {
    }

    public final void a(f<TResult> fVar) {
        r<TResult> rVarPoll;
        synchronized (this.f3597a) {
            if (this.f3598b == null || this.f3599c) {
                return;
            }
            this.f3599c = true;
            while (true) {
                synchronized (this.f3597a) {
                    rVarPoll = this.f3598b.poll();
                    if (rVarPoll == null) {
                        this.f3599c = false;
                        return;
                    }
                }
                rVarPoll.a(fVar);
            }
        }
    }

    public final void a(r<TResult> rVar) {
        synchronized (this.f3597a) {
            if (this.f3598b == null) {
                this.f3598b = new ArrayDeque();
            }
            this.f3598b.add(rVar);
        }
    }
}
