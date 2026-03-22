package com.roblox.client.datastructures;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f5972c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f5971b = a.IDLE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.roblox.client.datastructures.a f5973d = new com.roblox.client.datastructures.a() { // from class: com.roblox.client.datastructures.b.1
        @Override // com.roblox.client.datastructures.a
        public void a() {
            b.this.f5971b = a.IDLE;
            b.this.a();
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Runnable f5974e = new Runnable() { // from class: com.roblox.client.datastructures.b.2
        @Override // java.lang.Runnable
        public void run() {
            b.this.a();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Queue<c> f5970a = new ArrayBlockingQueue(20);

    private enum a {
        IDLE,
        PROCESSING
    }

    protected b() {
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        this.f5972c = new Handler();
    }

    public void a(c cVar) {
        try {
            this.f5970a.add(cVar);
        } catch (IllegalStateException unused) {
            Log.e("RbxBlockingQueue", "Queue full! Cannot add more reports.");
        }
        a();
    }

    protected void a() {
        if (this.f5971b == a.IDLE) {
            this.f5971b = a.PROCESSING;
            c cVarPeek = this.f5970a.peek();
            if (cVarPeek != null && cVarPeek.a()) {
                c cVarPoll = this.f5970a.poll();
                if (cVarPoll != null) {
                    cVarPoll.a(this.f5973d);
                    return;
                } else {
                    this.f5971b = a.IDLE;
                    return;
                }
            }
            this.f5971b = a.IDLE;
            this.f5972c.removeCallbacks(this.f5974e);
            if (this.f5970a.size() > 0) {
                this.f5972c.postDelayed(this.f5974e, 10000L);
            }
        }
    }
}
