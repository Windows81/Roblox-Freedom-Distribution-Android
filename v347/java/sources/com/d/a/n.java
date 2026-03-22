package com.d.a;

import android.support.v7.widget.RecyclerView;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class n extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f2495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f2497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f2498d;
    private long e;

    public n(InputStream inputStream) {
        this(inputStream, RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT);
    }

    public n(InputStream inputStream, int i) {
        this.e = -1L;
        this.f2495a = inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream, i);
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.e = a(i);
    }

    public long a(int i) {
        long j = this.f2496b + ((long) i);
        if (this.f2498d < j) {
            b(j);
        }
        return this.f2496b;
    }

    private void b(long j) {
        try {
            if (this.f2497c < this.f2496b && this.f2496b <= this.f2498d) {
                this.f2495a.reset();
                this.f2495a.mark((int) (j - this.f2497c));
                a(this.f2497c, this.f2496b);
            } else {
                this.f2497c = this.f2496b;
                this.f2495a.mark((int) (j - this.f2496b));
            }
            this.f2498d = j;
        } catch (IOException e) {
            throw new IllegalStateException("Unable to mark: " + e);
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        a(this.e);
    }

    public void a(long j) throws IOException {
        if (this.f2496b > this.f2498d || j < this.f2497c) {
            throw new IOException("Cannot reset");
        }
        this.f2495a.reset();
        a(this.f2497c, j);
        this.f2496b = j;
    }

    private void a(long j, long j2) throws IOException {
        while (j < j2) {
            long jSkip = this.f2495a.skip(j2 - j);
            if (jSkip == 0) {
                if (read() != -1) {
                    jSkip = 1;
                } else {
                    return;
                }
            }
            j += jSkip;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = this.f2495a.read();
        if (i != -1) {
            this.f2496b++;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i = this.f2495a.read(bArr);
        if (i != -1) {
            this.f2496b += (long) i;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f2495a.read(bArr, i, i2);
        if (i3 != -1) {
            this.f2496b += (long) i3;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long jSkip = this.f2495a.skip(j);
        this.f2496b += jSkip;
        return jSkip;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f2495a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f2495a.close();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f2495a.markSupported();
    }
}
