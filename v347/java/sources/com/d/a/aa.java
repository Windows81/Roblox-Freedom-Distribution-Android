package com.d.a;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
class aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final HandlerThread f2444a = new HandlerThread("Picasso-Stats", 10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final d f2445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Handler f2446c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f2447d;
    long e;
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
        this.f2445b = dVar;
        this.f2444a.start();
        ae.a(this.f2444a.getLooper());
        this.f2446c = new a(this.f2444a.getLooper(), this);
    }

    void a(Bitmap bitmap) {
        a(bitmap, 2);
    }

    void b(Bitmap bitmap) {
        a(bitmap, 3);
    }

    void a(long j) {
        this.f2446c.sendMessage(this.f2446c.obtainMessage(4, Long.valueOf(j)));
    }

    void a() {
        this.f2446c.sendEmptyMessage(0);
    }

    void b() {
        this.f2446c.sendEmptyMessage(1);
    }

    void c() {
        this.f2447d++;
    }

    void d() {
        this.e++;
    }

    void a(Long l) {
        this.l++;
        this.f += l.longValue();
        this.i = a(this.l, this.f);
    }

    void b(long j) {
        this.m++;
        this.g += j;
        this.j = a(this.m, this.g);
    }

    void c(long j) {
        this.n++;
        this.h += j;
        this.k = a(this.m, this.h);
    }

    ab e() {
        return new ab(this.f2445b.b(), this.f2445b.a(), this.f2447d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, System.currentTimeMillis());
    }

    private void a(Bitmap bitmap, int i) {
        this.f2446c.sendMessage(this.f2446c.obtainMessage(i, ae.a(bitmap), 0));
    }

    private static long a(int i, long j) {
        return j / ((long) i);
    }

    private static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final aa f2448a;

        public a(Looper looper, aa aaVar) {
            super(looper);
            this.f2448a = aaVar;
        }

        @Override // android.os.Handler
        public void handleMessage(final Message message) {
            switch (message.what) {
                case 0:
                    this.f2448a.c();
                    break;
                case 1:
                    this.f2448a.d();
                    break;
                case 2:
                    this.f2448a.b(message.arg1);
                    break;
                case 3:
                    this.f2448a.c(message.arg1);
                    break;
                case 4:
                    this.f2448a.a((Long) message.obj);
                    break;
                default:
                    t.f2515a.post(new Runnable() { // from class: com.d.a.aa.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new AssertionError("Unhandled stats message." + message.what);
                        }
                    });
                    break;
            }
        }
    }
}
