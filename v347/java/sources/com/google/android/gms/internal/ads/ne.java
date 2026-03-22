package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ne extends FilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f5338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f5339b;

    ne(InputStream inputStream, long j) {
        super(inputStream);
        this.f5338a = j;
    }

    final long a() {
        return this.f5338a - this.f5339b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i = super.read();
        if (i != -1) {
            this.f5339b++;
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = super.read(bArr, i, i2);
        if (i3 != -1) {
            this.f5339b += (long) i3;
        }
        return i3;
    }
}
