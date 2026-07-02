package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.n;
import com.google.ads.interactivemedia.v3.a.o;
import com.google.ads.interactivemedia.v3.a.q;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class e extends com.google.ads.interactivemedia.v3.a.d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Reader f2607a = new Reader() { // from class: com.google.ads.interactivemedia.v3.a.b.a.e.1
        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f2608b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Object> f2609c;

    public e(com.google.ads.interactivemedia.v3.a.l lVar) {
        super(f2607a);
        this.f2609c = new ArrayList();
        this.f2609c.add(lVar);
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public void a() throws IOException {
        a(com.google.ads.interactivemedia.v3.a.d.b.BEGIN_ARRAY);
        this.f2609c.add(((com.google.ads.interactivemedia.v3.a.i) r()).iterator());
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public void b() throws IOException {
        a(com.google.ads.interactivemedia.v3.a.d.b.END_ARRAY);
        s();
        s();
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public void c() throws IOException {
        a(com.google.ads.interactivemedia.v3.a.d.b.BEGIN_OBJECT);
        this.f2609c.add(((o) r()).o().iterator());
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public void d() throws IOException {
        a(com.google.ads.interactivemedia.v3.a.d.b.END_OBJECT);
        s();
        s();
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public boolean e() throws IOException {
        com.google.ads.interactivemedia.v3.a.d.b bVarF = f();
        return (bVarF == com.google.ads.interactivemedia.v3.a.d.b.END_OBJECT || bVarF == com.google.ads.interactivemedia.v3.a.d.b.END_ARRAY) ? false : true;
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public com.google.ads.interactivemedia.v3.a.d.b f() throws IOException {
        if (this.f2609c.isEmpty()) {
            return com.google.ads.interactivemedia.v3.a.d.b.END_DOCUMENT;
        }
        Object objR = r();
        if (objR instanceof Iterator) {
            boolean z = this.f2609c.get(this.f2609c.size() - 2) instanceof o;
            Iterator it = (Iterator) objR;
            if (!it.hasNext()) {
                return z ? com.google.ads.interactivemedia.v3.a.d.b.END_OBJECT : com.google.ads.interactivemedia.v3.a.d.b.END_ARRAY;
            }
            if (z) {
                return com.google.ads.interactivemedia.v3.a.d.b.NAME;
            }
            this.f2609c.add(it.next());
            return f();
        }
        if (objR instanceof o) {
            return com.google.ads.interactivemedia.v3.a.d.b.BEGIN_OBJECT;
        }
        if (objR instanceof com.google.ads.interactivemedia.v3.a.i) {
            return com.google.ads.interactivemedia.v3.a.d.b.BEGIN_ARRAY;
        }
        if (objR instanceof q) {
            q qVar = (q) objR;
            if (qVar.q()) {
                return com.google.ads.interactivemedia.v3.a.d.b.STRING;
            }
            if (qVar.o()) {
                return com.google.ads.interactivemedia.v3.a.d.b.BOOLEAN;
            }
            if (qVar.p()) {
                return com.google.ads.interactivemedia.v3.a.d.b.NUMBER;
            }
            throw new AssertionError();
        }
        if (objR instanceof n) {
            return com.google.ads.interactivemedia.v3.a.d.b.NULL;
        }
        if (objR == f2608b) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new AssertionError();
    }

    private Object r() {
        return this.f2609c.get(this.f2609c.size() - 1);
    }

    private Object s() {
        return this.f2609c.remove(this.f2609c.size() - 1);
    }

    private void a(com.google.ads.interactivemedia.v3.a.d.b bVar) throws IOException {
        if (f() != bVar) {
            String strValueOf = String.valueOf(bVar);
            String strValueOf2 = String.valueOf(f());
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 18 + String.valueOf(strValueOf2).length()).append("Expected ").append(strValueOf).append(" but was ").append(strValueOf2).toString());
        }
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public String g() throws IOException {
        a(com.google.ads.interactivemedia.v3.a.d.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) r()).next();
        this.f2609c.add(entry.getValue());
        return (String) entry.getKey();
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public String h() throws IOException {
        com.google.ads.interactivemedia.v3.a.d.b bVarF = f();
        if (bVarF != com.google.ads.interactivemedia.v3.a.d.b.STRING && bVarF != com.google.ads.interactivemedia.v3.a.d.b.NUMBER) {
            String strValueOf = String.valueOf(com.google.ads.interactivemedia.v3.a.d.b.STRING);
            String strValueOf2 = String.valueOf(bVarF);
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 18 + String.valueOf(strValueOf2).length()).append("Expected ").append(strValueOf).append(" but was ").append(strValueOf2).toString());
        }
        return ((q) s()).b();
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public boolean i() throws IOException {
        a(com.google.ads.interactivemedia.v3.a.d.b.BOOLEAN);
        return ((q) s()).f();
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public void j() throws IOException {
        a(com.google.ads.interactivemedia.v3.a.d.b.NULL);
        s();
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public double k() throws IOException {
        com.google.ads.interactivemedia.v3.a.d.b bVarF = f();
        if (bVarF != com.google.ads.interactivemedia.v3.a.d.b.NUMBER && bVarF != com.google.ads.interactivemedia.v3.a.d.b.STRING) {
            String strValueOf = String.valueOf(com.google.ads.interactivemedia.v3.a.d.b.NUMBER);
            String strValueOf2 = String.valueOf(bVarF);
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 18 + String.valueOf(strValueOf2).length()).append("Expected ").append(strValueOf).append(" but was ").append(strValueOf2).toString());
        }
        double dC = ((q) r()).c();
        if (!p() && (Double.isNaN(dC) || Double.isInfinite(dC))) {
            throw new NumberFormatException(new StringBuilder(57).append("JSON forbids NaN and infinities: ").append(dC).toString());
        }
        s();
        return dC;
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public long l() throws IOException {
        com.google.ads.interactivemedia.v3.a.d.b bVarF = f();
        if (bVarF != com.google.ads.interactivemedia.v3.a.d.b.NUMBER && bVarF != com.google.ads.interactivemedia.v3.a.d.b.STRING) {
            String strValueOf = String.valueOf(com.google.ads.interactivemedia.v3.a.d.b.NUMBER);
            String strValueOf2 = String.valueOf(bVarF);
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 18 + String.valueOf(strValueOf2).length()).append("Expected ").append(strValueOf).append(" but was ").append(strValueOf2).toString());
        }
        long jD = ((q) r()).d();
        s();
        return jD;
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public int m() throws IOException {
        com.google.ads.interactivemedia.v3.a.d.b bVarF = f();
        if (bVarF != com.google.ads.interactivemedia.v3.a.d.b.NUMBER && bVarF != com.google.ads.interactivemedia.v3.a.d.b.STRING) {
            String strValueOf = String.valueOf(com.google.ads.interactivemedia.v3.a.d.b.NUMBER);
            String strValueOf2 = String.valueOf(bVarF);
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 18 + String.valueOf(strValueOf2).length()).append("Expected ").append(strValueOf).append(" but was ").append(strValueOf2).toString());
        }
        int iE = ((q) r()).e();
        s();
        return iE;
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f2609c.clear();
        this.f2609c.add(f2608b);
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public void n() throws IOException {
        if (f() == com.google.ads.interactivemedia.v3.a.d.b.NAME) {
            g();
        } else {
            s();
        }
    }

    @Override // com.google.ads.interactivemedia.v3.a.d.a
    public String toString() {
        return getClass().getSimpleName();
    }

    public void o() throws IOException {
        a(com.google.ads.interactivemedia.v3.a.d.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) r()).next();
        this.f2609c.add(entry.getValue());
        this.f2609c.add(new q((String) entry.getKey()));
    }
}
