package c;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class h implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f2139a;

    public h(s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f2139a = sVar;
    }

    @Override // c.s
    public long a(c cVar, long j) throws IOException {
        return this.f2139a.a(cVar, j);
    }

    @Override // c.s
    public t a() {
        return this.f2139a.a();
    }

    @Override // c.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f2139a.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f2139a.toString() + ")";
    }
}
