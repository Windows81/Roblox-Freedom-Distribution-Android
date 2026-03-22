package com.google.gson.c;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c implements Closeable, Flushable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f5322a = new String[128];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f5323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Writer f5324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f5325d = new int[32];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5326e = 0;
    private String f;
    private String g;
    private boolean h;
    private boolean i;
    private String j;
    private boolean k;

    static {
        for (int i = 0; i <= 31; i++) {
            f5322a[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f5322a;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f5323b = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        a(6);
        this.g = ":";
        this.k = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.f5324c = writer;
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
        m();
        a(i);
        this.f5324c.write(str);
        return this;
    }

    private c a(int i, int i2, String str) throws IOException {
        int iA = a();
        if (iA != i2 && iA != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.j != null) {
            throw new IllegalStateException("Dangling name: " + this.j);
        }
        this.f5326e--;
        if (iA == i2) {
            k();
        }
        this.f5324c.write(str);
        return this;
    }

    private void a(int i) {
        int i2 = this.f5326e;
        int[] iArr = this.f5325d;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f5325d = iArr2;
        }
        int[] iArr3 = this.f5325d;
        int i3 = this.f5326e;
        this.f5326e = i3 + 1;
        iArr3[i3] = i;
    }

    private int a() {
        int i = this.f5326e;
        if (i == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        return this.f5325d[i - 1];
    }

    private void b(int i) {
        this.f5325d[this.f5326e - 1] = i;
    }

    public c a(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.j != null) {
            throw new IllegalStateException();
        }
        if (this.f5326e == 0) {
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
        m();
        d(str);
        return this;
    }

    public c f() throws IOException {
        if (this.j != null) {
            if (this.k) {
                j();
            } else {
                this.j = null;
                return this;
            }
        }
        m();
        this.f5324c.write("null");
        return this;
    }

    public c a(boolean z) throws IOException {
        j();
        m();
        this.f5324c.write(z ? "true" : "false");
        return this;
    }

    public c a(Boolean bool) throws IOException {
        if (bool == null) {
            return f();
        }
        j();
        m();
        this.f5324c.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public c a(long j) throws IOException {
        j();
        m();
        this.f5324c.write(Long.toString(j));
        return this;
    }

    public c a(Number number) throws IOException {
        if (number == null) {
            return f();
        }
        j();
        String string = number.toString();
        if (!this.h && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
        m();
        this.f5324c.append((CharSequence) string);
        return this;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f5326e == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f5324c.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5324c.close();
        int i = this.f5326e;
        if (i > 1 || (i == 1 && this.f5325d[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f5326e = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void d(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.i
            if (r0 == 0) goto L7
            java.lang.String[] r0 = com.google.gson.c.c.f5323b
            goto L9
        L7:
            java.lang.String[] r0 = com.google.gson.c.c.f5322a
        L9:
            java.io.Writer r1 = r8.f5324c
            java.lang.String r2 = "\""
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = 0
        L16:
            if (r3 >= r1) goto L45
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.8E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L42
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L42
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L3b
            java.io.Writer r6 = r8.f5324c
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L3b:
            java.io.Writer r4 = r8.f5324c
            r4.write(r5)
            int r4 = r3 + 1
        L42:
            int r3 = r3 + 1
            goto L16
        L45:
            if (r4 >= r1) goto L4d
            java.io.Writer r0 = r8.f5324c
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L4d:
            java.io.Writer r9 = r8.f5324c
            r9.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.c.c.d(java.lang.String):void");
    }

    private void k() throws IOException {
        if (this.f == null) {
            return;
        }
        this.f5324c.write("\n");
        int i = this.f5326e;
        for (int i2 = 1; i2 < i; i2++) {
            this.f5324c.write(this.f);
        }
    }

    private void l() throws IOException {
        int iA = a();
        if (iA == 5) {
            this.f5324c.write(44);
        } else if (iA != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        k();
        b(4);
    }

    private void m() throws IOException {
        int iA = a();
        if (iA == 1) {
            b(2);
            k();
            return;
        }
        if (iA == 2) {
            this.f5324c.append(',');
            k();
        } else {
            if (iA != 4) {
                if (iA != 6) {
                    if (iA == 7) {
                        if (!this.h) {
                            throw new IllegalStateException("JSON must have only one top-level value.");
                        }
                    } else {
                        throw new IllegalStateException("Nesting problem.");
                    }
                }
                b(7);
                return;
            }
            this.f5324c.append((CharSequence) this.g);
            b(5);
        }
    }
}
