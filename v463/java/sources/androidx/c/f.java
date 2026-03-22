package androidx.c;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class f<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    f<K, V>.b f1084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    f<K, V>.c f1085c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    f<K, V>.e f1086d;

    protected abstract int a();

    protected abstract int a(Object obj);

    protected abstract Object a(int i, int i2);

    protected abstract V a(int i, V v);

    protected abstract void a(int i);

    protected abstract void a(K k, V v);

    protected abstract int b(Object obj);

    protected abstract Map<K, V> b();

    protected abstract void c();

    f() {
    }

    final class a<T> implements Iterator<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f1087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1088b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1089c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1090d = false;

        a(int i) {
            this.f1087a = i;
            this.f1088b = f.this.a();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1089c < this.f1088b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t = (T) f.this.a(this.f1089c, this.f1087a);
            this.f1089c++;
            this.f1090d = true;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f1090d) {
                throw new IllegalStateException();
            }
            int i = this.f1089c - 1;
            this.f1089c = i;
            this.f1088b--;
            this.f1090d = false;
            f.this.a(i);
        }
    }

    final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1094a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f1096c = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1095b = -1;

        d() {
            this.f1094a = f.this.a() - 1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1095b < this.f1094a;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f1095b++;
            this.f1096c = true;
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f1096c) {
                throw new IllegalStateException();
            }
            f.this.a(this.f1095b);
            this.f1095b--;
            this.f1094a--;
            this.f1096c = false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (!this.f1096c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (K) f.this.a(this.f1095b, 0);
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (!this.f1096c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (V) f.this.a(this.f1095b, 1);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (!this.f1096c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (V) f.this.a(this.f1095b, v);
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!this.f1096c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return androidx.c.c.a(entry.getKey(), f.this.a(this.f1095b, 0)) && androidx.c.c.a(entry.getValue(), f.this.a(this.f1095b, 1));
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.f1096c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object objA = f.this.a(this.f1095b, 0);
            Object objA2 = f.this.a(this.f1095b, 1);
            return (objA == null ? 0 : objA.hashCode()) ^ (objA2 != null ? objA2.hashCode() : 0);
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    final class b implements Set<Map.Entry<K, V>> {
        b() {
        }

        @Override // java.util.Set, java.util.Collection
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int iA = f.this.a();
            for (Map.Entry<K, V> entry : collection) {
                f.this.a(entry.getKey(), entry.getValue());
            }
            return iA != f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            f.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iA = f.this.a(entry.getKey());
            if (iA < 0) {
                return false;
            }
            return androidx.c.c.a(f.this.a(iA, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return f.this.a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return f.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iA = f.this.a() - 1; iA >= 0; iA--) {
                Object objA = f.this.a(iA, 0);
                Object objA2 = f.this.a(iA, 1);
                iHashCode += (objA == null ? 0 : objA.hashCode()) ^ (objA2 == null ? 0 : objA2.hashCode());
            }
            return iHashCode;
        }
    }

    final class c implements Set<K> {
        c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            f.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return f.this.a(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return f.a((Map) f.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return f.this.a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int iA = f.this.a(obj);
            if (iA < 0) {
                return false;
            }
            f.this.a(iA);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return f.b(f.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return f.c(f.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return f.this.b(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) f.this.a(tArr, 0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return f.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iA = f.this.a() - 1; iA >= 0; iA--) {
                Object objA = f.this.a(iA, 0);
                iHashCode += objA == null ? 0 : objA.hashCode();
            }
            return iHashCode;
        }
    }

    final class e implements Collection<V> {
        e() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            f.this.c();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return f.this.b(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return f.this.a() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int iB = f.this.b(obj);
            if (iB < 0) {
                return false;
            }
            f.this.a(iB);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int iA = f.this.a();
            int i = 0;
            boolean z = false;
            while (i < iA) {
                if (collection.contains(f.this.a(i, 1))) {
                    f.this.a(i);
                    i--;
                    iA--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int iA = f.this.a();
            int i = 0;
            boolean z = false;
            while (i < iA) {
                if (!collection.contains(f.this.a(i, 1))) {
                    f.this.a(i);
                    i--;
                    iA--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return f.this.a();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return f.this.b(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) f.this.a(tArr, 1);
        }
    }

    public static <K, V> boolean a(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> boolean b(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean c(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public Object[] b(int i) {
        int iA = a();
        Object[] objArr = new Object[iA];
        for (int i2 = 0; i2 < iA; i2++) {
            objArr[i2] = a(i2, i);
        }
        return objArr;
    }

    public <T> T[] a(T[] tArr, int i) {
        int iA = a();
        if (tArr.length < iA) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), iA));
        }
        for (int i2 = 0; i2 < iA; i2++) {
            tArr[i2] = a(i2, i);
        }
        if (tArr.length > iA) {
            tArr[iA] = null;
        }
        return tArr;
    }

    public static <T> boolean a(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public Set<Map.Entry<K, V>> d() {
        if (this.f1084b == null) {
            this.f1084b = new b();
        }
        return this.f1084b;
    }

    public Set<K> e() {
        if (this.f1085c == null) {
            this.f1085c = new c();
        }
        return this.f1085c;
    }

    public Collection<V> f() {
        if (this.f1086d == null) {
            this.f1086d = new e();
        }
        return this.f1086d;
    }
}
