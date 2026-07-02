package com.google.c.b;

import com.google.c.b.aa;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class b<K, V> extends u<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final b<Object, Object> f6104a = new b<>(null, null, y.f6138d, 0, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final transient z<K, V>[] f6105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final transient z<K, V>[] f6106c;
    private final transient Map.Entry<K, V>[] e;
    private final transient int f;
    private final transient int g;
    private transient u<V, K> h;

    private b(z<K, V>[] zVarArr, z<K, V>[] zVarArr2, Map.Entry<K, V>[] entryArr, int i, int i2) {
        this.f6105b = zVarArr;
        this.f6106c = zVarArr2;
        this.e = entryArr;
        this.f = i;
        this.g = i2;
    }

    @Override // com.google.c.b.y, java.util.Map
    public V get(Object obj) {
        if (this.f6105b == null) {
            return null;
        }
        return (V) d.a(obj, this.f6105b, this.f);
    }

    @Override // com.google.c.b.y
    ad<Map.Entry<K, V>> a() {
        if (isEmpty()) {
            return ad.f();
        }
        return new aa.a(this, this.e);
    }

    @Override // com.google.c.b.y
    boolean b() {
        return true;
    }

    @Override // com.google.c.b.y, java.util.Map
    public int hashCode() {
        return this.g;
    }

    @Override // com.google.c.b.y
    boolean c() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.e.length;
    }

    @Override // com.google.c.b.u
    public u<V, K> d() {
        if (isEmpty()) {
            return u.f();
        }
        u<V, K> uVar = this.h;
        if (uVar == null) {
            a aVar = new a();
            this.h = aVar;
            return aVar;
        }
        return uVar;
    }

    private final class a extends u<V, K> {
        private a() {
        }

        @Override // java.util.Map
        public int size() {
            return d().size();
        }

        @Override // com.google.c.b.u
        public u<K, V> d() {
            return b.this;
        }

        @Override // com.google.c.b.y, java.util.Map
        public K get(Object obj) {
            if (obj == null || b.this.f6106c == null) {
                return null;
            }
            for (z zVarB = b.this.f6106c[s.a(obj.hashCode()) & b.this.f]; zVarB != null; zVarB = zVarB.b()) {
                if (obj.equals(zVarB.getValue())) {
                    return zVarB.getKey();
                }
            }
            return null;
        }

        @Override // com.google.c.b.y
        ad<Map.Entry<V, K>> a() {
            return new C0089a();
        }

        /* JADX INFO: renamed from: com.google.c.b.b$a$a, reason: collision with other inner class name */
        final class C0089a extends aa<V, K> {
            C0089a() {
            }

            @Override // com.google.c.b.aa
            y<V, K> a() {
                return a.this;
            }

            @Override // com.google.c.b.aa, com.google.c.b.ad
            boolean b() {
                return true;
            }

            @Override // com.google.c.b.aa, com.google.c.b.ad, java.util.Collection, java.util.Set
            public int hashCode() {
                return b.this.g;
            }

            @Override // com.google.c.b.ad, com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            /* JADX INFO: renamed from: c */
            public k<Map.Entry<V, K>> iterator() {
                return e().iterator();
            }

            @Override // com.google.c.b.ad
            x<Map.Entry<V, K>> d() {
                return new t<Map.Entry<V, K>>() { // from class: com.google.c.b.b.a.a.1
                    @Override // java.util.List
                    /* JADX INFO: renamed from: a_, reason: merged with bridge method [inline-methods] */
                    public Map.Entry<V, K> get(int i) {
                        Map.Entry entry = b.this.e[i];
                        return ag.a(entry.getValue(), entry.getKey());
                    }

                    @Override // com.google.c.b.t
                    v<Map.Entry<V, K>> a() {
                        return C0089a.this;
                    }
                };
            }
        }

        @Override // com.google.c.b.y
        boolean c() {
            return false;
        }
    }
}
