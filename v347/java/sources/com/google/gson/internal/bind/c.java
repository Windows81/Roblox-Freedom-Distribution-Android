package com.google.gson.internal.bind;

import com.google.gson.k;
import com.google.gson.m;
import com.google.gson.n;
import com.google.gson.q;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class c extends com.google.gson.c.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Reader f6260b = new Reader() { // from class: com.google.gson.internal.bind.c.1
        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f6261c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f6262d;
    private int e;
    private String[] f;
    private int[] g;

    public c(k kVar) {
        super(f6260b);
        this.f6262d = new Object[32];
        this.e = 0;
        this.f = new String[32];
        this.g = new int[32];
        a(kVar);
    }

    @Override // com.google.gson.c.a
    public void a() throws IOException {
        a(com.google.gson.c.b.BEGIN_ARRAY);
        a(((com.google.gson.h) s()).iterator());
        this.g[this.e - 1] = 0;
    }

    @Override // com.google.gson.c.a
    public void b() throws IOException {
        a(com.google.gson.c.b.END_ARRAY);
        t();
        t();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    @Override // com.google.gson.c.a
    public void c() throws IOException {
        a(com.google.gson.c.b.BEGIN_OBJECT);
        a(((n) s()).a().iterator());
    }

    @Override // com.google.gson.c.a
    public void d() throws IOException {
        a(com.google.gson.c.b.END_OBJECT);
        t();
        t();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    @Override // com.google.gson.c.a
    public boolean e() throws IOException {
        com.google.gson.c.b bVarF = f();
        return (bVarF == com.google.gson.c.b.END_OBJECT || bVarF == com.google.gson.c.b.END_ARRAY) ? false : true;
    }

    @Override // com.google.gson.c.a
    public com.google.gson.c.b f() throws IOException {
        if (this.e == 0) {
            return com.google.gson.c.b.END_DOCUMENT;
        }
        Object objS = s();
        if (objS instanceof Iterator) {
            boolean z = this.f6262d[this.e - 2] instanceof n;
            Iterator it = (Iterator) objS;
            if (!it.hasNext()) {
                return z ? com.google.gson.c.b.END_OBJECT : com.google.gson.c.b.END_ARRAY;
            }
            if (z) {
                return com.google.gson.c.b.NAME;
            }
            a(it.next());
            return f();
        }
        if (objS instanceof n) {
            return com.google.gson.c.b.BEGIN_OBJECT;
        }
        if (objS instanceof com.google.gson.h) {
            return com.google.gson.c.b.BEGIN_ARRAY;
        }
        if (objS instanceof q) {
            q qVar = (q) objS;
            if (qVar.q()) {
                return com.google.gson.c.b.STRING;
            }
            if (qVar.a()) {
                return com.google.gson.c.b.BOOLEAN;
            }
            if (qVar.p()) {
                return com.google.gson.c.b.NUMBER;
            }
            throw new AssertionError();
        }
        if (objS instanceof m) {
            return com.google.gson.c.b.NULL;
        }
        if (objS == f6261c) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new AssertionError();
    }

    private Object s() {
        return this.f6262d[this.e - 1];
    }

    private Object t() {
        Object[] objArr = this.f6262d;
        int i = this.e - 1;
        this.e = i;
        Object obj = objArr[i];
        this.f6262d[this.e] = null;
        return obj;
    }

    private void a(com.google.gson.c.b bVar) throws IOException {
        if (f() != bVar) {
            throw new IllegalStateException("Expected " + bVar + " but was " + f() + u());
        }
    }

    @Override // com.google.gson.c.a
    public String g() throws IOException {
        a(com.google.gson.c.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) s()).next();
        String str = (String) entry.getKey();
        this.f[this.e - 1] = str;
        a(entry.getValue());
        return str;
    }

    @Override // com.google.gson.c.a
    public String h() throws IOException {
        com.google.gson.c.b bVarF = f();
        if (bVarF != com.google.gson.c.b.STRING && bVarF != com.google.gson.c.b.NUMBER) {
            throw new IllegalStateException("Expected " + com.google.gson.c.b.STRING + " but was " + bVarF + u());
        }
        String strC = ((q) t()).c();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
        return strC;
    }

    @Override // com.google.gson.c.a
    public boolean i() throws IOException {
        a(com.google.gson.c.b.BOOLEAN);
        boolean zG = ((q) t()).g();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
        return zG;
    }

    @Override // com.google.gson.c.a
    public void j() throws IOException {
        a(com.google.gson.c.b.NULL);
        t();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    @Override // com.google.gson.c.a
    public double k() throws IOException {
        com.google.gson.c.b bVarF = f();
        if (bVarF != com.google.gson.c.b.NUMBER && bVarF != com.google.gson.c.b.STRING) {
            throw new IllegalStateException("Expected " + com.google.gson.c.b.NUMBER + " but was " + bVarF + u());
        }
        double d2 = ((q) s()).d();
        if (!q() && (Double.isNaN(d2) || Double.isInfinite(d2))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + d2);
        }
        t();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
        return d2;
    }

    @Override // com.google.gson.c.a
    public long l() throws IOException {
        com.google.gson.c.b bVarF = f();
        if (bVarF != com.google.gson.c.b.NUMBER && bVarF != com.google.gson.c.b.STRING) {
            throw new IllegalStateException("Expected " + com.google.gson.c.b.NUMBER + " but was " + bVarF + u());
        }
        long jE = ((q) s()).e();
        t();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
        return jE;
    }

    @Override // com.google.gson.c.a
    public int m() throws IOException {
        com.google.gson.c.b bVarF = f();
        if (bVarF != com.google.gson.c.b.NUMBER && bVarF != com.google.gson.c.b.STRING) {
            throw new IllegalStateException("Expected " + com.google.gson.c.b.NUMBER + " but was " + bVarF + u());
        }
        int iF = ((q) s()).f();
        t();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
        return iF;
    }

    @Override // com.google.gson.c.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6262d = new Object[]{f6261c};
        this.e = 1;
    }

    @Override // com.google.gson.c.a
    public void n() throws IOException {
        if (f() == com.google.gson.c.b.NAME) {
            g();
            this.f[this.e - 2] = "null";
        } else {
            t();
            this.f[this.e - 1] = "null";
        }
        int[] iArr = this.g;
        int i = this.e - 1;
        iArr[i] = iArr[i] + 1;
    }

    @Override // com.google.gson.c.a
    public String toString() {
        return getClass().getSimpleName();
    }

    public void o() throws IOException {
        a(com.google.gson.c.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) s()).next();
        a(entry.getValue());
        a(new q((String) entry.getKey()));
    }

    private void a(Object obj) {
        if (this.e == this.f6262d.length) {
            Object[] objArr = new Object[this.e * 2];
            int[] iArr = new int[this.e * 2];
            String[] strArr = new String[this.e * 2];
            System.arraycopy(this.f6262d, 0, objArr, 0, this.e);
            System.arraycopy(this.g, 0, iArr, 0, this.e);
            System.arraycopy(this.f, 0, strArr, 0, this.e);
            this.f6262d = objArr;
            this.g = iArr;
            this.f = strArr;
        }
        Object[] objArr2 = this.f6262d;
        int i = this.e;
        this.e = i + 1;
        objArr2[i] = obj;
    }

    @Override // com.google.gson.c.a
    public String p() {
        StringBuilder sbAppend = new StringBuilder().append('$');
        int i = 0;
        while (i < this.e) {
            if (this.f6262d[i] instanceof com.google.gson.h) {
                i++;
                if (this.f6262d[i] instanceof Iterator) {
                    sbAppend.append('[').append(this.g[i]).append(']');
                }
            } else if (this.f6262d[i] instanceof n) {
                i++;
                if (this.f6262d[i] instanceof Iterator) {
                    sbAppend.append('.');
                    if (this.f[i] != null) {
                        sbAppend.append(this.f[i]);
                    }
                }
            }
            i++;
        }
        return sbAppend.toString();
    }

    private String u() {
        return " at path " + p();
    }
}
