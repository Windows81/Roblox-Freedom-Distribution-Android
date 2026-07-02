package com.google.c.b;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class g<K, V> extends u<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final transient K f6121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final transient V f6122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    transient u<V, K> f6123c;

    g(K k, V v) {
        p.a(k, v);
        this.f6121a = k;
        this.f6122b = v;
    }

    private g(K k, V v, u<V, K> uVar) {
        this.f6121a = k;
        this.f6122b = v;
        this.f6123c = uVar;
    }

    @Override // com.google.c.b.y, java.util.Map
    public V get(Object obj) {
        if (this.f6121a.equals(obj)) {
            return this.f6122b;
        }
        return null;
    }

    @Override // java.util.Map
    public int size() {
        return 1;
    }

    @Override // com.google.c.b.y, java.util.Map
    public boolean containsKey(Object obj) {
        return this.f6121a.equals(obj);
    }

    @Override // com.google.c.b.y, java.util.Map
    public boolean containsValue(Object obj) {
        return this.f6122b.equals(obj);
    }

    @Override // com.google.c.b.y
    boolean c() {
        return false;
    }

    @Override // com.google.c.b.y
    ad<Map.Entry<K, V>> a() {
        return ad.a(ag.a(this.f6121a, this.f6122b));
    }

    @Override // com.google.c.b.y
    ad<K> e() {
        return ad.a(this.f6121a);
    }

    @Override // com.google.c.b.u
    public u<V, K> d() {
        u<V, K> uVar = this.f6123c;
        if (uVar == null) {
            g gVar = new g(this.f6122b, this.f6121a, this);
            this.f6123c = gVar;
            return gVar;
        }
        return uVar;
    }
}
