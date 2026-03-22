package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class tg extends ByteArrayOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final jb f5574a;

    public tg(jb jbVar, int i) {
        this.f5574a = jbVar;
        this.buf = this.f5574a.a(Math.max(i, 256));
    }

    private final void a(int i) {
        if (this.count + i <= this.buf.length) {
            return;
        }
        byte[] bArrA = this.f5574a.a((this.count + i) << 1);
        System.arraycopy(this.buf, 0, bArrA, 0, this.count);
        this.f5574a.a(this.buf);
        this.buf = bArrA;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f5574a.a(this.buf);
        this.buf = null;
        super.close();
    }

    public final void finalize() {
        this.f5574a.a(this.buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(int i) {
        a(1);
        super.write(i);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        a(i2);
        super.write(bArr, i, i2);
    }
}
