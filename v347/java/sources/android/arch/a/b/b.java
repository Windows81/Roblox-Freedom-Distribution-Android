package android.arch.a.b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c<K, V> f24a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c<K, V> f25b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakHashMap<f<K, V>, Boolean> f26c = new WeakHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f27d = 0;

    interface f<K, V> {
        void a_(c<K, V> cVar);
    }

    protected c<K, V> a(K k) {
        c<K, V> cVar = this.f24a;
        while (cVar != null && !cVar.f28a.equals(k)) {
            cVar = cVar.f30c;
        }
        return cVar;
    }

    public V a(K k, V v) {
        c<K, V> cVarA = a(k);
        if (cVarA != null) {
            return cVarA.f29b;
        }
        b(k, v);
        return null;
    }

    protected c<K, V> b(K k, V v) {
        c<K, V> cVar = new c<>(k, v);
        this.f27d++;
        if (this.f25b == null) {
            this.f24a = cVar;
            this.f25b = this.f24a;
        } else {
            this.f25b.f30c = cVar;
            cVar.f31d = this.f25b;
            this.f25b = cVar;
        }
        return cVar;
    }

    public V b(K k) {
        c<K, V> cVarA = a(k);
        if (cVarA == null) {
            return null;
        }
        this.f27d--;
        if (!this.f26c.isEmpty()) {
            Iterator<f<K, V>> it = this.f26c.keySet().iterator();
            while (it.hasNext()) {
                it.next().a_(cVarA);
            }
        }
        if (cVarA.f31d != null) {
            cVarA.f31d.f30c = cVarA.f30c;
        } else {
            this.f24a = cVarA.f30c;
        }
        if (cVarA.f30c != null) {
            cVarA.f30c.f31d = cVarA.f31d;
        } else {
            this.f25b = cVarA.f31d;
        }
        cVarA.f30c = null;
        cVarA.f31d = null;
        return cVarA.f29b;
    }

    public int a() {
        return this.f27d;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f24a, this.f25b);
        this.f26c.put(aVar, false);
        return aVar;
    }

    public Iterator<Map.Entry<K, V>> b() {
        C0000b c0000b = new C0000b(this.f25b, this.f24a);
        this.f26c.put(c0000b, false);
        return c0000b;
    }

    public b<K, V>.d c() {
        b<K, V>.d dVar = new d();
        this.f26c.put(dVar, false);
        return dVar;
    }

    public Map.Entry<K, V> d() {
        return this.f24a;
    }

    public Map.Entry<K, V> e() {
        return this.f25b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (a() != bVar.a()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if (next == null && next2 != null) {
                return false;
            }
            if (next != null && !next.equals(next2)) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    private static abstract class e<K, V> implements f<K, V>, Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        c<K, V> f35a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        c<K, V> f36b;

        abstract c<K, V> a(c<K, V> cVar);

        abstract c<K, V> b(c<K, V> cVar);

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.f35a = cVar2;
            this.f36b = cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f36b != null;
        }

        @Override // android.arch.a.b.b.f
        public void a_(c<K, V> cVar) {
            if (this.f35a == cVar && cVar == this.f36b) {
                this.f36b = null;
                this.f35a = null;
            }
            if (this.f35a == cVar) {
                this.f35a = b(this.f35a);
            }
            if (this.f36b == cVar) {
                this.f36b = b();
            }
        }

        private c<K, V> b() {
            if (this.f36b == this.f35a || this.f35a == null) {
                return null;
            }
            return a(this.f36b);
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.f36b;
            this.f36b = b();
            return cVar;
        }
    }

    static class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // android.arch.a.b.b.e
        c<K, V> a(c<K, V> cVar) {
            return cVar.f30c;
        }

        @Override // android.arch.a.b.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.f31d;
        }
    }

    /* JADX INFO: renamed from: android.arch.a.b.b$b, reason: collision with other inner class name */
    private static class C0000b<K, V> extends e<K, V> {
        C0000b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // android.arch.a.b.b.e
        c<K, V> a(c<K, V> cVar) {
            return cVar.f31d;
        }

        @Override // android.arch.a.b.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.f30c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public class d implements f<K, V>, Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private c<K, V> f33b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f34c;

        private d() {
            this.f34c = true;
        }

        @Override // android.arch.a.b.b.f
        public void a_(c<K, V> cVar) {
            if (cVar == this.f33b) {
                this.f33b = this.f33b.f31d;
                this.f34c = this.f33b == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34c ? b.this.f24a != null : (this.f33b == null || this.f33b.f30c == null) ? false : true;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (this.f34c) {
                this.f34c = false;
                this.f33b = b.this.f24a;
            } else {
                this.f33b = this.f33b != null ? this.f33b.f30c : null;
            }
            return this.f33b;
        }
    }

    static class c<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final K f28a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final V f29b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        c<K, V> f30c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        c<K, V> f31d;

        c(K k, V v) {
            this.f28a = k;
            this.f29b = v;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f28a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f29b;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f28a + "=" + this.f29b;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f28a.equals(cVar.f28a) && this.f29b.equals(cVar.f29b);
        }
    }
}
