package com.google.android.gms.f;

import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class x<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3957a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Queue<w<TResult>> f3958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3959c;

    x() {
    }

    public final void a(g<TResult> gVar) {
        w<TResult> wVarPoll;
        synchronized (this.f3957a) {
            if (this.f3958b != null && !this.f3959c) {
                this.f3959c = true;
                while (true) {
                    synchronized (this.f3957a) {
                        wVarPoll = this.f3958b.poll();
                        if (wVarPoll == null) {
                            this.f3959c = false;
                            return;
                        }
                    }
                    wVarPoll.a(gVar);
                }
            }
        }
    }

    public final void a(w<TResult> wVar) {
        synchronized (this.f3957a) {
            if (this.f3958b == null) {
                this.f3958b = new ArrayDeque();
            }
            this.f3958b.add(wVar);
        }
    }
}
