package com.google.c.b;

import com.google.c.b.v;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class y<K, V> implements Serializable, Map<K, V> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Map.Entry<?, ?>[] f6138d = new Map.Entry[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private transient ad<Map.Entry<K, V>> f6139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private transient ad<K> f6140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private transient v<V> f6141c;

    abstract ad<Map.Entry<K, V>> a();

    abstract boolean c();

    public abstract V get(Object obj);

    public static <K, V> y<K, V> i() {
        return u.f();
    }

    public static <K, V> y<K, V> b(K k, V v) {
        return u.a(k, v);
    }

    static <K, V> z<K, V> c(K k, V v) {
        return new z<>(k, v);
    }

    static void a(boolean z, String str, Map.Entry<?, ?> entry, Map.Entry<?, ?> entry2) {
        if (!z) {
            String strValueOf = String.valueOf(entry);
            String strValueOf2 = String.valueOf(entry2);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(strValueOf).length() + String.valueOf(strValueOf2).length()).append("Multiple entries with same ").append(str).append(": ").append(strValueOf).append(" and ").append(strValueOf2).toString());
        }
    }

    public static class a<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Comparator<? super V> f6144a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        z<K, V>[] f6145b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f6146c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f6147d;

        public a() {
            this(4);
        }

        a(int i) {
            this.f6145b = new z[i];
            this.f6146c = 0;
            this.f6147d = false;
        }

        private void a(int i) {
            if (i > this.f6145b.length) {
                this.f6145b = (z[]) ah.b(this.f6145b, v.a.a(this.f6145b.length, i));
                this.f6147d = false;
            }
        }

        public a<K, V> a(K k, V v) {
            a(this.f6146c + 1);
            z<K, V> zVarC = y.c(k, v);
            z<K, V>[] zVarArr = this.f6145b;
            int i = this.f6146c;
            this.f6146c = i + 1;
            zVarArr[i] = zVarC;
            return this;
        }

        public y<K, V> a() {
            switch (this.f6146c) {
                case 0:
                    return y.i();
                case 1:
                    return y.b(this.f6145b[0].getKey(), this.f6145b[0].getValue());
                default:
                    if (this.f6144a != null) {
                        if (this.f6147d) {
                            this.f6145b = (z[]) ah.b(this.f6145b, this.f6146c);
                        }
                        Arrays.sort(this.f6145b, 0, this.f6146c, ai.a(this.f6144a).a(ag.a()));
                    }
                    this.f6147d = this.f6146c == this.f6145b.length;
                    return d.a(this.f6146c, this.f6145b);
            }
        }
    }

    y() {
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public ad<Map.Entry<K, V>> entrySet() {
        ad<Map.Entry<K, V>> adVar = this.f6139a;
        if (adVar != null) {
            return adVar;
        }
        ad<Map.Entry<K, V>> adVarA = a();
        this.f6139a = adVarA;
        return adVarA;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public ad<K> keySet() {
        ad<K> adVar = this.f6140b;
        if (adVar != null) {
            return adVar;
        }
        ad<K> adVarE = e();
        this.f6140b = adVarE;
        return adVarE;
    }

    ad<K> e() {
        return isEmpty() ? ad.f() : new ab(this);
    }

    k<K> l() {
        final k<Map.Entry<K, V>> kVarC = entrySet().iterator();
        return new k<K>() { // from class: com.google.c.b.y.1
            @Override // java.util.Iterator
            public boolean hasNext() {
                return kVarC.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                return (K) ((Map.Entry) kVarC.next()).getKey();
            }
        };
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public v<V> values() {
        v<V> vVar = this.f6141c;
        if (vVar != null) {
            return vVar;
        }
        ac acVar = new ac(this);
        this.f6141c = acVar;
        return acVar;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return ag.a((Map<?, ?>) this, obj);
    }

    public int hashCode() {
        return f.a(entrySet());
    }

    boolean b() {
        return false;
    }

    public String toString() {
        return ag.a(this);
    }
}
