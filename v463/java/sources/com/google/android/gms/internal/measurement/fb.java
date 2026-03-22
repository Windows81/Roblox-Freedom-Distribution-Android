package com.google.android.gms.internal.measurement;

import android.os.Process;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fb extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BlockingQueue<fa<?>> f4314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ ex f4315c;

    public fb(ex exVar, String str, BlockingQueue<fa<?>> blockingQueue) {
        this.f4315c = exVar;
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(blockingQueue);
        this.f4313a = new Object();
        this.f4314b = blockingQueue;
        setName(str);
    }

    private final void a(InterruptedException interruptedException) {
        this.f4315c.q().y().a(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    public final void a() {
        synchronized (this.f4313a) {
            this.f4313a.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z = false;
        while (!z) {
            try {
                this.f4315c.i.acquire();
                z = true;
            } catch (InterruptedException e2) {
                a(e2);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                fa<?> faVarPoll = this.f4314b.poll();
                if (faVarPoll == null) {
                    synchronized (this.f4313a) {
                        if (this.f4314b.peek() == null && !this.f4315c.j) {
                            try {
                                this.f4313a.wait(30000L);
                            } catch (InterruptedException e3) {
                                a(e3);
                            }
                        }
                    }
                    synchronized (this.f4315c.h) {
                        if (this.f4314b.peek() == null) {
                            break;
                        }
                    }
                } else {
                    Process.setThreadPriority(faVarPoll.f4309a ? threadPriority : 10);
                    faVarPoll.run();
                }
            }
            synchronized (this.f4315c.h) {
                this.f4315c.i.release();
                this.f4315c.h.notifyAll();
                if (this == this.f4315c.f4302b) {
                    ex.a(this.f4315c, null);
                } else if (this == this.f4315c.f4303c) {
                    ex.b(this.f4315c, null);
                } else {
                    this.f4315c.q().v().a("Current scheduler thread is neither worker nor network");
                }
            }
        } catch (Throwable th) {
            synchronized (this.f4315c.h) {
                this.f4315c.i.release();
                this.f4315c.h.notifyAll();
                if (this == this.f4315c.f4302b) {
                    ex.a(this.f4315c, null);
                } else if (this == this.f4315c.f4303c) {
                    ex.b(this.f4315c, null);
                } else {
                    this.f4315c.q().v().a("Current scheduler thread is neither worker nor network");
                }
                throw th;
            }
        }
    }
}
