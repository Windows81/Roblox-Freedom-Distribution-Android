package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.q;
import com.google.ads.interactivemedia.v3.a.t;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class g implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.ads.interactivemedia.v3.a.b.c f2614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f2615b;

    public g(com.google.ads.interactivemedia.v3.a.b.c cVar, boolean z) {
        this.f2614a = cVar;
        this.f2615b = z;
    }

    @Override // com.google.ads.interactivemedia.v3.a.x
    public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
        Type typeB = aVar.b();
        if (!Map.class.isAssignableFrom(aVar.a())) {
            return null;
        }
        Type[] typeArrB = com.google.ads.interactivemedia.v3.a.b.b.b(typeB, com.google.ads.interactivemedia.v3.a.b.b.e(typeB));
        return new a(fVar, typeArrB[0], a(fVar, typeArrB[0]), typeArrB[1], fVar.a((com.google.ads.interactivemedia.v3.a.c.a) com.google.ads.interactivemedia.v3.a.c.a.a(typeArrB[1])), this.f2614a.a(aVar));
    }

    private w<?> a(com.google.ads.interactivemedia.v3.a.f fVar, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? m.f : fVar.a((com.google.ads.interactivemedia.v3.a.c.a) com.google.ads.interactivemedia.v3.a.c.a.a(type));
    }

    private final class a<K, V> extends w<Map<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final w<K> f2617b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final w<V> f2618c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final com.google.ads.interactivemedia.v3.a.b.h<? extends Map<K, V>> f2619d;

        public a(com.google.ads.interactivemedia.v3.a.f fVar, Type type, w<K> wVar, Type type2, w<V> wVar2, com.google.ads.interactivemedia.v3.a.b.h<? extends Map<K, V>> hVar) {
            this.f2617b = new l(fVar, wVar, type);
            this.f2618c = new l(fVar, wVar2, type2);
            this.f2619d = hVar;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<K, V> read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            com.google.ads.interactivemedia.v3.a.d.b bVarF = aVar.f();
            if (bVarF == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            Map<K, V> mapA = this.f2619d.a();
            if (bVarF == com.google.ads.interactivemedia.v3.a.d.b.BEGIN_ARRAY) {
                aVar.a();
                while (aVar.e()) {
                    aVar.a();
                    K k = this.f2617b.read(aVar);
                    if (mapA.put(k, this.f2618c.read(aVar)) != null) {
                        String strValueOf = String.valueOf(k);
                        throw new t(new StringBuilder(String.valueOf(strValueOf).length() + 15).append("duplicate key: ").append(strValueOf).toString());
                    }
                    aVar.b();
                }
                aVar.b();
                return mapA;
            }
            aVar.c();
            while (aVar.e()) {
                com.google.ads.interactivemedia.v3.a.b.e.f2697a.a(aVar);
                K k2 = this.f2617b.read(aVar);
                if (mapA.put(k2, this.f2618c.read(aVar)) != null) {
                    String strValueOf2 = String.valueOf(k2);
                    throw new t(new StringBuilder(String.valueOf(strValueOf2).length() + 15).append("duplicate key: ").append(strValueOf2).toString());
                }
            }
            aVar.d();
            return mapA;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Map<K, V> map) throws IOException {
            int i = 0;
            if (map != null) {
                if (!g.this.f2615b) {
                    cVar.d();
                    for (Map.Entry<K, V> entry : map.entrySet()) {
                        cVar.a(String.valueOf(entry.getKey()));
                        this.f2618c.write(cVar, entry.getValue());
                    }
                    cVar.e();
                    return;
                }
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    com.google.ads.interactivemedia.v3.a.l jsonTree = this.f2617b.toJsonTree(entry2.getKey());
                    arrayList.add(jsonTree);
                    arrayList2.add(entry2.getValue());
                    z = (jsonTree.g() || jsonTree.h()) | z;
                }
                if (z) {
                    cVar.b();
                    while (i < arrayList.size()) {
                        cVar.b();
                        com.google.ads.interactivemedia.v3.a.b.j.a((com.google.ads.interactivemedia.v3.a.l) arrayList.get(i), cVar);
                        this.f2618c.write(cVar, (V) arrayList2.get(i));
                        cVar.c();
                        i++;
                    }
                    cVar.c();
                    return;
                }
                cVar.d();
                while (i < arrayList.size()) {
                    cVar.a(a((com.google.ads.interactivemedia.v3.a.l) arrayList.get(i)));
                    this.f2618c.write(cVar, (V) arrayList2.get(i));
                    i++;
                }
                cVar.e();
                return;
            }
            cVar.f();
        }

        private String a(com.google.ads.interactivemedia.v3.a.l lVar) {
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
