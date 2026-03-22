package com.google.gson;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class f {
    private static final com.google.gson.b.a<?> r = com.google.gson.b.a.b(Object.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List<w> f5332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Excluder f5333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final e f5334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Map<Type, h<?>> f5335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f5336e;
    final boolean f;
    final boolean g;
    final boolean h;
    final boolean i;
    final boolean j;
    final boolean k;
    final String l;
    final int m;
    final int n;
    final u o;
    final List<w> p;
    final List<w> q;
    private final ThreadLocal<Map<com.google.gson.b.a<?>, a<?>>> s;
    private final Map<com.google.gson.b.a<?>, v<?>> t;
    private final com.google.gson.internal.c u;
    private final JsonAdapterAnnotationTypeAdapterFactory v;

    public f() {
        this(Excluder.f5348a, d.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, u.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    f(Excluder excluder, e eVar, Map<Type, h<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, u uVar, String str, int i, int i2, List<w> list, List<w> list2, List<w> list3) {
        this.s = new ThreadLocal<>();
        this.t = new ConcurrentHashMap();
        this.f5333b = excluder;
        this.f5334c = eVar;
        this.f5335d = map;
        this.u = new com.google.gson.internal.c(map);
        this.f5336e = z;
        this.f = z2;
        this.g = z3;
        this.h = z4;
        this.i = z5;
        this.j = z6;
        this.k = z7;
        this.o = uVar;
        this.l = str;
        this.m = i;
        this.n = i2;
        this.p = list;
        this.q = list2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.google.gson.internal.bind.i.Y);
        arrayList.add(com.google.gson.internal.bind.e.f5433a);
        arrayList.add(excluder);
        arrayList.addAll(list3);
        arrayList.add(com.google.gson.internal.bind.i.D);
        arrayList.add(com.google.gson.internal.bind.i.m);
        arrayList.add(com.google.gson.internal.bind.i.g);
        arrayList.add(com.google.gson.internal.bind.i.i);
        arrayList.add(com.google.gson.internal.bind.i.k);
        v<Number> vVarA = a(uVar);
        arrayList.add(com.google.gson.internal.bind.i.a(Long.TYPE, Long.class, vVarA));
        arrayList.add(com.google.gson.internal.bind.i.a(Double.TYPE, Double.class, a(z7)));
        arrayList.add(com.google.gson.internal.bind.i.a(Float.TYPE, Float.class, b(z7)));
        arrayList.add(com.google.gson.internal.bind.i.x);
        arrayList.add(com.google.gson.internal.bind.i.o);
        arrayList.add(com.google.gson.internal.bind.i.q);
        arrayList.add(com.google.gson.internal.bind.i.a(AtomicLong.class, a(vVarA)));
        arrayList.add(com.google.gson.internal.bind.i.a(AtomicLongArray.class, b(vVarA)));
        arrayList.add(com.google.gson.internal.bind.i.s);
        arrayList.add(com.google.gson.internal.bind.i.z);
        arrayList.add(com.google.gson.internal.bind.i.F);
        arrayList.add(com.google.gson.internal.bind.i.H);
        arrayList.add(com.google.gson.internal.bind.i.a(BigDecimal.class, com.google.gson.internal.bind.i.B));
        arrayList.add(com.google.gson.internal.bind.i.a(BigInteger.class, com.google.gson.internal.bind.i.C));
        arrayList.add(com.google.gson.internal.bind.i.J);
        arrayList.add(com.google.gson.internal.bind.i.L);
        arrayList.add(com.google.gson.internal.bind.i.P);
        arrayList.add(com.google.gson.internal.bind.i.R);
        arrayList.add(com.google.gson.internal.bind.i.W);
        arrayList.add(com.google.gson.internal.bind.i.N);
        arrayList.add(com.google.gson.internal.bind.i.f5446d);
        arrayList.add(com.google.gson.internal.bind.b.f5422a);
        arrayList.add(com.google.gson.internal.bind.i.U);
        arrayList.add(com.google.gson.internal.bind.g.f5438a);
        arrayList.add(com.google.gson.internal.bind.f.f5436a);
        arrayList.add(com.google.gson.internal.bind.i.S);
        arrayList.add(com.google.gson.internal.bind.a.f5418a);
        arrayList.add(com.google.gson.internal.bind.i.f5444b);
        arrayList.add(new CollectionTypeAdapterFactory(this.u));
        arrayList.add(new MapTypeAdapterFactory(this.u, z2));
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(this.u);
        this.v = jsonAdapterAnnotationTypeAdapterFactory;
        arrayList.add(jsonAdapterAnnotationTypeAdapterFactory);
        arrayList.add(com.google.gson.internal.bind.i.Z);
        arrayList.add(new ReflectiveTypeAdapterFactory(this.u, eVar, excluder, this.v));
        this.f5332a = Collections.unmodifiableList(arrayList);
    }

    private v<Number> a(boolean z) {
        if (z) {
            return com.google.gson.internal.bind.i.v;
        }
        return new v<Number>() { // from class: com.google.gson.f.1
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Double b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                return Double.valueOf(aVar.k());
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.f();
                } else {
                    f.a(number.doubleValue());
                    cVar.a(number);
                }
            }
        };
    }

    private v<Number> b(boolean z) {
        if (z) {
            return com.google.gson.internal.bind.i.u;
        }
        return new v<Number>() { // from class: com.google.gson.f.2
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Float b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                return Float.valueOf((float) aVar.k());
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.f();
                } else {
                    f.a(number.floatValue());
                    cVar.a(number);
                }
            }
        };
    }

    static void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private static v<Number> a(u uVar) {
        if (uVar == u.DEFAULT) {
            return com.google.gson.internal.bind.i.t;
        }
        return new v<Number>() { // from class: com.google.gson.f.3
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                return Long.valueOf(aVar.l());
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.f();
                } else {
                    cVar.b(number.toString());
                }
            }
        };
    }

    private static v<AtomicLong> a(final v<Number> vVar) {
        return new v<AtomicLong>() { // from class: com.google.gson.f.4
            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, AtomicLong atomicLong) throws IOException {
                vVar.a(cVar, Long.valueOf(atomicLong.get()));
            }

            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public AtomicLong b(com.google.gson.c.a aVar) throws IOException {
                return new AtomicLong(((Number) vVar.b(aVar)).longValue());
            }
        }.a();
    }

    private static v<AtomicLongArray> b(final v<Number> vVar) {
        return new v<AtomicLongArray>() { // from class: com.google.gson.f.5
            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, AtomicLongArray atomicLongArray) throws IOException {
                cVar.b();
                int length = atomicLongArray.length();
                for (int i = 0; i < length; i++) {
                    vVar.a(cVar, Long.valueOf(atomicLongArray.get(i)));
                }
                cVar.c();
            }

            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public AtomicLongArray b(com.google.gson.c.a aVar) throws IOException {
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList.add(Long.valueOf(((Number) vVar.b(aVar)).longValue()));
                }
                aVar.b();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i = 0; i < size; i++) {
                    atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
                }
                return atomicLongArray;
            }
        }.a();
    }

    public <T> v<T> a(com.google.gson.b.a<T> aVar) {
        v<T> vVar = (v) this.t.get(aVar == null ? r : aVar);
        if (vVar != null) {
            return vVar;
        }
        Map<com.google.gson.b.a<?>, a<?>> map = this.s.get();
        boolean z = false;
        if (map == null) {
            map = new HashMap<>();
            this.s.set(map);
            z = true;
        }
        a<?> aVar2 = map.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            a<?> aVar3 = new a<>();
            map.put(aVar, aVar3);
            Iterator<w> it = this.f5332a.iterator();
            while (it.hasNext()) {
                v<T> vVarA = it.next().a(this, aVar);
                if (vVarA != null) {
                    aVar3.a((v<?>) vVarA);
                    this.t.put(aVar, vVarA);
                    return vVarA;
                }
            }
            throw new IllegalArgumentException("GSON (2.8.5) cannot handle " + aVar);
        } finally {
            map.remove(aVar);
            if (z) {
                this.s.remove();
            }
        }
    }

    public <T> v<T> a(w wVar, com.google.gson.b.a<T> aVar) {
        if (!this.f5332a.contains(wVar)) {
            wVar = this.v;
        }
        boolean z = false;
        for (w wVar2 : this.f5332a) {
            if (z) {
                v<T> vVarA = wVar2.a(this, aVar);
                if (vVarA != null) {
                    return vVarA;
                }
            } else if (wVar2 == wVar) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public <T> v<T> a(Class<T> cls) {
        return a((com.google.gson.b.a) com.google.gson.b.a.b(cls));
    }

    public String a(Object obj) {
        if (obj == null) {
            return a((l) n.f5507a);
        }
        return a(obj, obj.getClass());
    }

    public String a(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public void a(Object obj, Type type, Appendable appendable) throws m {
        try {
            a(obj, type, a(com.google.gson.internal.k.a(appendable)));
        } catch (IOException e2) {
            throw new m(e2);
        }
    }

    public void a(Object obj, Type type, com.google.gson.c.c cVar) throws m {
        v vVarA = a((com.google.gson.b.a) com.google.gson.b.a.a(type));
        boolean zG = cVar.g();
        cVar.b(true);
        boolean zH = cVar.h();
        cVar.c(this.h);
        boolean zI = cVar.i();
        cVar.d(this.f5336e);
        try {
            try {
                vVarA.a(cVar, obj);
            } catch (IOException e2) {
                throw new m(e2);
            } catch (AssertionError e3) {
                throw new AssertionError("AssertionError (GSON 2.8.5): " + e3.getMessage(), e3);
            }
        } finally {
            cVar.b(zG);
            cVar.c(zH);
            cVar.d(zI);
        }
    }

    public String a(l lVar) {
        StringWriter stringWriter = new StringWriter();
        a(lVar, stringWriter);
        return stringWriter.toString();
    }

    public void a(l lVar, Appendable appendable) throws m {
        try {
            a(lVar, a(com.google.gson.internal.k.a(appendable)));
        } catch (IOException e2) {
            throw new m(e2);
        }
    }

    public com.google.gson.c.c a(Writer writer) throws IOException {
        if (this.g) {
            writer.write(")]}'\n");
        }
        com.google.gson.c.c cVar = new com.google.gson.c.c(writer);
        if (this.i) {
            cVar.c("  ");
        }
        cVar.d(this.f5336e);
        return cVar;
    }

    public com.google.gson.c.a a(Reader reader) {
        com.google.gson.c.a aVar = new com.google.gson.c.a(reader);
        aVar.a(this.j);
        return aVar;
    }

    public void a(l lVar, com.google.gson.c.c cVar) throws m {
        boolean zG = cVar.g();
        cVar.b(true);
        boolean zH = cVar.h();
        cVar.c(this.h);
        boolean zI = cVar.i();
        cVar.d(this.f5336e);
        try {
            try {
                com.google.gson.internal.k.a(lVar, cVar);
            } catch (IOException e2) {
                throw new m(e2);
            } catch (AssertionError e3) {
                throw new AssertionError("AssertionError (GSON 2.8.5): " + e3.getMessage(), e3);
            }
        } finally {
            cVar.b(zG);
            cVar.c(zH);
            cVar.d(zI);
        }
    }

    public <T> T a(String str, Class<T> cls) throws t {
        return (T) com.google.gson.internal.j.a((Class) cls).cast(a(str, (Type) cls));
    }

    public <T> T a(String str, Type type) throws t {
        if (str == null) {
            return null;
        }
        return (T) a((Reader) new StringReader(str), type);
    }

    public <T> T a(Reader reader, Type type) throws t, m {
        com.google.gson.c.a aVarA = a(reader);
        T t = (T) a(aVarA, type);
        a(t, aVarA);
        return t;
    }

    private static void a(Object obj, com.google.gson.c.a aVar) {
        if (obj != null) {
            try {
                if (aVar.f() == com.google.gson.c.b.END_DOCUMENT) {
                } else {
                    throw new m("JSON document was not fully consumed.");
                }
            } catch (com.google.gson.c.d e2) {
                throw new t(e2);
            } catch (IOException e3) {
                throw new m(e3);
            }
        }
    }

    public <T> T a(com.google.gson.c.a aVar, Type type) throws t, m {
        boolean zQ = aVar.q();
        boolean z = true;
        aVar.a(true);
        try {
            try {
                try {
                    aVar.f();
                    z = false;
                    T tB = a((com.google.gson.b.a) com.google.gson.b.a.a(type)).b(aVar);
                    aVar.a(zQ);
                    return tB;
                } catch (IOException e2) {
                    throw new t(e2);
                } catch (IllegalStateException e3) {
                    throw new t(e3);
                }
            } catch (EOFException e4) {
                if (!z) {
                    throw new t(e4);
                }
                aVar.a(zQ);
                return null;
            } catch (AssertionError e5) {
                throw new AssertionError("AssertionError (GSON 2.8.5): " + e5.getMessage(), e5);
            }
        } catch (Throwable th) {
            aVar.a(zQ);
            throw th;
        }
    }

    static class a<T> extends v<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private v<T> f5341a;

        a() {
        }

        public void a(v<T> vVar) {
            if (this.f5341a != null) {
                throw new AssertionError();
            }
            this.f5341a = vVar;
        }

        @Override // com.google.gson.v
        public T b(com.google.gson.c.a aVar) throws IOException {
            v<T> vVar = this.f5341a;
            if (vVar == null) {
                throw new IllegalStateException();
            }
            return vVar.b(aVar);
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, T t) throws IOException {
            v<T> vVar = this.f5341a;
            if (vVar == null) {
                throw new IllegalStateException();
            }
            vVar.a(cVar, t);
        }
    }

    public String toString() {
        return "{serializeNulls:" + this.f5336e + ",factories:" + this.f5332a + ",instanceCreators:" + this.u + "}";
    }
}
