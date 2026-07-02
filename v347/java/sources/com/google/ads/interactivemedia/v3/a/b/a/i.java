package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.t;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class i implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.ads.interactivemedia.v3.a.b.c f2623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.ads.interactivemedia.v3.a.e f2624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.ads.interactivemedia.v3.a.b.d f2625c;

    public i(com.google.ads.interactivemedia.v3.a.b.c cVar, com.google.ads.interactivemedia.v3.a.e eVar, com.google.ads.interactivemedia.v3.a.b.d dVar) {
        this.f2623a = cVar;
        this.f2624b = eVar;
        this.f2625c = dVar;
    }

    public boolean a(Field field, boolean z) {
        return a(field, z, this.f2625c);
    }

    static boolean a(Field field, boolean z, com.google.ads.interactivemedia.v3.a.b.d dVar) {
        return (dVar.a(field.getType(), z) || dVar.a(field, z)) ? false : true;
    }

    private List<String> a(Field field) {
        return a(this.f2624b, field);
    }

    static List<String> a(com.google.ads.interactivemedia.v3.a.e eVar, Field field) {
        com.google.ads.interactivemedia.v3.a.a.c cVar = (com.google.ads.interactivemedia.v3.a.a.c) field.getAnnotation(com.google.ads.interactivemedia.v3.a.a.c.class);
        LinkedList linkedList = new LinkedList();
        if (cVar == null) {
            linkedList.add(eVar.a(field));
        } else {
            linkedList.add(cVar.a());
            String[] strArrB = cVar.b();
            for (String str : strArrB) {
                linkedList.add(str);
            }
        }
        return linkedList;
    }

    @Override // com.google.ads.interactivemedia.v3.a.x
    public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
        Class<? super T> clsA = aVar.a();
        if (Object.class.isAssignableFrom(clsA)) {
            return new a(this.f2623a.a(aVar), a(fVar, (com.google.ads.interactivemedia.v3.a.c.a<?>) aVar, (Class<?>) clsA));
        }
        return null;
    }

    private b a(final com.google.ads.interactivemedia.v3.a.f fVar, final Field field, String str, final com.google.ads.interactivemedia.v3.a.c.a<?> aVar, boolean z, boolean z2) {
        final boolean zA = com.google.ads.interactivemedia.v3.a.b.i.a((Type) aVar.a());
        return new b(str, z, z2) { // from class: com.google.ads.interactivemedia.v3.a.b.a.i.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final w<?> f2626a;

            {
                this.f2626a = i.this.a(fVar, field, (com.google.ads.interactivemedia.v3.a.c.a<?>) aVar);
            }

            @Override // com.google.ads.interactivemedia.v3.a.b.a.i.b
            void a(com.google.ads.interactivemedia.v3.a.d.c cVar, Object obj) throws IllegalAccessException, IOException {
                new l(fVar, this.f2626a, aVar.b()).write(cVar, field.get(obj));
            }

            @Override // com.google.ads.interactivemedia.v3.a.b.a.i.b
            void a(com.google.ads.interactivemedia.v3.a.d.a aVar2, Object obj) throws IllegalAccessException, IOException {
                Object obj2 = this.f2626a.read(aVar2);
                if (obj2 != null || !zA) {
                    field.set(obj, obj2);
                }
            }

            @Override // com.google.ads.interactivemedia.v3.a.b.a.i.b
            public boolean a(Object obj) throws IllegalAccessException, IOException {
                return this.h && field.get(obj) != obj;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public w<?> a(com.google.ads.interactivemedia.v3.a.f fVar, Field field, com.google.ads.interactivemedia.v3.a.c.a<?> aVar) {
        w<?> wVarA;
        com.google.ads.interactivemedia.v3.a.a.b bVar = (com.google.ads.interactivemedia.v3.a.a.b) field.getAnnotation(com.google.ads.interactivemedia.v3.a.a.b.class);
        return (bVar == null || (wVarA = d.a(this.f2623a, fVar, aVar, bVar)) == null) ? fVar.a((com.google.ads.interactivemedia.v3.a.c.a) aVar) : wVarA;
    }

    private Map<String, b> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<?> aVar, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type typeB = aVar.b();
        while (cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                boolean zA = a(field, true);
                boolean zA2 = a(field, false);
                if (zA || zA2) {
                    field.setAccessible(true);
                    Type typeA = com.google.ads.interactivemedia.v3.a.b.b.a(aVar.b(), cls, field.getGenericType());
                    List<String> listA = a(field);
                    b bVar = null;
                    int i = 0;
                    while (i < listA.size()) {
                        String str = listA.get(i);
                        if (i != 0) {
                            zA = false;
                        }
                        b bVar2 = (b) linkedHashMap.put(str, a(fVar, field, str, com.google.ads.interactivemedia.v3.a.c.a.a(typeA), zA, zA2));
                        if (bVar != null) {
                            bVar2 = bVar;
                        }
                        i++;
                        bVar = bVar2;
                    }
                    if (bVar != null) {
                        String strValueOf = String.valueOf(typeB);
                        String str2 = bVar.g;
                        throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 37 + String.valueOf(str2).length()).append(strValueOf).append(" declares multiple JSON fields named ").append(str2).toString());
                    }
                }
            }
            aVar = com.google.ads.interactivemedia.v3.a.c.a.a(com.google.ads.interactivemedia.v3.a.b.b.a(aVar.b(), cls, cls.getGenericSuperclass()));
            cls = aVar.a();
        }
        return linkedHashMap;
    }

    static abstract class b {
        final String g;
        final boolean h;
        final boolean i;

        abstract void a(com.google.ads.interactivemedia.v3.a.d.a aVar, Object obj) throws IllegalAccessException, IOException;

        abstract void a(com.google.ads.interactivemedia.v3.a.d.c cVar, Object obj) throws IllegalAccessException, IOException;

        abstract boolean a(Object obj) throws IllegalAccessException, IOException;

        protected b(String str, boolean z, boolean z2) {
            this.g = str;
            this.h = z;
            this.i = z2;
        }
    }

    public static final class a<T> extends w<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.ads.interactivemedia.v3.a.b.h<T> f2630a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<String, b> f2631b;

        private a(com.google.ads.interactivemedia.v3.a.b.h<T> hVar, Map<String, b> map) {
            this.f2630a = hVar;
            this.f2631b = map;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        public T read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            T tA = this.f2630a.a();
            try {
                aVar.c();
                while (aVar.e()) {
                    b bVar = this.f2631b.get(aVar.g());
                    if (bVar == null || !bVar.i) {
                        aVar.n();
                    } else {
                        bVar.a(aVar, tA);
                    }
                }
                aVar.d();
                return tA;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new t(e2);
            }
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, T t) throws IOException {
            if (t == null) {
                cVar.f();
                return;
            }
            cVar.d();
            try {
                for (b bVar : this.f2631b.values()) {
                    if (bVar.a(t)) {
                        cVar.a(bVar.g);
                        bVar.a(cVar, t);
                    }
                }
                cVar.e();
            } catch (IllegalAccessException e) {
                throw new AssertionError();
            }
        }
    }
}
