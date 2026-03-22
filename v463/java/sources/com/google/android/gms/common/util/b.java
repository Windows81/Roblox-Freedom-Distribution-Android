package com.google.android.gms.common.util;

import com.google.android.gms.common.internal.y;
import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class b {
    public static <T> int a(T[] tArr, T t) {
        int length = tArr != null ? tArr.length : 0;
        for (int i = 0; i < length; i++) {
            if (y.a(tArr[i], t)) {
                return i;
            }
        }
        return -1;
    }

    public static <T> T[] a(T[] tArr, int i) {
        if (tArr == null) {
            return null;
        }
        return i != tArr.length ? (T[]) Arrays.copyOf(tArr, i) : tArr;
    }

    public static <T> T[] a(T[] tArr, T... tArr2) {
        int i;
        if (tArr == null) {
            return null;
        }
        if (tArr2 == null || tArr2.length == 0) {
            return (T[]) Arrays.copyOf(tArr, tArr.length);
        }
        Object[] objArr = (Object[]) Array.newInstance(tArr2.getClass().getComponentType(), tArr.length);
        if (tArr2.length == 1) {
            i = 0;
            for (T t : tArr) {
                if (!y.a(tArr2[0], t)) {
                    objArr[i] = t;
                    i++;
                }
            }
        } else {
            int i2 = 0;
            for (T t2 : tArr) {
                if (!b(tArr2, t2)) {
                    objArr[i2] = t2;
                    i2++;
                }
            }
            i = i2;
        }
        return (T[]) a(objArr, i);
    }

    public static <T> boolean b(T[] tArr, T t) {
        return a(tArr, t) >= 0;
    }
}
