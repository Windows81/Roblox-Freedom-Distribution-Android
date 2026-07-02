package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class adx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final adx f3850a = new adx(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3851b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f3852c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f3853d;
    private int e;
    private boolean f;

    private adx() {
        this(0, new int[8], new Object[8], true);
    }

    private adx(int i, int[] iArr, Object[] objArr, boolean z) {
        this.e = -1;
        this.f3851b = i;
        this.f3852c = iArr;
        this.f3853d = objArr;
        this.f = z;
    }

    public static adx a() {
        return f3850a;
    }

    static adx a(adx adxVar, adx adxVar2) {
        int i = adxVar.f3851b + adxVar2.f3851b;
        int[] iArrCopyOf = Arrays.copyOf(adxVar.f3852c, i);
        System.arraycopy(adxVar2.f3852c, 0, iArrCopyOf, adxVar.f3851b, adxVar2.f3851b);
        Object[] objArrCopyOf = Arrays.copyOf(adxVar.f3853d, i);
        System.arraycopy(adxVar2.f3853d, 0, objArrCopyOf, adxVar.f3851b, adxVar2.f3851b);
        return new adx(i, iArrCopyOf, objArrCopyOf, true);
    }

    private static void a(int i, Object obj, aeq aeqVar) throws IOException {
        int i2 = i >>> 3;
        switch (i & 7) {
            case 0:
                aeqVar.a(i2, ((Long) obj).longValue());
                return;
            case 1:
                aeqVar.d(i2, ((Long) obj).longValue());
                return;
            case 2:
                aeqVar.a(i2, (zv) obj);
                return;
            case 3:
                if (aeqVar.a() == abd.e.j) {
                    aeqVar.a(i2);
                    ((adx) obj).b(aeqVar);
                    aeqVar.b(i2);
                    return;
                } else {
                    aeqVar.b(i2);
                    ((adx) obj).b(aeqVar);
                    aeqVar.a(i2);
                    return;
                }
            case 4:
            default:
                throw new RuntimeException(abj.f());
            case 5:
                aeqVar.d(i2, ((Integer) obj).intValue());
                return;
        }
    }

    static adx b() {
        return new adx();
    }

    final void a(int i, Object obj) {
        if (!this.f) {
            throw new UnsupportedOperationException();
        }
        if (this.f3851b == this.f3852c.length) {
            int i2 = (this.f3851b < 4 ? 8 : this.f3851b >> 1) + this.f3851b;
            this.f3852c = Arrays.copyOf(this.f3852c, i2);
            this.f3853d = Arrays.copyOf(this.f3853d, i2);
        }
        this.f3852c[this.f3851b] = i;
        this.f3853d[this.f3851b] = obj;
        this.f3851b++;
    }

    final void a(aeq aeqVar) throws IOException {
        if (aeqVar.a() == abd.e.k) {
            for (int i = this.f3851b - 1; i >= 0; i--) {
                aeqVar.a(this.f3852c[i] >>> 3, this.f3853d[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f3851b; i2++) {
            aeqVar.a(this.f3852c[i2] >>> 3, this.f3853d[i2]);
        }
    }

    final void a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f3851b; i2++) {
            acn.a(sb, i, String.valueOf(this.f3852c[i2] >>> 3), this.f3853d[i2]);
        }
    }

    public final void b(aeq aeqVar) throws IOException {
        if (this.f3851b == 0) {
            return;
        }
        if (aeqVar.a() == abd.e.j) {
            for (int i = 0; i < this.f3851b; i++) {
                a(this.f3852c[i], this.f3853d[i], aeqVar);
            }
            return;
        }
        for (int i2 = this.f3851b - 1; i2 >= 0; i2--) {
            a(this.f3852c[i2], this.f3853d[i2], aeqVar);
        }
    }

    public final void c() {
        this.f = false;
    }

    public final int d() {
        int iD = this.e;
        if (iD == -1) {
            iD = 0;
            for (int i = 0; i < this.f3851b; i++) {
                iD += aaj.d(this.f3852c[i] >>> 3, (zv) this.f3853d[i]);
            }
            this.e = iD;
        }
        return iD;
    }

    public final int e() {
        int iE;
        int i = this.e;
        if (i == -1) {
            i = 0;
            for (int i2 = 0; i2 < this.f3851b; i2++) {
                int i3 = this.f3852c[i2];
                int i4 = i3 >>> 3;
                switch (i3 & 7) {
                    case 0:
                        iE = aaj.e(i4, ((Long) this.f3853d[i2]).longValue());
                        break;
                    case 1:
                        iE = aaj.g(i4, ((Long) this.f3853d[i2]).longValue());
                        break;
                    case 2:
                        iE = aaj.c(i4, (zv) this.f3853d[i2]);
                        break;
                    case 3:
                        iE = ((adx) this.f3853d[i2]).e() + (aaj.e(i4) << 1);
                        break;
                    case 4:
                    default:
                        throw new IllegalStateException(abj.f());
                    case 5:
                        iE = aaj.i(i4, ((Integer) this.f3853d[i2]).intValue());
                        break;
                }
                i += iE;
            }
            this.e = i;
        }
        return i;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof adx)) {
            adx adxVar = (adx) obj;
            if (this.f3851b == adxVar.f3851b) {
                int[] iArr = this.f3852c;
                int[] iArr2 = adxVar.f3852c;
                int i = this.f3851b;
                int i2 = 0;
                while (true) {
                    if (i2 >= i) {
                        z = true;
                        break;
                    }
                    if (iArr[i2] != iArr2[i2]) {
                        z = false;
                        break;
                    }
                    i2++;
                }
                if (z) {
                    Object[] objArr = this.f3853d;
                    Object[] objArr2 = adxVar.f3853d;
                    int i3 = this.f3851b;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= i3) {
                            z2 = true;
                            break;
                        }
                        if (!objArr[i4].equals(objArr2[i4])) {
                            z2 = false;
                            break;
                        }
                        i4++;
                    }
                    if (z2) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 17;
        int i = (this.f3851b + 527) * 31;
        int[] iArr = this.f3852c;
        int i2 = this.f3851b;
        int i3 = 17;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = (i + i3) * 31;
        Object[] objArr = this.f3853d;
        int i6 = this.f3851b;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }
}
