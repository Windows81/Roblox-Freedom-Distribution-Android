package com.google.c.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class u<K, V> extends y<K, V> implements n<K, V> {
    public abstract u<V, K> d();

    public static <K, V> u<K, V> f() {
        return b.f6104a;
    }

    public static <K, V> u<K, V> a(K k, V v) {
        return new g(k, v);
    }

    u() {
    }

    @Override // com.google.c.b.y, java.util.Map
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public ad<V> values() {
        return d().keySet();
    }
}
