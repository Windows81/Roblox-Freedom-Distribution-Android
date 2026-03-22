package com.google.ads.interactivemedia.v3.a.b;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class g<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean f;
    private static final Comparator<Comparable> g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Comparator<? super K> f2699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    d<K, V> f2700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2702d;
    final d<K, V> e;
    private a h;
    private b i;

    static {
        f = !g.class.desiredAssertionStatus();
        g = new Comparator<Comparable>() { // from class: com.google.ads.interactivemedia.v3.a.b.g.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Comparable comparable, Comparable comparable2) {
                return comparable.compareTo(comparable2);
            }
        };
    }

    public g() {
        this(g);
    }

    public g(Comparator<? super K> comparator) {
        this.f2701c = 0;
        this.f2702d = 0;
        this.e = new d<>();
        this.f2699a = comparator == null ? g : comparator;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f2701c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        d<K, V> dVarA = a(obj);
        if (dVarA != null) {
            return dVarA.g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return a(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        d<K, V> dVarA = a((Object) k, true);
        V v2 = dVarA.g;
        dVarA.g = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f2700b = null;
        this.f2701c = 0;
        this.f2702d++;
        d<K, V> dVar = this.e;
        dVar.e = dVar;
        dVar.f2713d = dVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        d<K, V> dVarB = b(obj);
        if (dVarB != null) {
            return dVarB.g;
        }
        return null;
    }

    d<K, V> a(K k, boolean z) {
        d<K, V> dVar;
        int i;
        d<K, V> dVar2;
        int iCompare;
        Comparator<? super K> comparator = this.f2699a;
        d<K, V> dVar3 = this.f2700b;
        if (dVar3 == null) {
            dVar = dVar3;
            i = 0;
        } else {
            Comparable comparable = comparator == g ? (Comparable) k : null;
            while (true) {
                if (comparable != null) {
                    iCompare = comparable.compareTo(dVar3.f);
                } else {
                    iCompare = comparator.compare(k, dVar3.f);
                }
                if (iCompare == 0) {
                    return dVar3;
                }
                d<K, V> dVar4 = iCompare < 0 ? dVar3.f2711b : dVar3.f2712c;
                if (dVar4 == null) {
                    int i2 = iCompare;
                    dVar = dVar3;
                    i = i2;
                    break;
                }
                dVar3 = dVar4;
            }
        }
        if (!z) {
            return null;
        }
        d<K, V> dVar5 = this.e;
        if (dVar == null) {
            if (comparator == g && !(k instanceof Comparable)) {
                throw new ClassCastException(String.valueOf(k.getClass().getName()).concat(" is not Comparable"));
            }
            dVar2 = new d<>(dVar, k, dVar5, dVar5.e);
            this.f2700b = dVar2;
        } else {
            dVar2 = new d<>(dVar, k, dVar5, dVar5.e);
            if (i < 0) {
                dVar.f2711b = dVar2;
            } else {
                dVar.f2712c = dVar2;
            }
            b(dVar, true);
        }
        this.f2701c++;
        this.f2702d++;
        return dVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    d<K, V> a(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return a(obj, false);
        } catch (ClassCastException e) {
            return null;
        }
    }

    d<K, V> a(Map.Entry<?, ?> entry) {
        d<K, V> dVarA = a(entry.getKey());
        if (dVarA != null && a(dVarA.g, entry.getValue())) {
            return dVarA;
        }
        return null;
    }

    private boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    void a(d<K, V> dVar, boolean z) {
        int i;
        int i2 = 0;
        if (z) {
            dVar.e.f2713d = dVar.f2713d;
            dVar.f2713d.e = dVar.e;
        }
        d<K, V> dVar2 = dVar.f2711b;
        d<K, V> dVar3 = dVar.f2712c;
        d<K, V> dVar4 = dVar.f2710a;
        if (dVar2 != null && dVar3 != null) {
            d<K, V> dVarB = dVar2.h > dVar3.h ? dVar2.b() : dVar3.a();
            a((d) dVarB, false);
            d<K, V> dVar5 = dVar.f2711b;
            if (dVar5 != null) {
                i = dVar5.h;
                dVarB.f2711b = dVar5;
                dVar5.f2710a = dVarB;
                dVar.f2711b = null;
            } else {
                i = 0;
            }
            d<K, V> dVar6 = dVar.f2712c;
            if (dVar6 != null) {
                i2 = dVar6.h;
                dVarB.f2712c = dVar6;
                dVar6.f2710a = dVarB;
                dVar.f2712c = null;
            }
            dVarB.h = Math.max(i, i2) + 1;
            a((d) dVar, (d) dVarB);
            return;
        }
        if (dVar2 != null) {
            a((d) dVar, (d) dVar2);
            dVar.f2711b = null;
        } else if (dVar3 != null) {
            a((d) dVar, (d) dVar3);
            dVar.f2712c = null;
        } else {
            a((d) dVar, (d) null);
        }
        b(dVar4, false);
        this.f2701c--;
        this.f2702d++;
    }

    d<K, V> b(Object obj) {
        d<K, V> dVarA = a(obj);
        if (dVarA != null) {
            a((d) dVarA, true);
        }
        return dVarA;
    }

    private void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f2710a;
        dVar.f2710a = null;
        if (dVar2 != null) {
            dVar2.f2710a = dVar3;
        }
        if (dVar3 != null) {
            if (dVar3.f2711b == dVar) {
                dVar3.f2711b = dVar2;
                return;
            } else {
                if (!f && dVar3.f2712c != dVar) {
                    throw new AssertionError();
                }
                dVar3.f2712c = dVar2;
                return;
            }
        }
        this.f2700b = dVar2;
    }

    private void b(d<K, V> dVar, boolean z) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.f2711b;
            d<K, V> dVar3 = dVar.f2712c;
            int i = dVar2 != null ? dVar2.h : 0;
            int i2 = dVar3 != null ? dVar3.h : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                d<K, V> dVar4 = dVar3.f2711b;
                d<K, V> dVar5 = dVar3.f2712c;
                int i4 = (dVar4 != null ? dVar4.h : 0) - (dVar5 != null ? dVar5.h : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    a((d) dVar);
                } else {
                    if (!f && i4 != 1) {
                        throw new AssertionError();
                    }
                    b((d) dVar3);
                    a((d) dVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                d<K, V> dVar6 = dVar2.f2711b;
                d<K, V> dVar7 = dVar2.f2712c;
                int i5 = (dVar6 != null ? dVar6.h : 0) - (dVar7 != null ? dVar7.h : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    b((d) dVar);
                } else {
                    if (!f && i5 != -1) {
                        throw new AssertionError();
                    }
                    a((d) dVar2);
                    b((d) dVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                dVar.h = i + 1;
                if (z) {
                    return;
                }
            } else {
                if (!f && i3 != -1 && i3 != 1) {
                    throw new AssertionError();
                }
                dVar.h = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            dVar = dVar.f2710a;
        }
    }

    private void a(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f2711b;
        d<K, V> dVar3 = dVar.f2712c;
        d<K, V> dVar4 = dVar3.f2711b;
        d<K, V> dVar5 = dVar3.f2712c;
        dVar.f2712c = dVar4;
        if (dVar4 != null) {
            dVar4.f2710a = dVar;
        }
        a((d) dVar, (d) dVar3);
        dVar3.f2711b = dVar;
        dVar.f2710a = dVar3;
        dVar.h = Math.max(dVar2 != null ? dVar2.h : 0, dVar4 != null ? dVar4.h : 0) + 1;
        dVar3.h = Math.max(dVar.h, dVar5 != null ? dVar5.h : 0) + 1;
    }

    private void b(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f2711b;
        d<K, V> dVar3 = dVar.f2712c;
        d<K, V> dVar4 = dVar2.f2711b;
        d<K, V> dVar5 = dVar2.f2712c;
        dVar.f2711b = dVar5;
        if (dVar5 != null) {
            dVar5.f2710a = dVar;
        }
        a((d) dVar, (d) dVar2);
        dVar2.f2712c = dVar;
        dVar.f2710a = dVar2;
        dVar.h = Math.max(dVar3 != null ? dVar3.h : 0, dVar5 != null ? dVar5.h : 0) + 1;
        dVar2.h = Math.max(dVar.h, dVar4 != null ? dVar4.h : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        a aVar = this.h;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        this.h = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        b bVar = this.i;
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b();
        this.i = bVar2;
        return bVar2;
    }

    static final class d<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        d<K, V> f2710a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        d<K, V> f2711b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        d<K, V> f2712c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        d<K, V> f2713d;
        d<K, V> e;
        final K f;
        V g;
        int h;

        d() {
            this.f = null;
            this.e = this;
            this.f2713d = this;
        }

        d(d<K, V> dVar, K k, d<K, V> dVar2, d<K, V> dVar3) {
            this.f2710a = dVar;
            this.f = k;
            this.h = 1;
            this.f2713d = dVar2;
            this.e = dVar3;
            dVar3.f2713d = this;
            dVar2.e = this;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.g;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.g;
            this.g = v;
            return v2;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (this.f == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!this.f.equals(entry.getKey())) {
                return false;
            }
            if (this.g == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!this.g.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return (this.f == null ? 0 : this.f.hashCode()) ^ (this.g != null ? this.g.hashCode() : 0);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.f);
            String strValueOf2 = String.valueOf(this.g);
            return new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(strValueOf2).length()).append(strValueOf).append("=").append(strValueOf2).toString();
        }

        public d<K, V> a() {
            for (d<K, V> dVar = this.f2711b; dVar != null; dVar = dVar.f2711b) {
                this = dVar;
            }
            return this;
        }

        public d<K, V> b() {
            for (d<K, V> dVar = this.f2712c; dVar != null; dVar = dVar.f2712c) {
                this = dVar;
            }
            return this;
        }
    }

    private abstract class c<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        d<K, V> f2707b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        d<K, V> f2708c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2709d;

        private c() {
            this.f2707b = g.this.e.f2713d;
            this.f2708c = null;
            this.f2709d = g.this.f2702d;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f2707b != g.this.e;
        }

        final d<K, V> b() {
            d<K, V> dVar = this.f2707b;
            if (dVar == g.this.e) {
                throw new NoSuchElementException();
            }
            if (g.this.f2702d != this.f2709d) {
                throw new ConcurrentModificationException();
            }
            this.f2707b = dVar.f2713d;
            this.f2708c = dVar;
            return dVar;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.f2708c == null) {
                throw new IllegalStateException();
            }
            g.this.a((d) this.f2708c, true);
            this.f2708c = null;
            this.f2709d = g.this.f2702d;
        }
    }

    class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return g.this.f2701c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new c<Map.Entry<K, V>>() { // from class: com.google.ads.interactivemedia.v3.a.b.g.a.1
                {
                    g gVar = g.this;
                }

                @Override // java.util.Iterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<K, V> next() {
                    return b();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && g.this.a((Map.Entry<?, ?>) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            d<K, V> dVarA;
            if (!(obj instanceof Map.Entry) || (dVarA = g.this.a((Map.Entry<?, ?>) obj)) == null) {
                return false;
            }
            g.this.a((d) dVarA, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            g.this.clear();
        }
    }

    final class b extends AbstractSet<K> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return g.this.f2701c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new c<K>() { // from class: com.google.ads.interactivemedia.v3.a.b.g.b.1
                {
                    g gVar = g.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return b().f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return g.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return g.this.b(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            g.this.clear();
        }
    }
}
