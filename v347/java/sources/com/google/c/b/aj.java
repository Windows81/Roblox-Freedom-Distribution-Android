package com.google.c.b;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
final class aj {
    static <T> T[] a(T[] tArr, int i) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
    }
}
