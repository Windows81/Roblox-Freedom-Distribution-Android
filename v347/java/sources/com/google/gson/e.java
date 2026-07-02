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

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.google.gson.b.a<?> f6179a = new com.google.gson.b.a<Object>() { // from class: com.google.gson.e.1
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadLocal<Map<com.google.gson.b.a<?>, a<?>>> f6180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<com.google.gson.b.a<?>, v<?>> f6181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<w> f6182d;
    private final com.google.gson.internal.c e;
    private final Excluder f;
    private final d g;
    private final boolean h;
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    private final JsonAdapterAnnotationTypeAdapterFactory m;

    public e() {
        this(Excluder.f6193a, c.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, u.DEFAULT, Collections.emptyList());
    }

    e(Excluder excluder, d dVar, Map<Type, g<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, u uVar, List<w> list) {
        this.f6180b = new ThreadLocal<>();
        this.f6181c = new ConcurrentHashMap();
        this.e = new com.google.gson.internal.c(map);
        this.f = excluder;
        this.g = dVar;
        this.h = z;
        this.j = z3;
        this.i = z4;
        this.k = z5;
        this.l = z6;
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.google.gson.internal.bind.i.Y);
        arrayList.add(com.google.gson.internal.bind.e.f6267a);
        arrayList.add(excluder);
        arrayList.addAll(list);
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
        arrayList.add(com.google.gson.internal.bind.i.f6280d);
        arrayList.add(com.google.gson.internal.bind.b.f6257a);
        arrayList.add(com.google.gson.internal.bind.i.U);
        arrayList.add(com.google.gson.internal.bind.g.f6272a);
        arrayList.add(com.google.gson.internal.bind.f.f6270a);
        arrayList.add(com.google.gson.internal.bind.i.S);
        arrayList.add(com.google.gson.internal.bind.a.f6253a);
        arrayList.add(com.google.gson.internal.bind.i.f6278b);
        arrayList.add(new CollectionTypeAdapterFactory(this.e));
        arrayList.add(new MapTypeAdapterFactory(this.e, z2));
        this.m = new JsonAdapterAnnotationTypeAdapterFactory(this.e);
        arrayList.add(this.m);
        arrayList.add(com.google.gson.internal.bind.i.Z);
        arrayList.add(new ReflectiveTypeAdapterFactory(this.e, dVar, excluder, this.m));
        this.f6182d = Collections.unmodifiableList(arrayList);
    }

    private v<Number> a(boolean z) {
        return z ? com.google.gson.internal.bind.i.v : new v<Number>() { // from class: com.google.gson.e.2
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Double b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() != com.google.gson.c.b.NULL) {
                    return Double.valueOf(aVar.k());
                }
                aVar.j();
                return null;
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.f();
                } else {
                    e.a(number.doubleValue());
                    cVar.a(number);
                }
            }
        };
    }

    private v<Number> b(boolean z) {
        return z ? com.google.gson.internal.bind.i.u : new v<Number>() { // from class: com.google.gson.e.3
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Float b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() != com.google.gson.c.b.NULL) {
                    return Float.valueOf((float) aVar.k());
                }
                aVar.j();
                return null;
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.f();
                } else {
                    e.a(number.floatValue());
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
        return uVar == u.DEFAULT ? com.google.gson.internal.bind.i.t : new v<Number>() { // from class: com.google.gson.e.4
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() != com.google.gson.c.b.NULL) {
                    return Long.valueOf(aVar.l());
                }
                aVar.j();
                return null;
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
        return new v<AtomicLong>() { // from class: com.google.gson.e.5
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
        return new v<AtomicLongArray>() { // from class: com.google.gson.e.6
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
        Map map;
        v<T> vVarA = (v) this.f6181c.get(aVar == null ? f6179a : aVar);
        if (vVarA == null) {
            Map<com.google.gson.b.a<?>, a<?>> map2 = this.f6180b.get();
            boolean z = false;
            if (map2 == null) {
                HashMap map3 = new HashMap();
                this.f6180b.set(map3);
                map = map3;
                z = true;
            } else {
                map = map2;
            }
            vVarA = (a) map.get(aVar);
            if (vVarA == null) {
                try {
                    a aVar2 = new a();
                    map.put(aVar, aVar2);
                    Iterator<w> it = this.f6182d.iterator();
                    while (it.hasNext()) {
                        vVarA = it.next().a(this, aVar);
                        if (vVarA != null) {
                            aVar2.a((v) vVarA);
                            this.f6181c.put(aVar, vVarA);
                            map.remove(aVar);
                            if (z) {
                                this.f6180b.remove();
                            }
                        }
                    }
                    throw new IllegalArgumentException("GSON cannot handle " + aVar);
                } catch (Throwable th) {
                    map.remove(aVar);
                    if (z) {
                        this.f6180b.remove();
                    }
                    throw th;
                }
            }
        }
        return vVarA;
    }

    public <T> v<T> a(w wVar, com.google.gson.b.a<T> aVar) {
        if (!this.f6182d.contains(wVar)) {
            wVar = this.m;
        }
        boolean z = false;
        for (w wVar2 : this.f6182d) {
            if (!z) {
                if (wVar2 == wVar) {
                    z = true;
                }
            } else {
                v<T> vVarA = wVar2.a(this, aVar);
                if (vVarA != null) {
                    return vVarA;
                }
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public <T> v<T> a(Class<T> cls) {
        return a((com.google.gson.b.a) com.google.gson.b.a.b(cls));
    }

    public k a(Object obj) {
        return obj == null ? m.f6335a : a(obj, obj.getClass());
    }

    public k a(Object obj, Type type) {
        com.google.gson.internal.bind.d dVar = new com.google.gson.internal.bind.d();
        a(obj, type, dVar);
        return dVar.a();
    }

    public String b(Object obj) {
        return obj == null ? a((k) m.f6335a) : b(obj, obj.getClass());
    }

    public String b(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public void a(Object obj, Type type, Appendable appendable) throws l {
        try {
            a(obj, type, a(com.google.gson.internal.i.a(appendable)));
        } catch (IOException e) {
            throw new l(e);
        }
    }

    public void a(Object obj, Type type, com.google.gson.c.c cVar) throws l {
        v vVarA = a((com.google.gson.b.a) com.google.gson.b.a.a(type));
        boolean zG = cVar.g();
        cVar.b(true);
        boolean zH = cVar.h();
        cVar.c(this.i);
        boolean zI = cVar.i();
        cVar.d(this.h);
        try {
            try {
                vVarA.a(cVar, obj);
            } catch (IOException e) {
                throw new l(e);
            }
        } finally {
            cVar.b(zG);
            cVar.c(zH);
            cVar.d(zI);
        }
    }

    public String a(k kVar) {
        StringWriter stringWriter = new StringWriter();
        a(kVar, stringWriter);
        return stringWriter.toString();
    }

    public void a(k kVar, Appendable appendable) throws l {
        try {
            a(kVar, a(com.google.gson.internal.i.a(appendable)));
        } catch (IOException e) {
            throw new l(e);
        }
    }

    public com.google.gson.c.c a(Writer writer) throws IOException {
        if (this.j) {
            writer.write(")]}'\n");
        }
        com.google.gson.c.c cVar = new com.google.gson.c.c(writer);
        if (this.k) {
            cVar.c("  ");
        }
        cVar.d(this.h);
        return cVar;
    }

    public com.google.gson.c.a a(Reader reader) {
        com.google.gson.c.a aVar = new com.google.gson.c.a(reader);
        aVar.a(this.l);
        return aVar;
    }

    public void a(k kVar, com.google.gson.c.c cVar) throws l {
        boolean zG = cVar.g();
        cVar.b(true);
        boolean zH = cVar.h();
        cVar.c(this.i);
        boolean zI = cVar.i();
        cVar.d(this.h);
        try {
            try {
                com.google.gson.internal.i.a(kVar, cVar);
            } catch (IOException e) {
                throw new l(e);
            }
        } finally {
            cVar.b(zG);
            cVar.c(zH);
            cVar.d(zI);
        }
    }

    public <T> T a(String str, Class<T> cls) throws t {
        return (T) com.google.gson.internal.h.a((Class) cls).cast(a(str, (Type) cls));
    }

    public <T> T a(String str, Type type) throws t {
        if (str == null) {
            return null;
        }
        return (T) a((Reader) new StringReader(str), type);
    }

    public <T> T a(Reader reader, Type type) throws t, l {
        com.google.gson.c.a aVarA = a(reader);
        T t = (T) a(aVarA, type);
        a(t, aVarA);
        return t;
    }

    private static void a(Object obj, com.google.gson.c.a aVar) {
        if (obj != null) {
            try {
                if (aVar.f() != com.google.gson.c.b.END_DOCUMENT) {
                    throw new l("JSON document was not fully consumed.");
                }
            } catch (com.google.gson.c.d e) {
                throw new t(e);
            } catch (IOException e2) {
                throw new l(e2);
            }
        }
    }

    public <T> T a(com.google.gson.c.a aVar, Type type) throws t, l {
        boolean z = true;
        boolean zQ = aVar.q();
        aVar.a(true);
        try {
            try {
                aVar.f();
                z = false;
                T tB = a((com.google.gson.b.a) com.google.gson.b.a.a(type)).b(aVar);
                aVar.a(zQ);
                return tB;
            } catch (EOFException e) {
                if (!z) {
                    throw new t(e);
                }
                aVar.a(zQ);
                return null;
            } catch (IOException e2) {
                throw new t(e2);
            } catch (IllegalStateException e3) {
                throw new t(e3);
            }
        } catch (Throwable th) {
            aVar.a(zQ);
            throw th;
        }
    }

    public <T> T a(k kVar, Class<T> cls) throws t {
        return (T) com.google.gson.internal.h.a((Class) cls).cast(a(kVar, (Type) cls));
    }

    public <T> T a(k kVar, Type type) throws t {
        if (kVar == null) {
            return null;
        }
        return (T) a((com.google.gson.c.a) new com.google.gson.internal.bind.c(kVar), type);
    }

    static class a<T> extends v<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private v<T> f6187a;

        a() {
        }

        public void a(v<T> vVar) {
            if (this.f6187a != null) {
                throw new AssertionError();
            }
            this.f6187a = vVar;
        }

        @Override // com.google.gson.v
        public T b(com.google.gson.c.a aVar) throws IOException {
            if (this.f6187a == null) {
                throw new IllegalStateException();
            }
            return this.f6187a.b(aVar);
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, T t) throws IOException {
            if (this.f6187a == null) {
                throw new IllegalStateException();
            }
            this.f6187a.a(cVar, t);
        }
    }

    public String toString() {
        return "{serializeNulls:" + this.h + "factories:" + this.f6182d + ",instanceCreators:" + this.e + "}";
    }
}
