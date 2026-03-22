package androidx.a.a.b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c<K, V> f570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c<K, V> f571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakHashMap<f<K, V>, Boolean> f572c = new WeakHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f573d = 0;

    interface f<K, V> {
        void a_(c<K, V> cVar);
    }

    protected c<K, V> a(K k) {
        c<K, V> cVar = this.f570a;
        while (cVar != null && !cVar.f574a.equals(k)) {
            cVar = cVar.f576c;
        }
        return cVar;
    }

    public V a(K k, V v) {
        c<K, V> cVarA = a(k);
        if (cVarA != null) {
            return cVarA.f575b;
        }
        b(k, v);
        return null;
    }

    protected c<K, V> b(K k, V v) {
        c<K, V> cVar = new c<>(k, v);
        this.f573d++;
        c<K, V> cVar2 = this.f571b;
        if (cVar2 == null) {
            this.f570a = cVar;
            this.f571b = cVar;
            return cVar;
        }
        cVar2.f576c = cVar;
        cVar.f577d = this.f571b;
        this.f571b = cVar;
        return cVar;
    }

    public V b(K k) {
        c<K, V> cVarA = a(k);
        if (cVarA == null) {
            return null;
        }
        this.f573d--;
        if (!this.f572c.isEmpty()) {
            Iterator<f<K, V>> it = this.f572c.keySet().iterator();
            while (it.hasNext()) {
                it.next().a_(cVarA);
            }
        }
        if (cVarA.f577d != null) {
            cVarA.f577d.f576c = cVarA.f576c;
        } else {
            this.f570a = cVarA.f576c;
        }
        if (cVarA.f576c != null) {
            cVarA.f576c.f577d = cVarA.f577d;
        } else {
            this.f571b = cVarA.f577d;
        }
        cVarA.f576c = null;
        cVarA.f577d = null;
        return cVarA.f575b;
    }

    public int a() {
        return this.f573d;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f570a, this.f571b);
        this.f572c.put(aVar, false);
        return aVar;
    }

    public Iterator<Map.Entry<K, V>> b() {
        C0011b c0011b = new C0011b(this.f571b, this.f570a);
        this.f572c.put(c0011b, false);
        return c0011b;
    }

    public b<K, V>.d c() {
        b<K, V>.d dVar = new d();
        this.f572c.put(dVar, false);
        return dVar;
    }

    public Map.Entry<K, V> d() {
        return this.f570a;
    }

    public Map.Entry<K, V> e() {
        return this.f571b;
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
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            iHashCode += it.next().hashCode();
        }
        return iHashCode;
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
        c<K, V> f581a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        c<K, V> f582b;

        abstract c<K, V> a(c<K, V> cVar);

        abstract c<K, V> b(c<K, V> cVar);

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.f581a = cVar2;
            this.f582b = cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f582b != null;
        }

        @Override // androidx.a.a.b.b.f
        public void a_(c<K, V> cVar) {
            if (this.f581a == cVar && cVar == this.f582b) {
                this.f582b = null;
                this.f581a = null;
            }
            c<K, V> cVar2 = this.f581a;
            if (cVar2 == cVar) {
                this.f581a = b(cVar2);
            }
            if (this.f582b == cVar) {
                this.f582b = b();
            }
        }

        private c<K, V> b() {
            c<K, V> cVar = this.f582b;
            c<K, V> cVar2 = this.f581a;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return a(cVar);
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.f582b;
            this.f582b = b();
            return cVar;
        }
    }

    static class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // androidx.a.a.b.b.e
        c<K, V> a(c<K, V> cVar) {
            return cVar.f576c;
        }

        @Override // androidx.a.a.b.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.f577d;
        }
    }

    /* JADX INFO: renamed from: androidx.a.a.b.b$b, reason: collision with other inner class name */
    private static class C0011b<K, V> extends e<K, V> {
        C0011b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // androidx.a.a.b.b.e
        c<K, V> a(c<K, V> cVar) {
            return cVar.f577d;
        }

        @Override // androidx.a.a.b.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.f576c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public class d implements f<K, V>, Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private c<K, V> f579b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f580c = true;

        d() {
        }

        @Override // androidx.a.a.b.b.f
        public void a_(c<K, V> cVar) {
            c<K, V> cVar2 = this.f579b;
            if (cVar == cVar2) {
                c<K, V> cVar3 = cVar2.f577d;
                this.f579b = cVar3;
                this.f580c = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f580c) {
                return b.this.f570a != null;
            }
            c<K, V> cVar = this.f579b;
            return (cVar == null || cVar.f576c == null) ? false : true;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (this.f580c) {
                this.f580c = false;
                this.f579b = b.this.f570a;
            } else {
                c<K, V> cVar = this.f579b;
                this.f579b = cVar != null ? cVar.f576c : null;
            }
            return this.f579b;
        }
    }

    static class c<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final K f574a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final V f575b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        c<K, V> f576c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        c<K, V> f577d;

        c(K k, V v) {
            this.f574a = k;
            this.f575b = v;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f574a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f575b;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f574a + "=" + this.f575b;
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
            return this.f574a.equals(cVar.f574a) && this.f575b.equals(cVar.f575b);
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f574a.hashCode() ^ this.f575b.hashCode();
        }
    }
}
