package d;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class h implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f7773a;

    public h(s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f7773a = sVar;
    }

    @Override // d.s
    public long a(c cVar, long j) throws IOException {
        return this.f7773a.a(cVar, j);
    }

    @Override // d.s
    public t a() {
        return this.f7773a.a();
    }

    @Override // d.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f7773a.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f7773a.toString() + ")";
    }
}
