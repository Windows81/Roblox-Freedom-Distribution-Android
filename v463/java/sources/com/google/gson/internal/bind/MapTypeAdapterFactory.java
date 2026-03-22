package com.google.gson.internal.bind;

import com.google.gson.internal.k;
import com.google.gson.l;
import com.google.gson.q;
import com.google.gson.t;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class MapTypeAdapterFactory implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final boolean f5373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.gson.internal.c f5374b;

    public MapTypeAdapterFactory(com.google.gson.internal.c cVar, boolean z) {
        this.f5374b = cVar;
        this.f5373a = z;
    }

    @Override // com.google.gson.w
    public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
        Type typeB = aVar.b();
        if (!Map.class.isAssignableFrom(aVar.a())) {
            return null;
        }
        Type[] typeArrB = com.google.gson.internal.b.b(typeB, com.google.gson.internal.b.e(typeB));
        return new a(fVar, typeArrB[0], a(fVar, typeArrB[0]), typeArrB[1], fVar.a((com.google.gson.b.a) com.google.gson.b.a.a(typeArrB[1])), this.f5374b.a(aVar));
    }

    private v<?> a(com.google.gson.f fVar, Type type) {
        if (type == Boolean.TYPE || type == Boolean.class) {
            return i.f;
        }
        return fVar.a((com.google.gson.b.a) com.google.gson.b.a.a(type));
    }

    private final class a<K, V> extends v<Map<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final v<K> f5376b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final v<V> f5377c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final com.google.gson.internal.h<? extends Map<K, V>> f5378d;

        public a(com.google.gson.f fVar, Type type, v<K> vVar, Type type2, v<V> vVar2, com.google.gson.internal.h<? extends Map<K, V>> hVar) {
            this.f5376b = new h(fVar, vVar, type);
            this.f5377c = new h(fVar, vVar2, type2);
            this.f5378d = hVar;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<K, V> b(com.google.gson.c.a aVar) throws IOException {
            com.google.gson.c.b bVarF = aVar.f();
            if (bVarF == com.google.gson.c.b.NULL) {
                aVar.j();
                return null;
            }
            Map<K, V> mapA = this.f5378d.a();
            if (bVarF == com.google.gson.c.b.BEGIN_ARRAY) {
                aVar.a();
                while (aVar.e()) {
                    aVar.a();
                    K kB = this.f5376b.b(aVar);
                    if (mapA.put(kB, this.f5377c.b(aVar)) != null) {
                        throw new t("duplicate key: " + kB);
                    }
                    aVar.b();
                }
                aVar.b();
            } else {
                aVar.c();
                while (aVar.e()) {
                    com.google.gson.internal.e.f5477a.a(aVar);
                    K kB2 = this.f5376b.b(aVar);
                    if (mapA.put(kB2, this.f5377c.b(aVar)) != null) {
                        throw new t("duplicate key: " + kB2);
                    }
                }
                aVar.d();
            }
            return mapA;
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, Map<K, V> map) throws IOException {
            if (map == null) {
                cVar.f();
                return;
            }
            if (!MapTypeAdapterFactory.this.f5373a) {
                cVar.d();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    cVar.a(String.valueOf(entry.getKey()));
                    this.f5377c.a(cVar, entry.getValue());
                }
                cVar.e();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i = 0;
            boolean z = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                l lVarA = this.f5376b.a(entry2.getKey());
                arrayList.add(lVarA);
                arrayList2.add(entry2.getValue());
                z |= lVarA.g() || lVarA.h();
            }
            if (z) {
                cVar.b();
                int size = arrayList.size();
                while (i < size) {
                    cVar.b();
                    k.a((l) arrayList.get(i), cVar);
                    this.f5377c.a(cVar, (V) arrayList2.get(i));
                    cVar.c();
                    i++;
                }
                cVar.c();
                return;
            }
            cVar.d();
            int size2 = arrayList.size();
            while (i < size2) {
                cVar.a(a((l) arrayList.get(i)));
                this.f5377c.a(cVar, (V) arrayList2.get(i));
                i++;
            }
            cVar.e();
        }

        private String a(l lVar) {
            if (lVar.i()) {
                q qVarM = lVar.m();
                if (qVarM.p()) {
                    return String.valueOf(qVarM.a());
                }
                if (qVarM.o()) {
                    return Boolean.toString(qVarM.f());
                }
                if (qVarM.q()) {
                    return qVarM.b();
                }
                throw new AssertionError();
            }
            if (lVar.j()) {
                return "null";
            }
            throw new AssertionError();
        }
    }
}
