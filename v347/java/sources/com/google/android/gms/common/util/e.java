package com.google.android.gms.common.util;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class e {
    private static <K, V> Map<K, V> a(int i, boolean z, K[] kArr, V[] vArr) {
        Map<K, V> mapB = b(i, z);
        a((Map) mapB, (Object[]) kArr, (Object[]) vArr);
        return mapB;
    }

    public static <K, V> Map<K, V> a(K k, V v, K k2, V v2, K k3, V v3) {
        Map mapB = b(3, false);
        mapB.put(k, v);
        mapB.put(k2, v2);
        mapB.put(k3, v3);
        return Collections.unmodifiableMap(mapB);
    }

    public static <K, V> Map<K, V> a(K[] kArr, V[] vArr) {
        b((Object[]) kArr, (Object[]) vArr);
        switch (kArr.length) {
            case 0:
                return b();
            case 1:
                return b(kArr[0], vArr[0]);
            default:
                return Collections.unmodifiableMap(a(kArr.length, false, (Object[]) kArr, (Object[]) vArr));
        }
    }

    @Deprecated
    public static <T> Set<T> a() {
        return Collections.emptySet();
    }

    private static <T> Set<T> a(int i, boolean z) {
        return i <= (z ? 128 : 256) ? new android.support.v4.g.b(i) : new HashSet(i, z ? 0.75f : 1.0f);
    }

    private static <T> Set<T> a(int i, boolean z, T[] tArr) {
        Set<T> setA = a(i, z);
        Collections.addAll(setA, tArr);
        return setA;
    }

    @Deprecated
    public static <T> Set<T> a(T t) {
        return Collections.singleton(t);
    }

    @Deprecated
    public static <T> Set<T> a(T t, T t2) {
        Set setA = a(2, false);
        setA.add(t);
        setA.add(t2);
        return Collections.unmodifiableSet(setA);
    }

    @Deprecated
    public static <T> Set<T> a(T t, T t2, T t3) {
        Set setA = a(3, false);
        setA.add(t);
        setA.add(t2);
        setA.add(t3);
        return Collections.unmodifiableSet(setA);
    }

    @Deprecated
    public static <T> Set<T> a(T t, T t2, T t3, T t4) {
        Set setA = a(4, false);
        setA.add(t);
        setA.add(t2);
        setA.add(t3);
        setA.add(t4);
        return Collections.unmodifiableSet(setA);
    }

    @Deprecated
    public static <T> Set<T> a(T... tArr) {
        switch (tArr.length) {
            case 0:
                return a();
            case 1:
                return a(tArr[0]);
            case 2:
                return a(tArr[0], tArr[1]);
            case 3:
                return a(tArr[0], tArr[1], tArr[2]);
            case 4:
                return a(tArr[0], tArr[1], tArr[2], tArr[3]);
            default:
                return Collections.unmodifiableSet(a(tArr.length, false, (Object[]) tArr));
        }
    }

    private static <K, V> void a(Map<K, V> map, K[] kArr, V[] vArr) {
        for (int i = 0; i < kArr.length; i++) {
            map.put(kArr[i], vArr[i]);
        }
    }

    public static <K, V> Map<K, V> b() {
        return Collections.emptyMap();
    }

    private static <K, V> Map<K, V> b(int i, boolean z) {
        return i <= (z ? 128 : 256) ? new android.support.v4.g.a(i) : new HashMap(i, z ? 0.75f : 1.0f);
    }

    public static <K, V> Map<K, V> b(K k, V v) {
        return Collections.singletonMap(k, v);
    }

    private static <K, V> void b(K[] kArr, V[] vArr) {
        if (kArr.length != vArr.length) {
            int length = kArr.length;
            throw new IllegalArgumentException(new StringBuilder(66).append("Key and values array lengths not equal: ").append(length).append(" != ").append(vArr.length).toString());
        }
    }
}
