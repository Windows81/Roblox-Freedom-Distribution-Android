package c;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class c implements Closeable, Flushable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final c.a.a.e f2758a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c.a.a.d f2759b;

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.f2759b.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f2759b.close();
    }
}
