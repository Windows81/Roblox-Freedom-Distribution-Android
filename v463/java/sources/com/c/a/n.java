package com.c.a;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class n extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f3151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f3152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f3153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f3154d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f3155e;

    public n(InputStream inputStream) {
        this(inputStream, 4096);
    }

    public n(InputStream inputStream, int i) {
        this.f3155e = -1L;
        this.f3151a = inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream, i);
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f3155e = a(i);
    }

    public long a(int i) {
        long j = this.f3152b + ((long) i);
        if (this.f3154d < j) {
            b(j);
        }
        return this.f3152b;
    }

    private void b(long j) {
        try {
            if (this.f3153c < this.f3152b && this.f3152b <= this.f3154d) {
                this.f3151a.reset();
                this.f3151a.mark((int) (j - this.f3153c));
                a(this.f3153c, this.f3152b);
            } else {
                this.f3153c = this.f3152b;
                this.f3151a.mark((int) (j - this.f3152b));
            }
            this.f3154d = j;
        } catch (IOException e2) {
            throw new IllegalStateException("Unable to mark: " + e2);
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        a(this.f3155e);
    }

    public void a(long j) throws IOException {
        if (this.f3152b > this.f3154d || j < this.f3153c) {
            throw new IOException("Cannot reset");
        }
        this.f3151a.reset();
        a(this.f3153c, j);
        this.f3152b = j;
    }

    private void a(long j, long j2) throws IOException {
        while (j < j2) {
            long jSkip = this.f3151a.skip(j2 - j);
            if (jSkip == 0) {
                if (read() == -1) {
                    return;
                } else {
                    jSkip = 1;
                }
            }
            j += jSkip;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = this.f3151a.read();
        if (i != -1) {
            this.f3152b++;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i = this.f3151a.read(bArr);
        if (i != -1) {
            this.f3152b += (long) i;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f3151a.read(bArr, i, i2);
        if (i3 != -1) {
            this.f3152b += (long) i3;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long jSkip = this.f3151a.skip(j);
        this.f3152b += jSkip;
        return jSkip;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f3151a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3151a.close();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f3151a.markSupported();
    }
}
