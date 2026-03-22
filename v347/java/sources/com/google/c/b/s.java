package com.google.c.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class s {
    static int a(int i) {
        return 461845907 * Integer.rotateLeft((-862048943) * i, 15);
    }

    static int a(Object obj) {
        return a(obj == null ? 0 : obj.hashCode());
    }

    static int a(int i, double d2) {
        int iMax = Math.max(i, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax > ((int) (((double) iHighestOneBit) * d2))) {
            int i2 = iHighestOneBit << 1;
            if (i2 <= 0) {
                return 1073741824;
            }
            return i2;
        }
        return iHighestOneBit;
    }
}
