package com.google.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class g<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean f = !g.class.desiredAssertionStatus();
    private static final Comparator<Comparable> g = new Comparator<Comparable>() { // from class: com.google.gson.internal.g.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Comparator<? super K> f5479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    d<K, V> f5480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f5481c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f5482d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final d<K, V> f5483e;
    private g<K, V>.a h;
    private g<K, V>.b i;

    public g() {
        this(g);
    }

    public g(Comparator<? super K> comparator) {
        this.f5481c = 0;
        this.f5482d = 0;
        this.f5483e = new d<>();
        this.f5479a = comparator == null ? g : comparator;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f5481c;
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
        this.f5480b = null;
        this.f5481c = 0;
        this.f5482d++;
        d<K, V> dVar = this.f5483e;
        dVar.f5496e = dVar;
        dVar.f5495d = dVar;
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
        int iCompare;
        d<K, V> dVar;
        Comparator<? super K> comparator = this.f5479a;
        d<K, V> dVar2 = this.f5480b;
        if (dVar2 != null) {
            Comparable comparable = comparator == g ? (Comparable) k : null;
            while (true) {
                if (comparable != null) {
                    iCompare = comparable.compareTo(dVar2.f);
                } else {
                    iCompare = comparator.compare(k, dVar2.f);
                }
                if (iCompare == 0) {
                    return dVar2;
                }
                d<K, V> dVar3 = iCompare < 0 ? dVar2.f5493b : dVar2.f5494c;
                if (dVar3 == null) {
                    break;
                }
                dVar2 = dVar3;
            }
        } else {
            iCompare = 0;
        }
        if (!z) {
            return null;
        }
        d<K, V> dVar4 = this.f5483e;
        if (dVar2 == null) {
            if (comparator == g && !(k instanceof Comparable)) {
                throw new ClassCastException(k.getClass().getName() + " is not Comparable");
            }
            dVar = new d<>(dVar2, k, dVar4, dVar4.f5496e);
            this.f5480b = dVar;
        } else {
            dVar = new d<>(dVar2, k, dVar4, dVar4.f5496e);
            if (iCompare < 0) {
                dVar2.f5493b = dVar;
            } else {
                dVar2.f5494c = dVar;
            }
            b(dVar2, true);
        }
        this.f5481c++;
        this.f5482d++;
        return dVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    d<K, V> a(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return a(obj, false);
        } catch (ClassCastException unused) {
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
        if (z) {
            dVar.f5496e.f5495d = dVar.f5495d;
            dVar.f5495d.f5496e = dVar.f5496e;
        }
        d<K, V> dVar2 = dVar.f5493b;
        d<K, V> dVar3 = dVar.f5494c;
        d<K, V> dVar4 = dVar.f5492a;
        int i2 = 0;
        if (dVar2 != null && dVar3 != null) {
            d<K, V> dVarB = dVar2.h > dVar3.h ? dVar2.b() : dVar3.a();
            a((d) dVarB, false);
            d<K, V> dVar5 = dVar.f5493b;
            if (dVar5 != null) {
                i = dVar5.h;
                dVarB.f5493b = dVar5;
                dVar5.f5492a = dVarB;
                dVar.f5493b = null;
            } else {
                i = 0;
            }
            d<K, V> dVar6 = dVar.f5494c;
            if (dVar6 != null) {
                i2 = dVar6.h;
                dVarB.f5494c = dVar6;
                dVar6.f5492a = dVarB;
                dVar.f5494c = null;
            }
            dVarB.h = Math.max(i, i2) + 1;
            a((d) dVar, (d) dVarB);
            return;
        }
        if (dVar2 != null) {
            a((d) dVar, (d) dVar2);
            dVar.f5493b = null;
        } else if (dVar3 != null) {
            a((d) dVar, (d) dVar3);
            dVar.f5494c = null;
        } else {
            a((d) dVar, (d) null);
        }
        b(dVar4, false);
        this.f5481c--;
        this.f5482d++;
    }

    d<K, V> b(Object obj) {
        d<K, V> dVarA = a(obj);
        if (dVarA != null) {
            a((d) dVarA, true);
        }
        return dVarA;
    }

    private void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f5492a;
        dVar.f5492a = null;
        if (dVar2 != null) {
            dVar2.f5492a = dVar3;
        }
        if (dVar3 != null) {
            if (dVar3.f5493b == dVar) {
                dVar3.f5493b = dVar2;
                return;
            } else {
                if (!f && dVar3.f5494c != dVar) {
                    throw new AssertionError();
                }
                dVar3.f5494c = dVar2;
                return;
            }
        }
        this.f5480b = dVar2;
    }

    private void b(d<K, V> dVar, boolean z) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.f5493b;
            d<K, V> dVar3 = dVar.f5494c;
            int i = dVar2 != null ? dVar2.h : 0;
            int i2 = dVar3 != null ? dVar3.h : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                d<K, V> dVar4 = dVar3.f5493b;
                d<K, V> dVar5 = dVar3.f5494c;
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
                d<K, V> dVar6 = dVar2.f5493b;
                d<K, V> dVar7 = dVar2.f5494c;
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
            dVar = dVar.f5492a;
        }
    }

    private void a(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f5493b;
        d<K, V> dVar3 = dVar.f5494c;
        d<K, V> dVar4 = dVar3.f5493b;
        d<K, V> dVar5 = dVar3.f5494c;
        dVar.f5494c = dVar4;
        if (dVar4 != null) {
            dVar4.f5492a = dVar;
        }
        a((d) dVar, (d) dVar3);
        dVar3.f5493b = dVar;
        dVar.f5492a = dVar3;
        dVar.h = Math.max(dVar2 != null ? dVar2.h : 0, dVar4 != null ? dVar4.h : 0) + 1;
        dVar3.h = Math.max(dVar.h, dVar5 != null ? dVar5.h : 0) + 1;
    }

    private void b(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f5493b;
        d<K, V> dVar3 = dVar.f5494c;
        d<K, V> dVar4 = dVar2.f5493b;
        d<K, V> dVar5 = dVar2.f5494c;
        dVar.f5493b = dVar5;
        if (dVar5 != null) {
            dVar5.f5492a = dVar;
        }
        a((d) dVar, (d) dVar2);
        dVar2.f5494c = dVar;
        dVar.f5492a = dVar2;
        dVar.h = Math.max(dVar3 != null ? dVar3.h : 0, dVar5 != null ? dVar5.h : 0) + 1;
        dVar2.h = Math.max(dVar.h, dVar4 != null ? dVar4.h : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        g<K, V>.a aVar = this.h;
        if (aVar != null) {
            return aVar;
        }
        g<K, V>.a aVar2 = new a();
        this.h = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        g<K, V>.b bVar = this.i;
        if (bVar != null) {
            return bVar;
        }
        g<K, V>.b bVar2 = new b();
        this.i = bVar2;
        return bVar2;
    }

    static final class d<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        d<K, V> f5492a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        d<K, V> f5493b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        d<K, V> f5494c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        d<K, V> f5495d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        d<K, V> f5496e;
        final K f;
        V g;
        int h;

        d() {
            this.f = null;
            this.f5496e = this;
            this.f5495d = this;
        }

        d(d<K, V> dVar, K k, d<K, V> dVar2, d<K, V> dVar3) {
            this.f5492a = dVar;
            this.f = k;
            this.h = 1;
            this.f5495d = dVar2;
            this.f5496e = dVar3;
            dVar3.f5495d = this;
            dVar2.f5496e = this;
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
            K k = this.f;
            if (k == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k.equals(entry.getKey())) {
                return false;
            }
            V v = this.g;
            if (v == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f;
            int iHashCode = k == null ? 0 : k.hashCode();
            V v = this.g;
            return iHashCode ^ (v != null ? v.hashCode() : 0);
        }

        public String toString() {
            return this.f + "=" + this.g;
        }

        public d<K, V> a() {
            d<K, V> dVar = this;
            for (d<K, V> dVar2 = this.f5493b; dVar2 != null; dVar2 = dVar2.f5493b) {
                dVar = dVar2;
            }
            return dVar;
        }

        public d<K, V> b() {
            d<K, V> dVar = this;
            for (d<K, V> dVar2 = this.f5494c; dVar2 != null; dVar2 = dVar2.f5494c) {
                dVar = dVar2;
            }
            return dVar;
        }
    }

    private abstract class c<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        d<K, V> f5488b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        d<K, V> f5489c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f5490d;

        c() {
            this.f5488b = g.this.f5483e.f5495d;
            this.f5490d = g.this.f5482d;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f5488b != g.this.f5483e;
        }

        final d<K, V> b() {
            d<K, V> dVar = this.f5488b;
            if (dVar == g.this.f5483e) {
                throw new NoSuchElementException();
            }
            if (g.this.f5482d != this.f5490d) {
                throw new ConcurrentModificationException();
            }
            this.f5488b = dVar.f5495d;
            this.f5489c = dVar;
            return dVar;
        }

        @Override // java.util.Iterator
        public final void remove() {
            d<K, V> dVar = this.f5489c;
            if (dVar == null) {
                throw new IllegalStateException();
            }
            g.this.a((d) dVar, true);
            this.f5489c = null;
            this.f5490d = g.this.f5482d;
        }
    }

    class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return g.this.f5481c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new g<K, V>.c<Map.Entry<K, V>>() { // from class: com.google.gson.internal.g.a.1
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
            return g.this.f5481c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new g<K, V>.c<K>() { // from class: com.google.gson.internal.g.b.1
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
