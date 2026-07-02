package com.google.ads.interactivemedia.v3.a;

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

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final j f2744a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final r f2745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ThreadLocal<Map<com.google.ads.interactivemedia.v3.a.c.a<?>, a<?>>> f2746c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<com.google.ads.interactivemedia.v3.a.c.a<?>, w<?>> f2747d;
    private final List<x> e;
    private final com.google.ads.interactivemedia.v3.a.b.c f;
    private final boolean g;
    private final boolean h;
    private final boolean i;
    private final boolean j;

    public f() {
        this(com.google.ads.interactivemedia.v3.a.b.d.f2689a, d.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, u.DEFAULT, Collections.emptyList());
    }

    f(com.google.ads.interactivemedia.v3.a.b.d dVar, e eVar, Map<Type, h<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, u uVar, List<x> list) {
        this.f2746c = new ThreadLocal<>();
        this.f2747d = Collections.synchronizedMap(new HashMap());
        this.f2744a = new j() { // from class: com.google.ads.interactivemedia.v3.a.f.1
        };
        this.f2745b = new r() { // from class: com.google.ads.interactivemedia.v3.a.f.2
        };
        this.f = new com.google.ads.interactivemedia.v3.a.b.c(map);
        this.g = z;
        this.i = z3;
        this.h = z4;
        this.j = z5;
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.Q);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.h.f2620a);
        arrayList.add(dVar);
        arrayList.addAll(list);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.x);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.m);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.g);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.i);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.k);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.a(Long.TYPE, Long.class, a(uVar)));
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.a(Double.TYPE, Double.class, a(z6)));
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.a(Float.TYPE, Float.class, b(z6)));
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.r);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.t);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.z);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.B);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.a(BigDecimal.class, com.google.ads.interactivemedia.v3.a.b.a.m.v));
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.a(BigInteger.class, com.google.ads.interactivemedia.v3.a.b.a.m.w));
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.D);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.F);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.J);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.O);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.H);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.f2642d);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.c.f2602a);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.M);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.k.f2634a);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.j.f2632a);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.K);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.a.f2596a);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.f2640b);
        arrayList.add(new com.google.ads.interactivemedia.v3.a.b.a.b(this.f));
        arrayList.add(new com.google.ads.interactivemedia.v3.a.b.a.g(this.f, z2));
        arrayList.add(new com.google.ads.interactivemedia.v3.a.b.a.d(this.f));
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.m.R);
        arrayList.add(new com.google.ads.interactivemedia.v3.a.b.a.i(this.f, eVar, dVar));
        this.e = Collections.unmodifiableList(arrayList);
    }

    private w<Number> a(boolean z) {
        return z ? com.google.ads.interactivemedia.v3.a.b.a.m.p : new w<Number>() { // from class: com.google.ads.interactivemedia.v3.a.f.3
            @Override // com.google.ads.interactivemedia.v3.a.w
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Double read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
                if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                    return Double.valueOf(aVar.k());
                }
                aVar.j();
                return null;
            }

            @Override // com.google.ads.interactivemedia.v3.a.w
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.f();
                    return;
                }
                f.this.a(number.doubleValue());
                cVar.a(number);
            }
        };
    }

    private w<Number> b(boolean z) {
        return z ? com.google.ads.interactivemedia.v3.a.b.a.m.o : new w<Number>() { // from class: com.google.ads.interactivemedia.v3.a.f.4
            @Override // com.google.ads.interactivemedia.v3.a.w
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Float read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
                if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                    return Float.valueOf((float) aVar.k());
                }
                aVar.j();
                return null;
            }

            @Override // com.google.ads.interactivemedia.v3.a.w
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.f();
                    return;
                }
                f.this.a(number.floatValue());
                cVar.a(number);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(new StringBuilder(168).append(d2).append(" is not a valid double value as per JSON specification. To override this").append(" behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.").toString());
        }
    }

    private w<Number> a(u uVar) {
        return uVar == u.DEFAULT ? com.google.ads.interactivemedia.v3.a.b.a.m.n : new w<Number>() { // from class: com.google.ads.interactivemedia.v3.a.f.5
            @Override // com.google.ads.interactivemedia.v3.a.w
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
                if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                    return Long.valueOf(aVar.l());
                }
                aVar.j();
                return null;
            }

            @Override // com.google.ads.interactivemedia.v3.a.w
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.f();
                } else {
                    cVar.b(number.toString());
                }
            }
        };
    }

    public <T> w<T> a(com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
        Map map;
        w<T> wVarA = (w) this.f2747d.get(aVar);
        if (wVarA == null) {
            Map<com.google.ads.interactivemedia.v3.a.c.a<?>, a<?>> map2 = this.f2746c.get();
            boolean z = false;
            if (map2 == null) {
                HashMap map3 = new HashMap();
                this.f2746c.set(map3);
                map = map3;
                z = true;
            } else {
                map = map2;
            }
            wVarA = (a) map.get(aVar);
            if (wVarA == null) {
                try {
                    a aVar2 = new a();
                    map.put(aVar, aVar2);
                    Iterator<x> it = this.e.iterator();
                    while (it.hasNext()) {
                        wVarA = it.next().a(this, aVar);
                        if (wVarA != null) {
                            aVar2.a(wVarA);
                            this.f2747d.put(aVar, wVarA);
                            map.remove(aVar);
                            if (z) {
                                this.f2746c.remove();
                            }
                        }
                    }
                    String strValueOf = String.valueOf(aVar);
                    throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 19).append("GSON cannot handle ").append(strValueOf).toString());
                } catch (Throwable th) {
                    map.remove(aVar);
                    if (z) {
                        this.f2746c.remove();
                    }
                    throw th;
                }
            }
        }
        return wVarA;
    }

    public <T> w<T> a(x xVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
        boolean z = this.e.contains(xVar) ? false : true;
        boolean z2 = z;
        for (x xVar2 : this.e) {
            if (!z2) {
                if (xVar2 == xVar) {
                    z2 = true;
                }
            } else {
                w<T> wVarA = xVar2.a(this, aVar);
                if (wVarA != null) {
                    return wVarA;
                }
            }
        }
        String strValueOf = String.valueOf(aVar);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 22).append("GSON cannot serialize ").append(strValueOf).toString());
    }

    public <T> w<T> a(Class<T> cls) {
        return a((com.google.ads.interactivemedia.v3.a.c.a) com.google.ads.interactivemedia.v3.a.c.a.b(cls));
    }

    public String a(Object obj) {
        return obj == null ? a((l) n.f2759a) : a(obj, obj.getClass());
    }

    public String a(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public void a(Object obj, Type type, Appendable appendable) throws m {
        try {
            a(obj, type, a(com.google.ads.interactivemedia.v3.a.b.j.a(appendable)));
        } catch (IOException e) {
            throw new m(e);
        }
    }

    public void a(Object obj, Type type, com.google.ads.interactivemedia.v3.a.d.c cVar) throws m {
        w wVarA = a((com.google.ads.interactivemedia.v3.a.c.a) com.google.ads.interactivemedia.v3.a.c.a.a(type));
        boolean zG = cVar.g();
        cVar.b(true);
        boolean zH = cVar.h();
        cVar.c(this.h);
        boolean zI = cVar.i();
        cVar.d(this.g);
        try {
            try {
                wVarA.write(cVar, obj);
            } catch (IOException e) {
                throw new m(e);
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
            a(lVar, a(com.google.ads.interactivemedia.v3.a.b.j.a(appendable)));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public com.google.ads.interactivemedia.v3.a.d.c a(Writer writer) throws IOException {
        if (this.i) {
            writer.write(")]}'\n");
        }
        com.google.ads.interactivemedia.v3.a.d.c cVar = new com.google.ads.interactivemedia.v3.a.d.c(writer);
        if (this.j) {
            cVar.c("  ");
        }
        cVar.d(this.g);
        return cVar;
    }

    public void a(l lVar, com.google.ads.interactivemedia.v3.a.d.c cVar) throws m {
        boolean zG = cVar.g();
        cVar.b(true);
        boolean zH = cVar.h();
        cVar.c(this.h);
        boolean zI = cVar.i();
        cVar.d(this.g);
        try {
            try {
                com.google.ads.interactivemedia.v3.a.b.j.a(lVar, cVar);
            } catch (IOException e) {
                throw new m(e);
            }
        } finally {
            cVar.b(zG);
            cVar.c(zH);
            cVar.d(zI);
        }
    }

    public <T> T a(String str, Class<T> cls) throws t {
        return (T) com.google.ads.interactivemedia.v3.a.b.i.a((Class) cls).cast(a(str, (Type) cls));
    }

    public <T> T a(String str, Type type) throws t {
        if (str == null) {
            return null;
        }
        return (T) a((Reader) new StringReader(str), type);
    }

    public <T> T a(Reader reader, Type type) throws m, t {
        com.google.ads.interactivemedia.v3.a.d.a aVar = new com.google.ads.interactivemedia.v3.a.d.a(reader);
        T t = (T) a(aVar, type);
        a(t, aVar);
        return t;
    }

    private static void a(Object obj, com.google.ads.interactivemedia.v3.a.d.a aVar) {
        if (obj != null) {
            try {
                if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.END_DOCUMENT) {
                    throw new m("JSON document was not fully consumed.");
                }
            } catch (com.google.ads.interactivemedia.v3.a.d.d e) {
                throw new t(e);
            } catch (IOException e2) {
                throw new m(e2);
            }
        }
    }

    public <T> T a(com.google.ads.interactivemedia.v3.a.d.a aVar, Type type) throws m, t {
        boolean z = true;
        boolean zP = aVar.p();
        aVar.a(true);
        try {
            try {
                aVar.f();
                z = false;
                T t = a((com.google.ads.interactivemedia.v3.a.c.a) com.google.ads.interactivemedia.v3.a.c.a.a(type)).read(aVar);
                aVar.a(zP);
                return t;
            } catch (EOFException e) {
                if (!z) {
                    throw new t(e);
                }
                aVar.a(zP);
                return null;
            } catch (IOException e2) {
                throw new t(e2);
            } catch (IllegalStateException e3) {
                throw new t(e3);
            }
        } catch (Throwable th) {
            aVar.a(zP);
            throw th;
        }
    }

    static class a<T> extends w<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private w<T> f2753a;

        a() {
        }

        public void a(w<T> wVar) {
            if (this.f2753a != null) {
                throw new AssertionError();
            }
            this.f2753a = wVar;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        public T read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (this.f2753a == null) {
                throw new IllegalStateException();
            }
            return this.f2753a.read(aVar);
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, T t) throws IOException {
            if (this.f2753a == null) {
                throw new IllegalStateException();
            }
            this.f2753a.write(cVar, t);
        }
    }

    public String toString() {
        return "{serializeNulls:" + this.g + "factories:" + this.e + ",instanceCreators:" + this.f + "}";
    }
}
