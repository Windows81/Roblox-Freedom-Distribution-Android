package b;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class c implements Closeable, Flushable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b.a.a.e f2010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b.a.a.d f2011b;

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.f2011b.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f2011b.close();
    }
}
