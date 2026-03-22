package com.google.gson.internal.bind;

import com.google.gson.l;
import com.google.gson.n;
import com.google.gson.o;
import com.google.gson.q;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d extends com.google.gson.c.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Writer f5428a = new Writer() { // from class: com.google.gson.internal.bind.d.1
        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final q f5429b = new q("closed");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<l> f5430c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5431d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private l f5432e;

    @Override // com.google.gson.c.c, java.io.Flushable
    public void flush() throws IOException {
    }

    public d() {
        super(f5428a);
        this.f5430c = new ArrayList();
        this.f5432e = n.f5507a;
    }

    public l a() {
        if (!this.f5430c.isEmpty()) {
            throw new IllegalStateException("Expected one JSON element but was " + this.f5430c);
        }
        return this.f5432e;
    }

    private l j() {
        return this.f5430c.get(r0.size() - 1);
    }

    private void a(l lVar) {
        if (this.f5431d != null) {
            if (!lVar.j() || i()) {
                ((o) j()).a(this.f5431d, lVar);
            }
            this.f5431d = null;
            return;
        }
        if (this.f5430c.isEmpty()) {
            this.f5432e = lVar;
            return;
        }
        l lVarJ = j();
        if (lVarJ instanceof com.google.gson.i) {
            ((com.google.gson.i) lVarJ).a(lVar);
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c b() throws IOException {
        com.google.gson.i iVar = new com.google.gson.i();
        a(iVar);
        this.f5430c.add(iVar);
        return this;
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c c() throws IOException {
        if (this.f5430c.isEmpty() || this.f5431d != null) {
            throw new IllegalStateException();
        }
        if (j() instanceof com.google.gson.i) {
            this.f5430c.remove(r0.size() - 1);
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c d() throws IOException {
        o oVar = new o();
        a(oVar);
        this.f5430c.add(oVar);
        return this;
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c e() throws IOException {
        if (this.f5430c.isEmpty() || this.f5431d != null) {
            throw new IllegalStateException();
        }
        if (j() instanceof o) {
            this.f5430c.remove(r0.size() - 1);
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c a(String str) throws IOException {
        if (this.f5430c.isEmpty() || this.f5431d != null) {
            throw new IllegalStateException();
        }
        if (j() instanceof o) {
            this.f5431d = str;
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c b(String str) throws IOException {
        if (str == null) {
            return f();
        }
        a(new q(str));
        return this;
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c f() throws IOException {
        a(n.f5507a);
        return this;
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c a(boolean z) throws IOException {
        a(new q(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c a(Boolean bool) throws IOException {
        if (bool == null) {
            return f();
        }
        a(new q(bool));
        return this;
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c a(long j) throws IOException {
        a(new q(Long.valueOf(j)));
        return this;
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c a(Number number) throws IOException {
        if (number == null) {
            return f();
        }
        if (!g()) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        a(new q(number));
        return this;
    }

    @Override // com.google.gson.c.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f5430c.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.f5430c.add(f5429b);
    }
}
