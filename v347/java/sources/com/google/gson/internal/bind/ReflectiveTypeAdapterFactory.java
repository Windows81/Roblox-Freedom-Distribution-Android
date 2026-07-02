package com.google.gson.internal.bind;

import com.google.gson.internal.Excluder;
import com.google.gson.t;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ReflectiveTypeAdapterFactory implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.internal.c f6218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.gson.d f6219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Excluder f6220c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final JsonAdapterAnnotationTypeAdapterFactory f6221d;

    public ReflectiveTypeAdapterFactory(com.google.gson.internal.c cVar, com.google.gson.d dVar, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.f6218a = cVar;
        this.f6219b = dVar;
        this.f6220c = excluder;
        this.f6221d = jsonAdapterAnnotationTypeAdapterFactory;
    }

    public boolean a(Field field, boolean z) {
        return a(field, z, this.f6220c);
    }

    static boolean a(Field field, boolean z, Excluder excluder) {
        return (excluder.a(field.getType(), z) || excluder.a(field, z)) ? false : true;
    }

    private List<String> a(Field field) {
        com.google.gson.a.c cVar = (com.google.gson.a.c) field.getAnnotation(com.google.gson.a.c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f6219b.a(field));
        }
        String strA = cVar.a();
        String[] strArrB = cVar.b();
        if (strArrB.length == 0) {
            return Collections.singletonList(strA);
        }
        ArrayList arrayList = new ArrayList(strArrB.length + 1);
        arrayList.add(strA);
        for (String str : strArrB) {
            arrayList.add(str);
        }
        return arrayList;
    }

    @Override // com.google.gson.w
    public <T> v<T> a(com.google.gson.e eVar, com.google.gson.b.a<T> aVar) {
        Class<? super T> clsA = aVar.a();
        if (!Object.class.isAssignableFrom(clsA)) {
            return null;
        }
        return new a(this.f6218a.a(aVar), a(eVar, (com.google.gson.b.a<?>) aVar, (Class<?>) clsA));
    }

    private b a(final com.google.gson.e eVar, final Field field, String str, final com.google.gson.b.a<?> aVar, boolean z, boolean z2) {
        final boolean zA = com.google.gson.internal.h.a((Type) aVar.a());
        com.google.gson.a.b bVar = (com.google.gson.a.b) field.getAnnotation(com.google.gson.a.b.class);
        final v<?> vVarA = null;
        if (bVar != null) {
            vVarA = this.f6221d.a(this.f6218a, eVar, aVar, bVar);
        }
        final boolean z3 = vVarA != null;
        if (vVarA == null) {
            vVarA = eVar.a((com.google.gson.b.a) aVar);
        }
        return new b(str, z, z2) { // from class: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
            void a(com.google.gson.c.c cVar, Object obj) throws IllegalAccessException, IOException {
                (z3 ? vVarA : new h(eVar, vVarA, aVar.b())).a(cVar, field.get(obj));
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
            void a(com.google.gson.c.a aVar2, Object obj) throws IllegalAccessException, IOException {
                Object objB = vVarA.b(aVar2);
                if (objB != null || !zA) {
                    field.set(obj, objB);
                }
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
            public boolean a(Object obj) throws IllegalAccessException, IOException {
                return this.i && field.get(obj) != obj;
            }
        };
    }

    private Map<String, b> a(com.google.gson.e eVar, com.google.gson.b.a<?> aVar, Class<?> cls) {
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
                    Type typeA = com.google.gson.internal.b.a(aVar.b(), cls, field.getGenericType());
                    List<String> listA = a(field);
                    b bVar = null;
                    int i = 0;
                    while (i < listA.size()) {
                        String str = listA.get(i);
                        if (i != 0) {
                            zA = false;
                        }
                        b bVar2 = (b) linkedHashMap.put(str, a(eVar, field, str, com.google.gson.b.a.a(typeA), zA, zA2));
                        if (bVar != null) {
                            bVar2 = bVar;
                        }
                        i++;
                        bVar = bVar2;
                    }
                    if (bVar != null) {
                        throw new IllegalArgumentException(typeB + " declares multiple JSON fields named " + bVar.h);
                    }
                }
            }
            aVar = com.google.gson.b.a.a(com.google.gson.internal.b.a(aVar.b(), cls, cls.getGenericSuperclass()));
            cls = aVar.a();
        }
        return linkedHashMap;
    }

    static abstract class b {
        final String h;
        final boolean i;
        final boolean j;

        abstract void a(com.google.gson.c.a aVar, Object obj) throws IllegalAccessException, IOException;

        abstract void a(com.google.gson.c.c cVar, Object obj) throws IllegalAccessException, IOException;

        abstract boolean a(Object obj) throws IllegalAccessException, IOException;

        protected b(String str, boolean z, boolean z2) {
            this.h = str;
            this.i = z;
            this.j = z2;
        }
    }

    public static final class a<T> extends v<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.gson.internal.g<T> f6226a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<String, b> f6227b;

        a(com.google.gson.internal.g<T> gVar, Map<String, b> map) {
            this.f6226a = gVar;
            this.f6227b = map;
        }

        @Override // com.google.gson.v
        public T b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() == com.google.gson.c.b.NULL) {
                aVar.j();
                return null;
            }
            T tA = this.f6226a.a();
            try {
                aVar.c();
                while (aVar.e()) {
                    b bVar = this.f6227b.get(aVar.g());
                    if (bVar == null || !bVar.j) {
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

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, T t) throws IOException {
            if (t == null) {
                cVar.f();
                return;
            }
            cVar.d();
            try {
                for (b bVar : this.f6227b.values()) {
                    if (bVar.a(t)) {
                        cVar.a(bVar.h);
                        bVar.a(cVar, t);
                    }
                }
                cVar.e();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }
}
