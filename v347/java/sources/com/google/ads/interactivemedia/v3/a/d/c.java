package com.google.ads.interactivemedia.v3.a.d;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c implements Closeable, Flushable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f2740a = new String[128];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f2741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Writer f2742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f2743d = new int[32];
    private int e = 0;
    private String f;
    private String g;
    private boolean h;
    private boolean i;
    private String j;
    private boolean k;

    static {
        for (int i = 0; i <= 31; i++) {
            f2740a[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        f2740a[34] = "\\\"";
        f2740a[92] = "\\\\";
        f2740a[9] = "\\t";
        f2740a[8] = "\\b";
        f2740a[10] = "\\n";
        f2740a[13] = "\\r";
        f2740a[12] = "\\f";
        f2741b = (String[]) f2740a.clone();
        f2741b[60] = "\\u003c";
        f2741b[62] = "\\u003e";
        f2741b[38] = "\\u0026";
        f2741b[61] = "\\u003d";
        f2741b[39] = "\\u0027";
    }

    public c(Writer writer) {
        a(6);
        this.g = ":";
        this.k = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.f2742c = writer;
    }

    public final void c(String str) {
        if (str.length() == 0) {
            this.f = null;
            this.g = ":";
        } else {
            this.f = str;
            this.g = ": ";
        }
    }

    public final void b(boolean z) {
        this.h = z;
    }

    public boolean g() {
        return this.h;
    }

    public final void c(boolean z) {
        this.i = z;
    }

    public final boolean h() {
        return this.i;
    }

    public final void d(boolean z) {
        this.k = z;
    }

    public final boolean i() {
        return this.k;
    }

    public c b() throws IOException {
        j();
        return a(1, "[");
    }

    public c c() throws IOException {
        return a(1, 2, "]");
    }

    public c d() throws IOException {
        j();
        return a(3, "{");
    }

    public c e() throws IOException {
        return a(3, 5, "}");
    }

    private c a(int i, String str) throws IOException {
        e(true);
        a(i);
        this.f2742c.write(str);
        return this;
    }

    private c a(int i, int i2, String str) throws IOException {
        int iA = a();
        if (iA != i2 && iA != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.j != null) {
            String strValueOf = String.valueOf(this.j);
            throw new IllegalStateException(strValueOf.length() != 0 ? "Dangling name: ".concat(strValueOf) : new String("Dangling name: "));
        }
        this.e--;
        if (iA == i2) {
            k();
        }
        this.f2742c.write(str);
        return this;
    }

    private void a(int i) {
        if (this.e == this.f2743d.length) {
            int[] iArr = new int[this.e * 2];
            System.arraycopy(this.f2743d, 0, iArr, 0, this.e);
            this.f2743d = iArr;
        }
        int[] iArr2 = this.f2743d;
        int i2 = this.e;
        this.e = i2 + 1;
        iArr2[i2] = i;
    }

    private int a() {
        if (this.e == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        return this.f2743d[this.e - 1];
    }

    private void b(int i) {
        this.f2743d[this.e - 1] = i;
    }

    public c a(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.j != null) {
            throw new IllegalStateException();
        }
        if (this.e == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.j = str;
        return this;
    }

    private void j() throws IOException {
        if (this.j != null) {
            l();
            d(this.j);
            this.j = null;
        }
    }

    public c b(String str) throws IOException {
        if (str == null) {
            return f();
        }
        j();
        e(false);
        d(str);
        return this;
    }

    public c f() throws IOException {
        if (this.j != null) {
            if (this.k) {
                j();
                e(false);
                this.f2742c.write("null");
            } else {
                this.j = null;
            }
        } else {
            e(false);
            this.f2742c.write("null");
        }
        return this;
    }

    public c a(boolean z) throws IOException {
        j();
        e(false);
        this.f2742c.write(z ? "true" : "false");
        return this;
    }

    public c a(long j) throws IOException {
        j();
        e(false);
        this.f2742c.write(Long.toString(j));
        return this;
    }

    public c a(Number number) throws IOException {
        if (number == null) {
            return f();
        }
        j();
        String string = number.toString();
        if (!this.h && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            String strValueOf = String.valueOf(number);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 39).append("Numeric values must be finite, but was ").append(strValueOf).toString());
        }
        e(false);
        this.f2742c.append((CharSequence) string);
        return this;
    }

    public void flush() throws IOException {
        if (this.e == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f2742c.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f2742c.close();
        int i = this.e;
        if (i > 1 || (i == 1 && this.f2743d[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.e = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void d(java.lang.String r8) throws java.io.IOException {
        /*
            r7 = this;
            r1 = 0
            boolean r0 = r7.i
            if (r0 == 0) goto L25
            java.lang.String[] r0 = com.google.ads.interactivemedia.v3.a.d.c.f2741b
        L7:
            java.io.Writer r2 = r7.f2742c
            java.lang.String r3 = "\""
            r2.write(r3)
            int r4 = r8.length()
            r3 = r1
        L13:
            if (r3 >= r4) goto L46
            char r2 = r8.charAt(r3)
            r5 = 128(0x80, float:1.8E-43)
            if (r2 >= r5) goto L28
            r2 = r0[r2]
            if (r2 != 0) goto L2e
        L21:
            int r2 = r3 + 1
            r3 = r2
            goto L13
        L25:
            java.lang.String[] r0 = com.google.ads.interactivemedia.v3.a.d.c.f2740a
            goto L7
        L28:
            r5 = 8232(0x2028, float:1.1535E-41)
            if (r2 != r5) goto L3f
            java.lang.String r2 = "\\u2028"
        L2e:
            if (r1 >= r3) goto L37
            java.io.Writer r5 = r7.f2742c
            int r6 = r3 - r1
            r5.write(r8, r1, r6)
        L37:
            java.io.Writer r1 = r7.f2742c
            r1.write(r2)
            int r1 = r3 + 1
            goto L21
        L3f:
            r5 = 8233(0x2029, float:1.1537E-41)
            if (r2 != r5) goto L21
            java.lang.String r2 = "\\u2029"
            goto L2e
        L46:
            if (r1 >= r4) goto L4f
            java.io.Writer r0 = r7.f2742c
            int r2 = r4 - r1
            r0.write(r8, r1, r2)
        L4f:
            java.io.Writer r0 = r7.f2742c
            java.lang.String r1 = "\""
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.interactivemedia.v3.a.d.c.d(java.lang.String):void");
    }

    private void k() throws IOException {
        if (this.f != null) {
            this.f2742c.write("\n");
            int i = this.e;
            for (int i2 = 1; i2 < i; i2++) {
                this.f2742c.write(this.f);
            }
        }
    }

    private void l() throws IOException {
        int iA = a();
        if (iA == 5) {
            this.f2742c.write(44);
        } else if (iA != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        k();
        b(4);
    }

    private void e(boolean z) throws IOException {
        switch (a()) {
            case 1:
                b(2);
                k();
                return;
            case 2:
                this.f2742c.append(',');
                k();
                return;
            case 3:
            case 5:
            default:
                throw new IllegalStateException("Nesting problem.");
            case 4:
                this.f2742c.append((CharSequence) this.g);
                b(5);
                return;
            case 6:
                break;
            case 7:
                if (!this.h) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                break;
        }
        if (!this.h && !z) {
            throw new IllegalStateException("JSON must start with an array or an object.");
        }
        b(7);
    }
}
