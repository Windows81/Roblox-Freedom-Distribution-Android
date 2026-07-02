package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.n;
import com.google.ads.interactivemedia.v3.a.o;
import com.google.ads.interactivemedia.v3.a.q;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class f extends com.google.ads.interactivemedia.v3.a.d.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Writer f2610a = new Writer() { // from class: com.google.ads.interactivemedia.v3.a.b.a.f.1
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
    private static final q f2611b = new q("closed");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<com.google.ads.interactivemedia.v3.a.l> f2612c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2613d;
    private com.google.ads.interactivemedia.v3.a.l e;

    public f() {
        super(f2610a);
        this.f2612c = new ArrayList();
        this.e = n.f2759a;
    }

    public com.google.ads.interactivemedia.v3.a.l a() {
        if (!this.f2612c.isEmpty()) {
            String strValueOf = String.valueOf(this.f2612c);
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 34).append("Expected one JSON element but was ").append(strValueOf).toString());
        }
        return this.e;
    }

    private com.google.ads.interactivemedia.v3.a.l j() {
        return this.f2612c.get(this.f2612c.size() - 1);
    }

    private void a(com.google.ads.interactivemedia.v3.a.l lVar) {
        if (this.f2613d != null) {
            if (!lVar.j() || i()) {
                ((o) j()).a(this.f2613d, lVar);
            }
            this.f2613d = null;
            return;
        }
        if (this.f2612c.isEmpty()) {
            this.e = lVar;
            return;
        }
        com.google.ads.interactivemedia.v3.a.l lVarJ = j();
        if (lVarJ instanceof com.google.ads.interactivemedia.v3.a.i) {
            ((com.google.ads.interactivemedia.v3.a.i) lVarJ).a(lVar);
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.c
    public com.google.ads.interactivemedia.v3.a.d.c b() throws IOException {
        com.google.ads.interactivemedia.v3.a.i iVar = new com.google.ads.interactivemedia.v3.a.i();
        a(iVar);
        this.f2612c.add(iVar);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.c
    public com.google.ads.interactivemedia.v3.a.d.c c() throws IOException {
        if (this.f2612c.isEmpty() || this.f2613d != null) {
            throw new IllegalStateException();
        }
        if (j() instanceof com.google.ads.interactivemedia.v3.a.i) {
            this.f2612c.remove(this.f2612c.size() - 1);
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.c
    public com.google.ads.interactivemedia.v3.a.d.c d() throws IOException {
        o oVar = new o();
        a(oVar);
        this.f2612c.add(oVar);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.c
    public com.google.ads.interactivemedia.v3.a.d.c e() throws IOException {
        if (this.f2612c.isEmpty() || this.f2613d != null) {
            throw new IllegalStateException();
        }
        if (j() instanceof o) {
            this.f2612c.remove(this.f2612c.size() - 1);
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.c
    public com.google.ads.interactivemedia.v3.a.d.c a(String str) throws IOException {
        if (this.f2612c.isEmpty() || this.f2613d != null) {
            throw new IllegalStateException();
        }
        if (j() instanceof o) {
            this.f2613d = str;
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.c
    public com.google.ads.interactivemedia.v3.a.d.c b(String str) throws IOException {
        if (str == null) {
            return f();
        }
        a(new q(str));
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.c
    public com.google.ads.interactivemedia.v3.a.d.c f() throws IOException {
        a(n.f2759a);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.c
    public com.google.ads.interactivemedia.v3.a.d.c a(boolean z) throws IOException {
        a(new q(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.c
    public com.google.ads.interactivemedia.v3.a.d.c a(long j) throws IOException {
        a(new q(Long.valueOf(j)));
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.c
    public com.google.ads.interactivemedia.v3.a.d.c a(Number number) throws IOException {
        if (number == null) {
            return f();
        }
        if (!g()) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                String strValueOf = String.valueOf(number);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 33).append("JSON forbids NaN and infinities: ").append(strValueOf).toString());
            }
        }
        a(new q(number));
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.c, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f2612c.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.f2612c.add(f2611b);
    }
}
