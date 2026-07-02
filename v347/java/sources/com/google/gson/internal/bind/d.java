package com.google.gson.internal.bind;

import com.google.gson.k;
import com.google.gson.m;
import com.google.gson.n;
import com.google.gson.q;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d extends com.google.gson.c.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Writer f6263a = new Writer() { // from class: com.google.gson.internal.bind.d.1
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
    private static final q f6264b = new q("closed");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<k> f6265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6266d;
    private k e;

    public d() {
        super(f6263a);
        this.f6265c = new ArrayList();
        this.e = m.f6335a;
    }

    public k a() {
        if (!this.f6265c.isEmpty()) {
            throw new IllegalStateException("Expected one JSON element but was " + this.f6265c);
        }
        return this.e;
    }

    private k j() {
        return this.f6265c.get(this.f6265c.size() - 1);
    }

    private void a(k kVar) {
        if (this.f6266d != null) {
            if (!kVar.k() || i()) {
                ((n) j()).a(this.f6266d, kVar);
            }
            this.f6266d = null;
            return;
        }
        if (this.f6265c.isEmpty()) {
            this.e = kVar;
            return;
        }
        k kVarJ = j();
        if (kVarJ instanceof com.google.gson.h) {
            ((com.google.gson.h) kVarJ).a(kVar);
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c b() throws IOException {
        com.google.gson.h hVar = new com.google.gson.h();
        a(hVar);
        this.f6265c.add(hVar);
        return this;
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c c() throws IOException {
        if (this.f6265c.isEmpty() || this.f6266d != null) {
            throw new IllegalStateException();
        }
        if (j() instanceof com.google.gson.h) {
            this.f6265c.remove(this.f6265c.size() - 1);
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c d() throws IOException {
        n nVar = new n();
        a(nVar);
        this.f6265c.add(nVar);
        return this;
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c e() throws IOException {
        if (this.f6265c.isEmpty() || this.f6266d != null) {
            throw new IllegalStateException();
        }
        if (j() instanceof n) {
            this.f6265c.remove(this.f6265c.size() - 1);
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.c.c
    public com.google.gson.c.c a(String str) throws IOException {
        if (this.f6265c.isEmpty() || this.f6266d != null) {
            throw new IllegalStateException();
        }
        if (j() instanceof n) {
            this.f6266d = str;
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
        a(m.f6335a);
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
        a(new q((Number) Long.valueOf(j)));
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

    @Override // com.google.gson.c.c, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // com.google.gson.c.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f6265c.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.f6265c.add(f6264b);
    }
}
