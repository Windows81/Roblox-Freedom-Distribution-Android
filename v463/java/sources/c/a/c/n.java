package c.a.c;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2619c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f2620d = new int[10];

    void a() {
        this.f2619c = 0;
        this.f2618b = 0;
        this.f2617a = 0;
        Arrays.fill(this.f2620d, 0);
    }

    n a(int i, int i2, int i3) {
        if (i >= this.f2620d.length) {
            return this;
        }
        int i4 = 1 << i;
        this.f2617a |= i4;
        if ((i2 & 1) != 0) {
            this.f2618b |= i4;
        } else {
            this.f2618b &= i4 ^ (-1);
        }
        if ((i2 & 2) != 0) {
            this.f2619c |= i4;
        } else {
            this.f2619c &= i4 ^ (-1);
        }
        this.f2620d[i] = i3;
        return this;
    }

    boolean a(int i) {
        return ((1 << i) & this.f2617a) != 0;
    }

    int b(int i) {
        return this.f2620d[i];
    }

    int c(int i) {
        int i2 = h(i) ? 2 : 0;
        return g(i) ? i2 | 1 : i2;
    }

    int b() {
        return Integer.bitCount(this.f2617a);
    }

    int c() {
        if ((this.f2617a & 2) != 0) {
            return this.f2620d[1];
        }
        return -1;
    }

    int d(int i) {
        return (this.f2617a & 16) != 0 ? this.f2620d[4] : i;
    }

    int e(int i) {
        return (this.f2617a & 32) != 0 ? this.f2620d[5] : i;
    }

    int f(int i) {
        return (this.f2617a & 128) != 0 ? this.f2620d[7] : i;
    }

    boolean g(int i) {
        return ((1 << i) & this.f2618b) != 0;
    }

    boolean h(int i) {
        return ((1 << i) & this.f2619c) != 0;
    }

    void a(n nVar) {
        for (int i = 0; i < 10; i++) {
            if (nVar.a(i)) {
                a(i, nVar.c(i), nVar.b(i));
            }
        }
    }
}
