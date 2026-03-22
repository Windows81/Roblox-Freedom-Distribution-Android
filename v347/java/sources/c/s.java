package c;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface s extends Closeable {
    long a(c cVar, long j) throws IOException;

    t a();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;
}
