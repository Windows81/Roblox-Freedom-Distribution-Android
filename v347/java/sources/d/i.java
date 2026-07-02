package d;

import b.aa;
import b.r;
import b.v;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class i<T> {
    abstract void a(d.k kVar, T t) throws IOException;

    i() {
    }

    final i<Iterable<T>> a() {
        return new i<Iterable<T>>() { // from class: d.i.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // d.i
            public void a(d.k kVar, Iterable<T> iterable) throws IOException {
                if (iterable != null) {
                    Iterator<T> it = iterable.iterator();
                    while (it.hasNext()) {
                        i.this.a(kVar, it.next());
                    }
                }
            }
        };
    }

    final i<Object> b() {
        return new i<Object>() { // from class: d.i.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // d.i
            void a(d.k kVar, Object obj) throws IOException {
                if (obj != null) {
                    int length = Array.getLength(obj);
                    for (int i = 0; i < length; i++) {
                        i.this.a(kVar, Array.get(obj, i));
                    }
                }
            }
        };
    }

    static final class l extends i<Object> {
        l() {
        }

        @Override // d.i
        void a(d.k kVar, Object obj) {
            kVar.a(obj);
        }
    }

    static final class d<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f8114a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d.e<T, String> f8115b;

        d(String str, d.e<T, String> eVar) {
            this.f8114a = (String) o.a(str, "name == null");
            this.f8115b = eVar;
        }

        @Override // d.i
        void a(d.k kVar, T t) throws IOException {
            if (t != null) {
                kVar.a(this.f8114a, this.f8115b.a(t));
            }
        }
    }

    static final class h<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f8121a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d.e<T, String> f8122b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f8123c;

        h(String str, d.e<T, String> eVar, boolean z) {
            this.f8121a = (String) o.a(str, "name == null");
            this.f8122b = eVar;
            this.f8123c = z;
        }

        @Override // d.i
        void a(d.k kVar, T t) throws IOException {
            if (t == null) {
                throw new IllegalArgumentException("Path parameter \"" + this.f8121a + "\" value must not be null.");
            }
            kVar.a(this.f8121a, this.f8122b.a(t), this.f8123c);
        }
    }

    /* JADX INFO: renamed from: d.i$i, reason: collision with other inner class name */
    static final class C0139i<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f8124a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d.e<T, String> f8125b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f8126c;

        C0139i(String str, d.e<T, String> eVar, boolean z) {
            this.f8124a = (String) o.a(str, "name == null");
            this.f8125b = eVar;
            this.f8126c = z;
        }

        @Override // d.i
        void a(d.k kVar, T t) throws IOException {
            if (t != null) {
                kVar.b(this.f8124a, this.f8125b.a(t), this.f8126c);
            }
        }
    }

    static final class j<T> extends i<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d.e<T, String> f8127a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f8128b;

        j(d.e<T, String> eVar, boolean z) {
            this.f8127a = eVar;
            this.f8128b = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d.i
        public void a(d.k kVar, Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Query map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Query map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Query map contained null value for key '" + key + "'.");
                }
                kVar.b(key, this.f8127a.a(value), this.f8128b);
            }
        }
    }

    static final class e<T> extends i<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d.e<T, String> f8116a;

        e(d.e<T, String> eVar) {
            this.f8116a = eVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d.i
        public void a(d.k kVar, Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Header map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Header map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Header map contained null value for key '" + key + "'.");
                }
                kVar.a(key, this.f8116a.a(value));
            }
        }
    }

    static final class b<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f8109a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d.e<T, String> f8110b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f8111c;

        b(String str, d.e<T, String> eVar, boolean z) {
            this.f8109a = (String) o.a(str, "name == null");
            this.f8110b = eVar;
            this.f8111c = z;
        }

        @Override // d.i
        void a(d.k kVar, T t) throws IOException {
            if (t != null) {
                kVar.c(this.f8109a, this.f8110b.a(t), this.f8111c);
            }
        }
    }

    static final class c<T> extends i<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d.e<T, String> f8112a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f8113b;

        c(d.e<T, String> eVar, boolean z) {
            this.f8112a = eVar;
            this.f8113b = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d.i
        public void a(d.k kVar, Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Field map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Field map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Field map contained null value for key '" + key + "'.");
                }
                kVar.c(key, this.f8112a.a(value), this.f8113b);
            }
        }
    }

    static final class f<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r f8117a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d.e<T, aa> f8118b;

        f(r rVar, d.e<T, aa> eVar) {
            this.f8117a = rVar;
            this.f8118b = eVar;
        }

        @Override // d.i
        void a(d.k kVar, T t) {
            if (t != null) {
                try {
                    kVar.a(this.f8117a, this.f8118b.a(t));
                } catch (IOException e) {
                    throw new RuntimeException("Unable to convert " + t + " to RequestBody", e);
                }
            }
        }
    }

    static final class k extends i<v.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final k f8129a = new k();

        private k() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d.i
        public void a(d.k kVar, v.b bVar) throws IOException {
            if (bVar != null) {
                kVar.a(bVar);
            }
        }
    }

    static final class g<T> extends i<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d.e<T, aa> f8119a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f8120b;

        g(d.e<T, aa> eVar, String str) {
            this.f8119a = eVar;
            this.f8120b = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // d.i
        public void a(d.k kVar, Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Part map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Part map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Part map contained null value for key '" + key + "'.");
                }
                kVar.a(r.a("Content-Disposition", "form-data; name=\"" + key + "\"", "Content-Transfer-Encoding", this.f8120b), this.f8119a.a(value));
            }
        }
    }

    static final class a<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d.e<T, aa> f8108a;

        a(d.e<T, aa> eVar) {
            this.f8108a = eVar;
        }

        @Override // d.i
        void a(d.k kVar, T t) {
            if (t == null) {
                throw new IllegalArgumentException("Body parameter value must not be null.");
            }
            try {
                kVar.a(this.f8108a.a(t));
            } catch (IOException e) {
                throw new RuntimeException("Unable to convert " + t + " to RequestBody", e);
            }
        }
    }
}
