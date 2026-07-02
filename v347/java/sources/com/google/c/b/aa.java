package com.google.c.b;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class aa<K, V> extends ad<Map.Entry<K, V>> {
    abstract y<K, V> a();

    static final class a<K, V> extends aa<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final transient y<K, V> f6080a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final transient Map.Entry<K, V>[] f6081b;

        a(y<K, V> yVar, Map.Entry<K, V>[] entryArr) {
            this.f6080a = yVar;
            this.f6081b = entryArr;
        }

        @Override // com.google.c.b.aa
        y<K, V> a() {
            return this.f6080a;
        }

        @Override // com.google.c.b.ad, com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: c */
        public k<Map.Entry<K, V>> iterator() {
            return e().iterator();
        }

        @Override // com.google.c.b.ad
        x<Map.Entry<K, V>> d() {
            return new ak(this, this.f6081b);
        }
    }

    aa() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return a().size();
    }

    @Override // com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        V v = a().get(entry.getKey());
        return v != null && v.equals(entry.getValue());
    }

    @Override // com.google.c.b.v
    boolean t_() {
        return a().c();
    }

    @Override // com.google.c.b.ad
    boolean b() {
        return a().b();
    }

    @Override // com.google.c.b.ad, java.util.Collection, java.util.Set
    public int hashCode() {
        return a().hashCode();
    }
}
