package com.c.a;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final HandlerThread f3095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final d f3096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Handler f3097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f3098d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f3099e;
    long f;
    long g;
    long h;
    long i;
    long j;
    long k;
    int l;
    int m;
    int n;

    aa(d dVar) {
        this.f3096b = dVar;
        HandlerThread handlerThread = new HandlerThread("Picasso-Stats", 10);
        this.f3095a = handlerThread;
        handlerThread.start();
        ae.a(this.f3095a.getLooper());
        this.f3097c = new a(this.f3095a.getLooper(), this);
    }

    void a(Bitmap bitmap) {
        a(bitmap, 2);
    }

    void b(Bitmap bitmap) {
        a(bitmap, 3);
    }

    void a(long j) {
        Handler handler = this.f3097c;
        handler.sendMessage(handler.obtainMessage(4, Long.valueOf(j)));
    }

    void a() {
        this.f3097c.sendEmptyMessage(0);
    }

    void b() {
        this.f3097c.sendEmptyMessage(1);
    }

    void c() {
        this.f3098d++;
    }

    void d() {
        this.f3099e++;
    }

    void a(Long l) {
        this.l++;
        long jLongValue = this.f + l.longValue();
        this.f = jLongValue;
        this.i = a(this.l, jLongValue);
    }

    void b(long j) {
        int i = this.m + 1;
        this.m = i;
        long j2 = this.g + j;
        this.g = j2;
        this.j = a(i, j2);
    }

    void c(long j) {
        this.n++;
        long j2 = this.h + j;
        this.h = j2;
        this.k = a(this.m, j2);
    }

    ab e() {
        return new ab(this.f3096b.b(), this.f3096b.a(), this.f3098d, this.f3099e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, System.currentTimeMillis());
    }

    private void a(Bitmap bitmap, int i) {
        int iA = ae.a(bitmap);
        Handler handler = this.f3097c;
        handler.sendMessage(handler.obtainMessage(i, iA, 0));
    }

    private static long a(int i, long j) {
        return j / ((long) i);
    }

    private static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final aa f3100a;

        public a(Looper looper, aa aaVar) {
            super(looper);
            this.f3100a = aaVar;
        }

        @Override // android.os.Handler
        public void handleMessage(final Message message) {
            int i = message.what;
            if (i == 0) {
                this.f3100a.c();
                return;
            }
            if (i == 1) {
                this.f3100a.d();
                return;
            }
            if (i == 2) {
                this.f3100a.b(message.arg1);
                return;
            }
            if (i == 3) {
                this.f3100a.c(message.arg1);
            } else if (i == 4) {
                this.f3100a.a((Long) message.obj);
            } else {
                t.f3174a.post(new Runnable() { // from class: com.c.a.aa.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new AssertionError("Unhandled stats message." + message.what);
                    }
                });
            }
        }
    }
}
