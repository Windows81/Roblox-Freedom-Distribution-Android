package android.support.v4.g;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class h<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    h<K, V>.b f942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    h<K, V>.c f943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    h<K, V>.e f944d;

    protected abstract int a();

    protected abstract int a(Object obj);

    protected abstract Object a(int i, int i2);

    protected abstract V a(int i, V v);

    protected abstract void a(int i);

    protected abstract void a(K k, V v);

    protected abstract int b(Object obj);

    protected abstract Map<K, V> b();

    protected abstract void c();

    h() {
    }

    final class a<T> implements Iterator<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f945a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f946b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f947c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f948d = false;

        a(int i) {
            this.f945a = i;
            this.f946b = h.this.a();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f947c < this.f946b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t = (T) h.this.a(this.f947c, this.f945a);
            this.f947c++;
            this.f948d = true;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f948d) {
                throw new IllegalStateException();
            }
            this.f947c--;
            this.f946b--;
            this.f948d = false;
            h.this.a(this.f947c);
        }
    }

    final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f951a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f953c = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f952b = -1;

        d() {
            this.f951a = h.this.a() - 1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f952b < this.f951a;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f952b++;
            this.f953c = true;
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f953c) {
                throw new IllegalStateException();
            }
            h.this.a(this.f952b);
            this.f952b--;
            this.f951a--;
            this.f953c = false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (!this.f953c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (K) h.this.a(this.f952b, 0);
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (!this.f953c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (V) h.this.a(this.f952b, 1);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (!this.f953c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (V) h.this.a(this.f952b, v);
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!this.f953c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return android.support.v4.g.c.a(entry.getKey(), h.this.a(this.f952b, 0)) && android.support.v4.g.c.a(entry.getValue(), h.this.a(this.f952b, 1));
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            if (!this.f953c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object objA = h.this.a(this.f952b, 0);
            Object objA2 = h.this.a(this.f952b, 1);
            return (objA2 != null ? objA2.hashCode() : 0) ^ (objA == null ? 0 : objA.hashCode());
        }

        public final String toString() {
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
            int iA = h.this.a();
            for (Map.Entry<K, V> entry : collection) {
                h.this.a(entry.getKey(), entry.getValue());
            }
            return iA != h.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            h.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iA = h.this.a(entry.getKey());
            if (iA >= 0) {
                return android.support.v4.g.c.a(h.this.a(iA, 1), entry.getValue());
            }
            return false;
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
            return h.this.a() == 0;
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
            return h.this.a();
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
            return h.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iA = h.this.a() - 1;
            int iHashCode = 0;
            while (iA >= 0) {
                Object objA = h.this.a(iA, 0);
                Object objA2 = h.this.a(iA, 1);
                iA--;
                iHashCode += (objA2 == null ? 0 : objA2.hashCode()) ^ (objA == null ? 0 : objA.hashCode());
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
            h.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return h.this.a(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return h.a((Map) h.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return h.this.a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int iA = h.this.a(obj);
            if (iA < 0) {
                return false;
            }
            h.this.a(iA);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return h.b(h.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return h.c(h.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return h.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return h.this.b(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) h.this.a(tArr, 0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return h.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iA = h.this.a() - 1; iA >= 0; iA--) {
                Object objA = h.this.a(iA, 0);
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
            h.this.c();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return h.this.b(obj) >= 0;
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
            return h.this.a() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int iB = h.this.b(obj);
            if (iB < 0) {
                return false;
            }
            h.this.a(iB);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int i = 0;
            int iA = h.this.a();
            boolean z = false;
            while (i < iA) {
                if (collection.contains(h.this.a(i, 1))) {
                    h.this.a(i);
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
            int i = 0;
            int iA = h.this.a();
            boolean z = false;
            while (i < iA) {
                if (!collection.contains(h.this.a(i, 1))) {
                    h.this.a(i);
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
            return h.this.a();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return h.this.b(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) h.this.a(tArr, 1);
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
        Object[] objArr = tArr.length < iA ? (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), iA)) : tArr;
        for (int i2 = 0; i2 < iA; i2++) {
            objArr[i2] = a(i2, i);
        }
        if (objArr.length > iA) {
            objArr[iA] = null;
        }
        return (T[]) objArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static <T> boolean a(java.util.Set<T> r4, java.lang.Object r5) {
        /*
            r0 = 1
            r1 = 0
            if (r4 != r5) goto L6
            r1 = r0
        L5:
            return r1
        L6:
            boolean r2 = r5 instanceof java.util.Set
            if (r2 == 0) goto L5
            java.util.Set r5 = (java.util.Set) r5
            int r2 = r4.size()     // Catch: java.lang.ClassCastException -> L20 java.lang.NullPointerException -> L22
            int r3 = r5.size()     // Catch: java.lang.ClassCastException -> L20 java.lang.NullPointerException -> L22
            if (r2 != r3) goto L1e
            boolean r2 = r4.containsAll(r5)     // Catch: java.lang.ClassCastException -> L20 java.lang.NullPointerException -> L22
            if (r2 == 0) goto L1e
        L1c:
            r1 = r0
            goto L5
        L1e:
            r0 = r1
            goto L1c
        L20:
            r0 = move-exception
            goto L5
        L22:
            r0 = move-exception
            goto L5
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.g.h.a(java.util.Set, java.lang.Object):boolean");
    }

    public Set<Map.Entry<K, V>> d() {
        if (this.f942b == null) {
            this.f942b = new b();
        }
        return this.f942b;
    }

    public Set<K> e() {
        if (this.f943c == null) {
            this.f943c = new c();
        }
        return this.f943c;
    }

    public Collection<V> f() {
        if (this.f944d == null) {
            this.f944d = new e();
        }
        return this.f944d;
    }
}
