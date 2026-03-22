package android.support.v4.g;

import android.util.Log;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e extends Writer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private StringBuilder f933b = new StringBuilder(128);

    public e(String str) {
        this.f932a = str;
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
                this.f933b.append(c2);
            }
        }
    }

    private void a() {
        if (this.f933b.length() > 0) {
            Log.d(this.f932a, this.f933b.toString());
            this.f933b.delete(0, this.f933b.length());
        }
    }
}
