package androidx.core.g;

import android.util.Log;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends Writer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private StringBuilder f1423b = new StringBuilder(128);

    public b(String str) {
        this.f1422a = str;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c2 = cArr[i + i3];
            if (c2 == '\n') {
                a();
            } else {
                this.f1423b.append(c2);
            }
        }
    }

    private void a() {
        if (this.f1423b.length() > 0) {
            Log.d(this.f1422a, this.f1423b.toString());
            StringBuilder sb = this.f1423b;
            sb.delete(0, sb.length());
        }
    }
}
