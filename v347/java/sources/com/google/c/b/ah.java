package com.google.c.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Object[] f6101a = new Object[0];

    public static <T> T[] a(T[] tArr, int i) {
        return (T[]) aj.a(tArr, i);
    }

    static <T> T[] b(T[] tArr, int i) {
        T[] tArr2 = (T[]) a((Object[]) tArr, i);
        System.arraycopy(tArr, 0, tArr2, 0, Math.min(tArr.length, i));
        return tArr2;
    }

    static Object[] a(Object... objArr) {
        return c(objArr, objArr.length);
    }

    static Object[] c(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            a(objArr[i2], i2);
        }
        return objArr;
    }

    static Object a(Object obj, int i) {
        if (obj == null) {
            throw new NullPointerException(new StringBuilder(20).append("at index ").append(i).toString());
        }
        return obj;
    }
}
