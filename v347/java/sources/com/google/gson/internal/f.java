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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class f<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean f;
    private static final Comparator<Comparable> g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Comparator<? super K> f6310a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    d<K, V> f6311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f6312c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f6313d;
    final d<K, V> e;
    private f<K, V>.a h;
    private f<K, V>.b i;

    static {
        f = !f.class.desiredAssertionStatus();
        g = new Comparator<Comparable>() { // from class: com.google.gson.internal.f.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Comparable comparable, Comparable comparable2) {
                return comparable.compareTo(comparable2);
            }
        };
    }

    public f() {
        this(g);
    }

    public f(Comparator<? super K> comparator) {
        this.f6312c = 0;
        this.f6313d = 0;
        this.e = new d<>();
        this.f6310a = comparator == null ? g : comparator;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f6312c;
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
        this.f6311b = null;
        this.f6312c = 0;
        this.f6313d++;
        d<K, V> dVar = this.e;
        dVar.e = dVar;
        dVar.f6324d = dVar;
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
        Comparator<? super K> comparator = this.f6310a;
        d<K, V> dVar3 = this.f6311b;
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
                d<K, V> dVar4 = iCompare < 0 ? dVar3.f6322b : dVar3.f6323c;
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
                throw new ClassCastException(k.getClass().getName() + " is not Comparable");
            }
            dVar2 = new d<>(dVar, k, dVar5, dVar5.e);
            this.f6311b = dVar2;
        } else {
            dVar2 = new d<>(dVar, k, dVar5, dVar5.e);
            if (i < 0) {
                dVar.f6322b = dVar2;
            } else {
                dVar.f6323c = dVar2;
            }
            b(dVar, true);
        }
        this.f6312c++;
        this.f6313d++;
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
            dVar.e.f6324d = dVar.f6324d;
            dVar.f6324d.e = dVar.e;
        }
        d<K, V> dVar2 = dVar.f6322b;
        d<K, V> dVar3 = dVar.f6323c;
        d<K, V> dVar4 = dVar.f6321a;
        if (dVar2 != null && dVar3 != null) {
            d<K, V> dVarB = dVar2.h > dVar3.h ? dVar2.b() : dVar3.a();
            a((d) dVarB, false);
            d<K, V> dVar5 = dVar.f6322b;
            if (dVar5 != null) {
                i = dVar5.h;
                dVarB.f6322b = dVar5;
                dVar5.f6321a = dVarB;
                dVar.f6322b = null;
            } else {
                i = 0;
            }
            d<K, V> dVar6 = dVar.f6323c;
            if (dVar6 != null) {
                i2 = dVar6.h;
                dVarB.f6323c = dVar6;
                dVar6.f6321a = dVarB;
                dVar.f6323c = null;
            }
            dVarB.h = Math.max(i, i2) + 1;
            a((d) dVar, (d) dVarB);
            return;
        }
        if (dVar2 != null) {
            a((d) dVar, (d) dVar2);
            dVar.f6322b = null;
        } else if (dVar3 != null) {
            a((d) dVar, (d) dVar3);
            dVar.f6323c = null;
        } else {
            a((d) dVar, (d) null);
        }
        b(dVar4, false);
        this.f6312c--;
        this.f6313d++;
    }

    d<K, V> b(Object obj) {
        d<K, V> dVarA = a(obj);
        if (dVarA != null) {
            a((d) dVarA, true);
        }
        return dVarA;
    }

    private void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f6321a;
        dVar.f6321a = null;
        if (dVar2 != null) {
            dVar2.f6321a = dVar3;
        }
        if (dVar3 != null) {
            if (dVar3.f6322b == dVar) {
                dVar3.f6322b = dVar2;
                return;
            } else {
                if (!f && dVar3.f6323c != dVar) {
                    throw new AssertionError();
                }
                dVar3.f6323c = dVar2;
                return;
            }
        }
        this.f6311b = dVar2;
    }

    private void b(d<K, V> dVar, boolean z) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.f6322b;
            d<K, V> dVar3 = dVar.f6323c;
            int i = dVar2 != null ? dVar2.h : 0;
            int i2 = dVar3 != null ? dVar3.h : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                d<K, V> dVar4 = dVar3.f6322b;
                d<K, V> dVar5 = dVar3.f6323c;
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
                d<K, V> dVar6 = dVar2.f6322b;
                d<K, V> dVar7 = dVar2.f6323c;
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
            dVar = dVar.f6321a;
        }
    }

    private void a(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f6322b;
        d<K, V> dVar3 = dVar.f6323c;
        d<K, V> dVar4 = dVar3.f6322b;
        d<K, V> dVar5 = dVar3.f6323c;
        dVar.f6323c = dVar4;
        if (dVar4 != null) {
            dVar4.f6321a = dVar;
        }
        a((d) dVar, (d) dVar3);
        dVar3.f6322b = dVar;
        dVar.f6321a = dVar3;
        dVar.h = Math.max(dVar2 != null ? dVar2.h : 0, dVar4 != null ? dVar4.h : 0) + 1;
        dVar3.h = Math.max(dVar.h, dVar5 != null ? dVar5.h : 0) + 1;
    }

    private void b(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f6322b;
        d<K, V> dVar3 = dVar.f6323c;
        d<K, V> dVar4 = dVar2.f6322b;
        d<K, V> dVar5 = dVar2.f6323c;
        dVar.f6322b = dVar5;
        if (dVar5 != null) {
            dVar5.f6321a = dVar;
        }
        a((d) dVar, (d) dVar2);
        dVar2.f6323c = dVar;
        dVar.f6321a = dVar2;
        dVar.h = Math.max(dVar3 != null ? dVar3.h : 0, dVar5 != null ? dVar5.h : 0) + 1;
        dVar2.h = Math.max(dVar.h, dVar4 != null ? dVar4.h : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        f<K, V>.a aVar = this.h;
        if (aVar != null) {
            return aVar;
        }
        f<K, V>.a aVar2 = new a();
        this.h = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        f<K, V>.b bVar = this.i;
        if (bVar != null) {
            return bVar;
        }
        f<K, V>.b bVar2 = new b();
        this.i = bVar2;
        return bVar2;
    }

    static final class d<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        d<K, V> f6321a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        d<K, V> f6322b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        d<K, V> f6323c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        d<K, V> f6324d;
        d<K, V> e;
        final K f;
        V g;
        int h;

        d() {
            this.f = null;
            this.e = this;
            this.f6324d = this;
        }

        d(d<K, V> dVar, K k, d<K, V> dVar2, d<K, V> dVar3) {
            this.f6321a = dVar;
            this.f = k;
            this.h = 1;
            this.f6324d = dVar2;
            this.e = dVar3;
            dVar3.f6324d = this;
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
            return this.f + "=" + this.g;
        }

        public d<K, V> a() {
            for (d<K, V> dVar = this.f6322b; dVar != null; dVar = dVar.f6322b) {
                this = dVar;
            }
            return this;
        }

        public d<K, V> b() {
            for (d<K, V> dVar = this.f6323c; dVar != null; dVar = dVar.f6323c) {
                this = dVar;
            }
            return this;
        }
    }

    private abstract class c<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        d<K, V> f6318b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        d<K, V> f6319c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f6320d;

        c() {
            this.f6318b = f.this.e.f6324d;
            this.f6320d = f.this.f6313d;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f6318b != f.this.e;
        }

        final d<K, V> b() {
            d<K, V> dVar = this.f6318b;
            if (dVar == f.this.e) {
                throw new NoSuchElementException();
            }
            if (f.this.f6313d != this.f6320d) {
                throw new ConcurrentModificationException();
            }
            this.f6318b = dVar.f6324d;
            this.f6319c = dVar;
            return dVar;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.f6319c == null) {
                throw new IllegalStateException();
            }
            f.this.a((d) this.f6319c, true);
            this.f6319c = null;
            this.f6320d = f.this.f6313d;
        }
    }

    class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return f.this.f6312c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new f<K, V>.c<Map.Entry<K, V>>() { // from class: com.google.gson.internal.f.a.1
                {
                    f fVar = f.this;
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
            return (obj instanceof Map.Entry) && f.this.a((Map.Entry<?, ?>) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            d<K, V> dVarA;
            if (!(obj instanceof Map.Entry) || (dVarA = f.this.a((Map.Entry<?, ?>) obj)) == null) {
                return false;
            }
            f.this.a((d) dVarA, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            f.this.clear();
        }
    }

    final class b extends AbstractSet<K> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return f.this.f6312c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new f<K, V>.c<K>() { // from class: com.google.gson.internal.f.b.1
                {
                    f fVar = f.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return b().f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return f.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return f.this.b(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            f.this.clear();
        }
    }
}
