package e;

import c.ab;
import c.s;
import c.w;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class i<T> {
    abstract void a(e.k kVar, T t) throws IOException;

    i() {
    }

    final i<Iterable<T>> a() {
        return new i<Iterable<T>>() { // from class: e.i.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // e.i
            public void a(e.k kVar, Iterable<T> iterable) throws IOException {
                if (iterable == null) {
                    return;
                }
                Iterator<T> it = iterable.iterator();
                while (it.hasNext()) {
                    i.this.a(kVar, it.next());
                }
            }
        };
    }

    final i<Object> b() {
        return new i<Object>() { // from class: e.i.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // e.i
            void a(e.k kVar, Object obj) throws IOException {
                if (obj == null) {
                    return;
                }
                int length = Array.getLength(obj);
                for (int i = 0; i < length; i++) {
                    i.this.a(kVar, Array.get(obj, i));
                }
            }
        };
    }

    static final class l extends i<Object> {
        l() {
        }

        @Override // e.i
        void a(e.k kVar, Object obj) {
            kVar.a(obj);
        }
    }

    static final class d<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f7861a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e.e<T, String> f7862b;

        d(String str, e.e<T, String> eVar) {
            this.f7861a = (String) o.a(str, "name == null");
            this.f7862b = eVar;
        }

        @Override // e.i
        void a(e.k kVar, T t) throws IOException {
            if (t == null) {
                return;
            }
            kVar.a(this.f7861a, this.f7862b.a(t));
        }
    }

    static final class h<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f7868a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e.e<T, String> f7869b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f7870c;

        h(String str, e.e<T, String> eVar, boolean z) {
            this.f7868a = (String) o.a(str, "name == null");
            this.f7869b = eVar;
            this.f7870c = z;
        }

        @Override // e.i
        void a(e.k kVar, T t) throws IOException {
            if (t == null) {
                throw new IllegalArgumentException("Path parameter \"" + this.f7868a + "\" value must not be null.");
            }
            kVar.a(this.f7868a, this.f7869b.a(t), this.f7870c);
        }
    }

    /* JADX INFO: renamed from: e.i$i, reason: collision with other inner class name */
    static final class C0189i<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f7871a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e.e<T, String> f7872b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f7873c;

        C0189i(String str, e.e<T, String> eVar, boolean z) {
            this.f7871a = (String) o.a(str, "name == null");
            this.f7872b = eVar;
            this.f7873c = z;
        }

        @Override // e.i
        void a(e.k kVar, T t) throws IOException {
            if (t == null) {
                return;
            }
            kVar.b(this.f7871a, this.f7872b.a(t), this.f7873c);
        }
    }

    static final class j<T> extends i<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e.e<T, String> f7874a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f7875b;

        j(e.e<T, String> eVar, boolean z) {
            this.f7874a = eVar;
            this.f7875b = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // e.i
        public void a(e.k kVar, Map<String, T> map) throws IOException {
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
                kVar.b(key, this.f7874a.a(value), this.f7875b);
            }
        }
    }

    static final class e<T> extends i<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e.e<T, String> f7863a;

        e(e.e<T, String> eVar) {
            this.f7863a = eVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // e.i
        public void a(e.k kVar, Map<String, T> map) throws IOException {
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
                kVar.a(key, this.f7863a.a(value));
            }
        }
    }

    static final class b<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f7856a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e.e<T, String> f7857b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f7858c;

        b(String str, e.e<T, String> eVar, boolean z) {
            this.f7856a = (String) o.a(str, "name == null");
            this.f7857b = eVar;
            this.f7858c = z;
        }

        @Override // e.i
        void a(e.k kVar, T t) throws IOException {
            if (t == null) {
                return;
            }
            kVar.c(this.f7856a, this.f7857b.a(t), this.f7858c);
        }
    }

    static final class c<T> extends i<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e.e<T, String> f7859a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f7860b;

        c(e.e<T, String> eVar, boolean z) {
            this.f7859a = eVar;
            this.f7860b = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // e.i
        public void a(e.k kVar, Map<String, T> map) throws IOException {
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
                kVar.c(key, this.f7859a.a(value), this.f7860b);
            }
        }
    }

    static final class f<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final s f7864a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e.e<T, ab> f7865b;

        f(s sVar, e.e<T, ab> eVar) {
            this.f7864a = sVar;
            this.f7865b = eVar;
        }

        @Override // e.i
        void a(e.k kVar, T t) {
            if (t == null) {
                return;
            }
            try {
                kVar.a(this.f7864a, this.f7865b.a(t));
            } catch (IOException e2) {
                throw new RuntimeException("Unable to convert " + t + " to RequestBody", e2);
            }
        }
    }

    static final class k extends i<w.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final k f7876a = new k();

        private k() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // e.i
        public void a(e.k kVar, w.b bVar) throws IOException {
            if (bVar != null) {
                kVar.a(bVar);
            }
        }
    }

    static final class g<T> extends i<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e.e<T, ab> f7866a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f7867b;

        g(e.e<T, ab> eVar, String str) {
            this.f7866a = eVar;
            this.f7867b = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // e.i
        public void a(e.k kVar, Map<String, T> map) throws IOException {
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
                kVar.a(s.a("Content-Disposition", "form-data; name=\"" + key + "\"", "Content-Transfer-Encoding", this.f7867b), this.f7866a.a(value));
            }
        }
    }

    static final class a<T> extends i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e.e<T, ab> f7855a;

        a(e.e<T, ab> eVar) {
            this.f7855a = eVar;
        }

        @Override // e.i
        void a(e.k kVar, T t) {
            if (t == null) {
                throw new IllegalArgumentException("Body parameter value must not be null.");
            }
            try {
                kVar.a(this.f7855a.a(t));
            } catch (IOException e2) {
                throw new RuntimeException("Unable to convert " + t + " to RequestBody", e2);
            }
        }
    }
}
