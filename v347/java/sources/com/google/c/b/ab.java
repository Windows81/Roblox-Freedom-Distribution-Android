package com.google.c.b;

import com.google.c.b.ad;

/* JADX INFO: loaded from: classes.dex */
final class ab<K, V> extends ad.a<K> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y<K, V> f6082a;

    ab(y<K, V> yVar) {
        this.f6082a = yVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f6082a.size();
    }

    @Override // com.google.c.b.ad.a, com.google.c.b.ad, com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: c */
    public k<K> iterator() {
        return this.f6082a.l();
    }

    @Override // com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f6082a.containsKey(obj);
    }

    @Override // com.google.c.b.ad.a
    K a(int i) {
        return this.f6082a.entrySet().e().get(i).getKey();
    }

    @Override // com.google.c.b.v
    boolean t_() {
        return true;
    }
}
