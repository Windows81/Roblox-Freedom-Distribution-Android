package com.google.android.gms.internal.ads;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class adg<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<adn> f3827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<K, V> f3828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3829d;
    private volatile adp e;
    private Map<K, V> f;
    private volatile adj g;

    private adg(int i) {
        this.f3826a = i;
        this.f3827b = Collections.emptyList();
        this.f3828c = Collections.emptyMap();
        this.f = Collections.emptyMap();
    }

    /* synthetic */ adg(int i, adh adhVar) {
        this(i);
    }

    private final int a(K k) {
        int size = this.f3827b.size() - 1;
        if (size >= 0) {
            int iCompareTo = k.compareTo((Comparable) this.f3827b.get(size).getKey());
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
        int i = 0;
        int i2 = size;
        while (i <= i2) {
            int i3 = (i + i2) / 2;
            int iCompareTo2 = k.compareTo((Comparable) this.f3827b.get(i3).getKey());
            if (iCompareTo2 < 0) {
                i2 = i3 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i3;
                }
                i = i3 + 1;
            }
        }
        return -(i + 1);
    }

    static <FieldDescriptorType extends aax<FieldDescriptorType>> adg<FieldDescriptorType, Object> a(int i) {
        return new adh(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V c(int i) {
        f();
        V v = (V) this.f3827b.remove(i).getValue();
        if (!this.f3828c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = g().entrySet().iterator();
            this.f3827b.add(new adn(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        if (this.f3829d) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> g() {
        f();
        if (this.f3828c.isEmpty() && !(this.f3828c instanceof TreeMap)) {
            this.f3828c = new TreeMap();
            this.f = ((TreeMap) this.f3828c).descendingMap();
        }
        return (SortedMap) this.f3828c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final V put(K k, V v) {
        f();
        int iA = a(k);
        if (iA >= 0) {
            return (V) this.f3827b.get(iA).setValue(v);
        }
        f();
        if (this.f3827b.isEmpty() && !(this.f3827b instanceof ArrayList)) {
            this.f3827b = new ArrayList(this.f3826a);
        }
        int i = -(iA + 1);
        if (i >= this.f3826a) {
            return g().put(k, v);
        }
        if (this.f3827b.size() == this.f3826a) {
            adn adnVarRemove = this.f3827b.remove(this.f3826a - 1);
            g().put((Comparable) adnVarRemove.getKey(), adnVarRemove.getValue());
        }
        this.f3827b.add(i, new adn(this, k, v));
        return null;
    }

    public void a() {
        if (this.f3829d) {
            return;
        }
        this.f3828c = this.f3828c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f3828c);
        this.f = this.f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f);
        this.f3829d = true;
    }

    public final Map.Entry<K, V> b(int i) {
        return this.f3827b.get(i);
    }

    public final boolean b() {
        return this.f3829d;
    }

    public final int c() {
        return this.f3827b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        f();
        if (!this.f3827b.isEmpty()) {
            this.f3827b.clear();
        }
        if (this.f3828c.isEmpty()) {
            return;
        }
        this.f3828c.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f3828c.containsKey(comparable);
    }

    public final Iterable<Map.Entry<K, V>> d() {
        return this.f3828c.isEmpty() ? adk.a() : this.f3828c.entrySet();
    }

    final Set<Map.Entry<K, V>> e() {
        if (this.g == null) {
            this.g = new adj(this, null);
        }
        return this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.e == null) {
            this.e = new adp(this, null);
        }
        return this.e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof adg)) {
            return super.equals(obj);
        }
        adg adgVar = (adg) obj;
        int size = size();
        if (size != adgVar.size()) {
            return false;
        }
        int iC = c();
        if (iC != adgVar.c()) {
            return entrySet().equals(adgVar.entrySet());
        }
        for (int i = 0; i < iC; i++) {
            if (!b(i).equals(adgVar.b(i))) {
                return false;
            }
        }
        if (iC != size) {
            return this.f3828c.equals(adgVar.f3828c);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? (V) this.f3827b.get(iA).getValue() : this.f3828c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iC = c();
        int iHashCode = 0;
        for (int i = 0; i < iC; i++) {
            iHashCode += this.f3827b.get(i).hashCode();
        }
        return this.f3828c.size() > 0 ? this.f3828c.hashCode() + iHashCode : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        f();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return c(iA);
        }
        if (this.f3828c.isEmpty()) {
            return null;
        }
        return this.f3828c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f3827b.size() + this.f3828c.size();
    }
}
