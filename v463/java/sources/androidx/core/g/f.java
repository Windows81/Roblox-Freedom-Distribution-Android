package androidx.core.g;

import java.io.PrintWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f1427a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static char[] f1428b = new char[24];

    private static int a(int i, int i2, boolean z, int i3) {
        if (i > 99 || (z && i3 >= 3)) {
            return i2 + 3;
        }
        if (i > 9 || (z && i3 >= 2)) {
            return i2 + 2;
        }
        if (z || i > 0) {
            return i2 + 1;
        }
        return 0;
    }

    private static int a(char[] cArr, int i, char c2, int i2, boolean z, int i3) {
        int i4;
        if (!z && i <= 0) {
            return i2;
        }
        if ((!z || i3 < 3) && i <= 99) {
            i4 = i2;
        } else {
            int i5 = i / 100;
            cArr[i2] = (char) (i5 + 48);
            i4 = i2 + 1;
            i -= i5 * 100;
        }
        if ((z && i3 >= 2) || i > 9 || i2 != i4) {
            int i6 = i / 10;
            cArr[i4] = (char) (i6 + 48);
            i4++;
            i -= i6 * 10;
        }
        cArr[i4] = (char) (i + 48);
        int i7 = i4 + 1;
        cArr[i7] = c2;
        return i7 + 1;
    }

    private static int a(long j, int i) {
        char c2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        long j2 = j;
        if (f1428b.length < i) {
            f1428b = new char[i];
        }
        char[] cArr = f1428b;
        if (j2 == 0) {
            int i7 = i - 1;
            while (i7 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j2 > 0) {
            c2 = '+';
        } else {
            c2 = '-';
            j2 = -j2;
        }
        int i8 = (int) (j2 % 1000);
        int iFloor = (int) Math.floor(j2 / 1000);
        if (iFloor > 86400) {
            i2 = iFloor / 86400;
            iFloor -= 86400 * i2;
        } else {
            i2 = 0;
        }
        if (iFloor > 3600) {
            i3 = iFloor / 3600;
            iFloor -= i3 * 3600;
        } else {
            i3 = 0;
        }
        if (iFloor > 60) {
            int i9 = iFloor / 60;
            i4 = iFloor - (i9 * 60);
            i5 = i9;
        } else {
            i4 = iFloor;
            i5 = 0;
        }
        if (i != 0) {
            int iA = a(i2, 1, false, 0);
            int iA2 = iA + a(i3, 1, iA > 0, 2);
            int iA3 = iA2 + a(i5, 1, iA2 > 0, 2);
            int iA4 = iA3 + a(i4, 1, iA3 > 0, 2);
            i6 = 0;
            for (int iA5 = iA4 + a(i8, 2, true, iA4 > 0 ? 3 : 0) + 1; iA5 < i; iA5++) {
                cArr[i6] = ' ';
                i6++;
            }
        } else {
            i6 = 0;
        }
        cArr[i6] = c2;
        int i10 = i6 + 1;
        boolean z = i != 0;
        int iA6 = a(cArr, i2, 'd', i10, false, 0);
        int iA7 = a(cArr, i3, 'h', iA6, iA6 != i10, z ? 2 : 0);
        int iA8 = a(cArr, i5, 'm', iA7, iA7 != i10, z ? 2 : 0);
        int iA9 = a(cArr, i4, 's', iA8, iA8 != i10, z ? 2 : 0);
        int iA10 = a(cArr, i8, 'm', iA9, true, (!z || iA9 == i10) ? 0 : 3);
        cArr[iA10] = 's';
        return iA10 + 1;
    }

    public static void a(long j, PrintWriter printWriter, int i) {
        synchronized (f1427a) {
            printWriter.print(new String(f1428b, 0, a(j, i)));
        }
    }

    public static void a(long j, PrintWriter printWriter) {
        a(j, printWriter, 0);
    }

    public static void a(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print("--");
        } else {
            a(j - j2, printWriter, 0);
        }
    }
}
