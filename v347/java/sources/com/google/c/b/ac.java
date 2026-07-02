package com.google.c.b;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class ac<K, V> extends v<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y<K, V> f6083a;

    ac(y<K, V> yVar) {
        this.f6083a = yVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f6083a.size();
    }

    @Override // com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: c */
    public k<V> iterator() {
        return new k<V>() { // from class: com.google.c.b.ac.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final k<Map.Entry<K, V>> f6084a;

            {
                this.f6084a = ac.this.f6083a.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f6084a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                return this.f6084a.next().getValue();
            }
        };
    }

    @Override // com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return obj != null && ae.a(iterator(), obj);
    }

    @Override // com.google.c.b.v
    boolean t_() {
        return true;
    }

    @Override // com.google.c.b.v
    public x<V> e() {
        final x<Map.Entry<K, V>> xVarE = this.f6083a.entrySet().e();
        return new t<V>() { // from class: com.google.c.b.ac.2
            @Override // java.util.List
            public V get(int i) {
                return (V) ((Map.Entry) xVarE.get(i)).getValue();
            }

            @Override // com.google.c.b.t
            v<V> a() {
                return ac.this;
            }
        };
    }
}
