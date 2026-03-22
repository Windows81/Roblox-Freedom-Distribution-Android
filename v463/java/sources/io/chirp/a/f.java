package io.chirp.a;

import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static Semaphore f7941a = new Semaphore(1, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f7942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7944d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7945e = 0;

    public class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    public f(int i) {
        this.f7942b = null;
        this.f7943c = 0;
        this.f7943c = i;
        this.f7942b = new byte[i];
    }

    public int a(byte[] bArr, int i) throws a {
        if (i > this.f7943c - this.f7945e) {
            throw new a("RingBuffer put - buffer full");
        }
        try {
            if (!f7941a.tryAcquire(100L, TimeUnit.MILLISECONDS)) {
                throw new a("buffer busy");
            }
            for (int i2 = 0; i2 < i; i2++) {
                byte[] bArr2 = this.f7942b;
                int i3 = this.f7944d;
                bArr2[i3] = bArr[i2];
                int i4 = this.f7943c;
                this.f7944d = (i3 + 1) % i4;
                int i5 = this.f7945e + 1;
                this.f7945e = i5;
                if (i5 > i4) {
                    this.f7945e = i4;
                    f7941a.release();
                    throw new a("buffer full");
                }
            }
            f7941a.release();
            return i;
        } catch (InterruptedException unused) {
            throw new a("RingBuffer put - buffer busy, cannot acquire semaphore");
        }
    }

    public void a() {
        this.f7942b = new byte[this.f7943c];
    }

    public int b(byte[] bArr, int i) throws a {
        if (i > this.f7945e) {
            throw new a("RingBuffer take - buffer empty");
        }
        try {
            if (!f7941a.tryAcquire(50L, TimeUnit.MILLISECONDS)) {
                throw new a("RingBuffer take - buffer busy");
            }
            int i2 = this.f7944d - this.f7945e;
            if (i2 < 0) {
                i2 += this.f7943c;
            }
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = this.f7942b[i2];
                i2 = (i2 + 1) % this.f7943c;
            }
            this.f7945e -= i;
            f7941a.release();
            return i;
        } catch (InterruptedException unused) {
            throw new a("RingBuffer take - buffer busy, cannot acquire semaphore");
        }
    }
}
