package com.google.gson.internal.bind;

import com.google.gson.k;
import com.google.gson.q;
import com.google.gson.t;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MapTypeAdapterFactory implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final boolean f6212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.gson.internal.c f6213b;

    public MapTypeAdapterFactory(com.google.gson.internal.c cVar, boolean z) {
        this.f6213b = cVar;
        this.f6212a = z;
    }

    @Override // com.google.gson.w
    public <T> v<T> a(com.google.gson.e eVar, com.google.gson.b.a<T> aVar) {
        Type typeB = aVar.b();
        if (!Map.class.isAssignableFrom(aVar.a())) {
            return null;
        }
        Type[] typeArrB = com.google.gson.internal.b.b(typeB, com.google.gson.internal.b.e(typeB));
        return new a(eVar, typeArrB[0], a(eVar, typeArrB[0]), typeArrB[1], eVar.a((com.google.gson.b.a) com.google.gson.b.a.a(typeArrB[1])), this.f6213b.a(aVar));
    }

    private v<?> a(com.google.gson.e eVar, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? i.f : eVar.a((com.google.gson.b.a) com.google.gson.b.a.a(type));
    }

    private final class a<K, V> extends v<Map<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final v<K> f6215b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final v<V> f6216c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final com.google.gson.internal.g<? extends Map<K, V>> f6217d;

        public a(com.google.gson.e eVar, Type type, v<K> vVar, Type type2, v<V> vVar2, com.google.gson.internal.g<? extends Map<K, V>> gVar) {
            this.f6215b = new h(eVar, vVar, type);
            this.f6216c = new h(eVar, vVar2, type2);
            this.f6217d = gVar;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<K, V> b(com.google.gson.c.a aVar) throws IOException {
            com.google.gson.c.b bVarF = aVar.f();
            if (bVarF == com.google.gson.c.b.NULL) {
                aVar.j();
                return null;
            }
            Map<K, V> mapA = this.f6217d.a();
            if (bVarF == com.google.gson.c.b.BEGIN_ARRAY) {
                aVar.a();
                while (aVar.e()) {
                    aVar.a();
                    K kB = this.f6215b.b(aVar);
                    if (mapA.put(kB, this.f6216c.b(aVar)) != null) {
                        throw new t("duplicate key: " + kB);
                    }
                    aVar.b();
                }
                aVar.b();
                return mapA;
            }
            aVar.c();
            while (aVar.e()) {
                com.google.gson.internal.d.f6308a.a(aVar);
                K kB2 = this.f6215b.b(aVar);
                if (mapA.put(kB2, this.f6216c.b(aVar)) != null) {
                    throw new t("duplicate key: " + kB2);
                }
            }
            aVar.d();
            return mapA;
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, Map<K, V> map) throws IOException {
            int i = 0;
            if (map == null) {
                cVar.f();
                return;
            }
            if (!MapTypeAdapterFactory.this.f6212a) {
                cVar.d();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    cVar.a(String.valueOf(entry.getKey()));
                    this.f6216c.a(cVar, entry.getValue());
                }
                cVar.e();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            boolean z = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                k kVarA = this.f6215b.a(entry2.getKey());
                arrayList.add(kVarA);
                arrayList2.add(entry2.getValue());
                z = (kVarA.h() || kVarA.i()) | z;
            }
            if (z) {
                cVar.b();
                while (i < arrayList.size()) {
                    cVar.b();
                    com.google.gson.internal.i.a((k) arrayList.get(i), cVar);
                    this.f6216c.a(cVar, (V) arrayList2.get(i));
                    cVar.c();
                    i++;
                }
                cVar.c();
                return;
            }
            cVar.d();
            while (i < arrayList.size()) {
                cVar.a(a((k) arrayList.get(i)));
                this.f6216c.a(cVar, (V) arrayList2.get(i));
                i++;
            }
            cVar.e();
        }

        private String a(k kVar) {
            if (kVar.j()) {
                q qVarN = kVar.n();
                if (qVarN.p()) {
                    return String.valueOf(qVarN.b());
                }
                if (qVarN.a()) {
                    return Boolean.toString(qVarN.g());
                }
                if (qVarN.q()) {
                    return qVarN.c();
                }
                throw new AssertionError();
            }
            if (kVar.k()) {
                return "null";
            }
            throw new AssertionError();
        }
    }
}
