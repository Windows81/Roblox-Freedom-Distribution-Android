package b.a.c;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1895c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f1896d = new int[10];

    void a() {
        this.f1895c = 0;
        this.f1894b = 0;
        this.f1893a = 0;
        Arrays.fill(this.f1896d, 0);
    }

    n a(int i, int i2, int i3) {
        if (i < this.f1896d.length) {
            int i4 = 1 << i;
            this.f1893a |= i4;
            if ((i2 & 1) != 0) {
                this.f1894b |= i4;
            } else {
                this.f1894b &= i4 ^ (-1);
            }
            if ((i2 & 2) != 0) {
                this.f1895c = i4 | this.f1895c;
            } else {
                this.f1895c = (i4 ^ (-1)) & this.f1895c;
            }
            this.f1896d[i] = i3;
        }
        return this;
    }

    boolean a(int i) {
        return ((1 << i) & this.f1893a) != 0;
    }

    int b(int i) {
        return this.f1896d[i];
    }

    int c(int i) {
        int i2 = h(i) ? 2 : 0;
        return g(i) ? i2 | 1 : i2;
    }

    int b() {
        return Integer.bitCount(this.f1893a);
    }

    int c() {
        if ((2 & this.f1893a) != 0) {
            return this.f1896d[1];
        }
        return -1;
    }

    int d(int i) {
        return (16 & this.f1893a) != 0 ? this.f1896d[4] : i;
    }

    int e(int i) {
        return (32 & this.f1893a) != 0 ? this.f1896d[5] : i;
    }

    int f(int i) {
        return (128 & this.f1893a) != 0 ? this.f1896d[7] : i;
    }

    boolean g(int i) {
        return ((1 << i) & this.f1894b) != 0;
    }

    boolean h(int i) {
        return ((1 << i) & this.f1895c) != 0;
    }

    void a(n nVar) {
        for (int i = 0; i < 10; i++) {
            if (nVar.a(i)) {
                a(i, nVar.c(i), nVar.b(i));
            }
        }
    }
}
