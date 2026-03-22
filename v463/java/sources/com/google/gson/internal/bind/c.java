package com.google.gson.internal.bind;

import com.google.gson.n;
import com.google.gson.o;
import com.google.gson.q;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class c extends com.google.gson.c.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Reader f5424b = new Reader() { // from class: com.google.gson.internal.bind.c.1
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
    private static final Object f5425c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f5426d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5427e;
    private String[] f;
    private int[] g;

    @Override // com.google.gson.c.a
    public void a() throws IOException {
        a(com.google.gson.c.b.BEGIN_ARRAY);
        a(((com.google.gson.i) t()).iterator());
        this.g[this.f5427e - 1] = 0;
    }

    @Override // com.google.gson.c.a
    public void b() throws IOException {
        a(com.google.gson.c.b.END_ARRAY);
        u();
        u();
        int i = this.f5427e;
        if (i > 0) {
            int[] iArr = this.g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.c.a
    public void c() throws IOException {
        a(com.google.gson.c.b.BEGIN_OBJECT);
        a(((o) t()).o().iterator());
    }

    @Override // com.google.gson.c.a
    public void d() throws IOException {
        a(com.google.gson.c.b.END_OBJECT);
        u();
        u();
        int i = this.f5427e;
        if (i > 0) {
            int[] iArr = this.g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.c.a
    public boolean e() throws IOException {
        com.google.gson.c.b bVarF = f();
        return (bVarF == com.google.gson.c.b.END_OBJECT || bVarF == com.google.gson.c.b.END_ARRAY) ? false : true;
    }

    @Override // com.google.gson.c.a
    public com.google.gson.c.b f() throws IOException {
        if (this.f5427e == 0) {
            return com.google.gson.c.b.END_DOCUMENT;
        }
        Object objT = t();
        if (objT instanceof Iterator) {
            boolean z = this.f5426d[this.f5427e - 2] instanceof o;
            Iterator it = (Iterator) objT;
            if (!it.hasNext()) {
                return z ? com.google.gson.c.b.END_OBJECT : com.google.gson.c.b.END_ARRAY;
            }
            if (z) {
                return com.google.gson.c.b.NAME;
            }
            a(it.next());
            return f();
        }
        if (objT instanceof o) {
            return com.google.gson.c.b.BEGIN_OBJECT;
        }
        if (objT instanceof com.google.gson.i) {
            return com.google.gson.c.b.BEGIN_ARRAY;
        }
        if (objT instanceof q) {
            q qVar = (q) objT;
            if (qVar.q()) {
                return com.google.gson.c.b.STRING;
            }
            if (qVar.o()) {
                return com.google.gson.c.b.BOOLEAN;
            }
            if (qVar.p()) {
                return com.google.gson.c.b.NUMBER;
            }
            throw new AssertionError();
        }
        if (objT instanceof n) {
            return com.google.gson.c.b.NULL;
        }
        if (objT == f5425c) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new AssertionError();
    }

    private Object t() {
        return this.f5426d[this.f5427e - 1];
    }

    private Object u() {
        Object[] objArr = this.f5426d;
        int i = this.f5427e - 1;
        this.f5427e = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    private void a(com.google.gson.c.b bVar) throws IOException {
        if (f() == bVar) {
            return;
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + f() + v());
    }

    @Override // com.google.gson.c.a
    public String g() throws IOException {
        a(com.google.gson.c.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) t()).next();
        String str = (String) entry.getKey();
        this.f[this.f5427e - 1] = str;
        a(entry.getValue());
        return str;
    }

    @Override // com.google.gson.c.a
    public String h() throws IOException {
        com.google.gson.c.b bVarF = f();
        if (bVarF != com.google.gson.c.b.STRING && bVarF != com.google.gson.c.b.NUMBER) {
            throw new IllegalStateException("Expected " + com.google.gson.c.b.STRING + " but was " + bVarF + v());
        }
        String strB = ((q) u()).b();
        int i = this.f5427e;
        if (i > 0) {
            int[] iArr = this.g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return strB;
    }

    @Override // com.google.gson.c.a
    public boolean i() throws IOException {
        a(com.google.gson.c.b.BOOLEAN);
        boolean zF = ((q) u()).f();
        int i = this.f5427e;
        if (i > 0) {
            int[] iArr = this.g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return zF;
    }

    @Override // com.google.gson.c.a
    public void j() throws IOException {
        a(com.google.gson.c.b.NULL);
        u();
        int i = this.f5427e;
        if (i > 0) {
            int[] iArr = this.g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.c.a
    public double k() throws IOException {
        com.google.gson.c.b bVarF = f();
        if (bVarF != com.google.gson.c.b.NUMBER && bVarF != com.google.gson.c.b.STRING) {
            throw new IllegalStateException("Expected " + com.google.gson.c.b.NUMBER + " but was " + bVarF + v());
        }
        double dC = ((q) t()).c();
        if (!q() && (Double.isNaN(dC) || Double.isInfinite(dC))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + dC);
        }
        u();
        int i = this.f5427e;
        if (i > 0) {
            int[] iArr = this.g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return dC;
    }

    @Override // com.google.gson.c.a
    public long l() throws IOException {
        com.google.gson.c.b bVarF = f();
        if (bVarF != com.google.gson.c.b.NUMBER && bVarF != com.google.gson.c.b.STRING) {
            throw new IllegalStateException("Expected " + com.google.gson.c.b.NUMBER + " but was " + bVarF + v());
        }
        long jD = ((q) t()).d();
        u();
        int i = this.f5427e;
        if (i > 0) {
            int[] iArr = this.g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return jD;
    }

    @Override // com.google.gson.c.a
    public int m() throws IOException {
        com.google.gson.c.b bVarF = f();
        if (bVarF != com.google.gson.c.b.NUMBER && bVarF != com.google.gson.c.b.STRING) {
            throw new IllegalStateException("Expected " + com.google.gson.c.b.NUMBER + " but was " + bVarF + v());
        }
        int iE = ((q) t()).e();
        u();
        int i = this.f5427e;
        if (i > 0) {
            int[] iArr = this.g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return iE;
    }

    @Override // com.google.gson.c.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5426d = new Object[]{f5425c};
        this.f5427e = 1;
    }

    @Override // com.google.gson.c.a
    public void n() throws IOException {
        if (f() == com.google.gson.c.b.NAME) {
            g();
            this.f[this.f5427e - 2] = "null";
        } else {
            u();
            int i = this.f5427e;
            if (i > 0) {
                this.f[i - 1] = "null";
            }
        }
        int i2 = this.f5427e;
        if (i2 > 0) {
            int[] iArr = this.g;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // com.google.gson.c.a
    public String toString() {
        return getClass().getSimpleName();
    }

    public void o() throws IOException {
        a(com.google.gson.c.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) t()).next();
        a(entry.getValue());
        a(new q((String) entry.getKey()));
    }

    private void a(Object obj) {
        int i = this.f5427e;
        Object[] objArr = this.f5426d;
        if (i == objArr.length) {
            Object[] objArr2 = new Object[i * 2];
            int[] iArr = new int[i * 2];
            String[] strArr = new String[i * 2];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            System.arraycopy(this.g, 0, iArr, 0, this.f5427e);
            System.arraycopy(this.f, 0, strArr, 0, this.f5427e);
            this.f5426d = objArr2;
            this.g = iArr;
            this.f = strArr;
        }
        Object[] objArr3 = this.f5426d;
        int i2 = this.f5427e;
        this.f5427e = i2 + 1;
        objArr3[i2] = obj;
    }

    @Override // com.google.gson.c.a
    public String p() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i = 0;
        while (i < this.f5427e) {
            Object[] objArr = this.f5426d;
            if (objArr[i] instanceof com.google.gson.i) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.g[i]);
                    sb.append(']');
                }
            } else if (objArr[i] instanceof o) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append('.');
                    String[] strArr = this.f;
                    if (strArr[i] != null) {
                        sb.append(strArr[i]);
                    }
                }
            }
            i++;
        }
        return sb.toString();
    }

    private String v() {
        return " at path " + p();
    }
}
