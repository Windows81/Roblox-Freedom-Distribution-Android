package com.roblox.client.datastructures;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f6862c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f6861b = a.IDLE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.roblox.client.datastructures.a f6863d = new com.roblox.client.datastructures.a() { // from class: com.roblox.client.datastructures.b.1
        @Override // com.roblox.client.datastructures.a
        public void a() {
            b.this.f6861b = a.IDLE;
            b.this.a();
        }
    };
    private Runnable e = new Runnable() { // from class: com.roblox.client.datastructures.b.2
        @Override // java.lang.Runnable
        public void run() {
            b.this.a();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Queue<c> f6860a = new ArrayBlockingQueue(20);

    private enum a {
        IDLE,
        PROCESSING
    }

    protected b() {
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        this.f6862c = new Handler();
    }

    public void a(c cVar) {
        try {
            this.f6860a.add(cVar);
        } catch (IllegalStateException e) {
            Log.e("RbxBlockingQueue", "Queue full! Cannot add more reports.");
        }
        a();
    }

    protected void a() {
        if (this.f6861b == a.IDLE) {
            this.f6861b = a.PROCESSING;
            c cVarPeek = this.f6860a.peek();
            if (cVarPeek != null && cVarPeek.a()) {
                c cVarPoll = this.f6860a.poll();
                if (cVarPoll != null) {
                    cVarPoll.a(this.f6863d);
                    return;
                } else {
                    this.f6861b = a.IDLE;
                    return;
                }
            }
            this.f6861b = a.IDLE;
            this.f6862c.removeCallbacks(this.e);
            if (this.f6860a.size() > 0) {
                this.f6862c.postDelayed(this.e, 10000L);
            }
        }
    }
}
