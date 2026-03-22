package com.google.gson.internal.bind;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.j;
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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ReflectiveTypeAdapterFactory implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.internal.c f5379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.gson.e f5380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Excluder f5381c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final JsonAdapterAnnotationTypeAdapterFactory f5382d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.gson.internal.a.b f5383e = com.google.gson.internal.a.b.a();

    public ReflectiveTypeAdapterFactory(com.google.gson.internal.c cVar, com.google.gson.e eVar, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.f5379a = cVar;
        this.f5380b = eVar;
        this.f5381c = excluder;
        this.f5382d = jsonAdapterAnnotationTypeAdapterFactory;
    }

    public boolean a(Field field, boolean z) {
        return a(field, z, this.f5381c);
    }

    static boolean a(Field field, boolean z, Excluder excluder) {
        return (excluder.a(field.getType(), z) || excluder.a(field, z)) ? false : true;
    }

    private List<String> a(Field field) {
        com.google.gson.a.c cVar = (com.google.gson.a.c) field.getAnnotation(com.google.gson.a.c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f5380b.a(field));
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
    public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
        Class<? super T> clsA = aVar.a();
        if (Object.class.isAssignableFrom(clsA)) {
            return new a(this.f5379a.a(aVar), a(fVar, (com.google.gson.b.a<?>) aVar, (Class<?>) clsA));
        }
        return null;
    }

    private b a(final com.google.gson.f fVar, final Field field, String str, final com.google.gson.b.a<?> aVar, boolean z, boolean z2) {
        final boolean zA = j.a((Type) aVar.a());
        com.google.gson.a.b bVar = (com.google.gson.a.b) field.getAnnotation(com.google.gson.a.b.class);
        v<?> vVarA = bVar != null ? this.f5382d.a(this.f5379a, fVar, aVar, bVar) : null;
        final boolean z3 = vVarA != null;
        if (vVarA == null) {
            vVarA = fVar.a((com.google.gson.b.a) aVar);
        }
        final v<?> vVar = vVarA;
        return new b(str, z, z2) { // from class: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
            void a(com.google.gson.c.c cVar, Object obj) throws IllegalAccessException, IOException {
                (z3 ? vVar : new h(fVar, vVar, aVar.b())).a(cVar, field.get(obj));
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
            void a(com.google.gson.c.a aVar2, Object obj) throws IllegalAccessException, IOException {
                Object objB = vVar.b(aVar2);
                if (objB == null && zA) {
                    return;
                }
                field.set(obj, objB);
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.b
            public boolean a(Object obj) throws IllegalAccessException, IOException {
                return this.i && field.get(obj) != obj;
            }
        };
    }

    private Map<String, b> a(com.google.gson.f fVar, com.google.gson.b.a<?> aVar, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type typeB = aVar.b();
        com.google.gson.b.a<?> aVarA = aVar;
        Class<?> clsA = cls;
        while (clsA != Object.class) {
            Field[] declaredFields = clsA.getDeclaredFields();
            int length = declaredFields.length;
            boolean z = false;
            int i = 0;
            while (i < length) {
                Field field = declaredFields[i];
                boolean zA = a(field, true);
                boolean zA2 = a(field, z);
                if (zA || zA2) {
                    this.f5383e.a(field);
                    Type typeA = com.google.gson.internal.b.a(aVarA.b(), clsA, field.getGenericType());
                    List<String> listA = a(field);
                    int size = listA.size();
                    b bVar = null;
                    int i2 = 0;
                    while (i2 < size) {
                        String str = listA.get(i2);
                        boolean z2 = i2 != 0 ? false : zA;
                        int i3 = i2;
                        b bVar2 = bVar;
                        int i4 = size;
                        List<String> list = listA;
                        Field field2 = field;
                        bVar = bVar2 == null ? (b) linkedHashMap.put(str, a(fVar, field, str, com.google.gson.b.a.a(typeA), z2, zA2)) : bVar2;
                        i2 = i3 + 1;
                        zA = z2;
                        listA = list;
                        size = i4;
                        field = field2;
                    }
                    b bVar3 = bVar;
                    if (bVar3 != null) {
                        throw new IllegalArgumentException(typeB + " declares multiple JSON fields named " + bVar3.h);
                    }
                }
                i++;
                z = false;
            }
            aVarA = com.google.gson.b.a.a(com.google.gson.internal.b.a(aVarA.b(), clsA, clsA.getGenericSuperclass()));
            clsA = aVarA.a();
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
        private final com.google.gson.internal.h<T> f5389a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<String, b> f5390b;

        a(com.google.gson.internal.h<T> hVar, Map<String, b> map) {
            this.f5389a = hVar;
            this.f5390b = map;
        }

        @Override // com.google.gson.v
        public T b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() == com.google.gson.c.b.NULL) {
                aVar.j();
                return null;
            }
            T tA = this.f5389a.a();
            try {
                aVar.c();
                while (aVar.e()) {
                    b bVar = this.f5390b.get(aVar.g());
                    if (bVar == null || !bVar.j) {
                        aVar.n();
                    } else {
                        bVar.a(aVar, tA);
                    }
                }
                aVar.d();
                return tA;
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (IllegalStateException e3) {
                throw new t(e3);
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
                for (b bVar : this.f5390b.values()) {
                    if (bVar.a(t)) {
                        cVar.a(bVar.h);
                        bVar.a(cVar, t);
                    }
                }
                cVar.e();
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }
    }
}
