package com.google.android.gms.common.util;

import com.google.android.gms.common.internal.v;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class a {
    public static <T> int a(T[] tArr, T t) {
        int length = tArr != null ? tArr.length : 0;
        for (int i = 0; i < length; i++) {
            if (v.a(tArr[i], t)) {
                return i;
            }
        }
        return -1;
    }

    public static <T> boolean b(T[] tArr, T t) {
        return a(tArr, t) >= 0;
    }
}
