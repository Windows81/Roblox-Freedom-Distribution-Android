package com.google.firebase.components;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class m {

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.firebase.components.a<?> f5156a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Set<a> f5157b = new HashSet();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Set<a> f5158c = new HashSet();

        a(com.google.firebase.components.a<?> aVar) {
            this.f5156a = aVar;
        }

        final void a(a aVar) {
            this.f5157b.add(aVar);
        }

        final void b(a aVar) {
            this.f5158c.add(aVar);
        }

        final Set<a> a() {
            return this.f5157b;
        }

        final void c(a aVar) {
            this.f5158c.remove(aVar);
        }

        final com.google.firebase.components.a<?> b() {
            return this.f5156a;
        }

        final boolean c() {
            return this.f5158c.isEmpty();
        }

        final boolean d() {
            return this.f5157b.isEmpty();
        }
    }

    private static Set<a> a(Set<a> set) {
        HashSet hashSet = new HashSet();
        for (a aVar : set) {
            if (aVar.c()) {
                hashSet.add(aVar);
            }
        }
        return hashSet;
    }

    static List<com.google.firebase.components.a<?>> a(List<com.google.firebase.components.a<?>> list) {
        a aVar;
        HashMap map = new HashMap(list.size());
        for (com.google.firebase.components.a<?> aVar2 : list) {
            a aVar3 = new a(aVar2);
            for (Class<? super Object> cls : aVar2.a()) {
                if (map.put(cls, aVar3) != null) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
            }
        }
        for (a aVar4 : map.values()) {
            for (f fVar : aVar4.b().b()) {
                if (fVar.c() && (aVar = (a) map.get(fVar.a())) != null) {
                    aVar4.a(aVar);
                    aVar.b(aVar4);
                }
            }
        }
        HashSet<a> hashSet = new HashSet(map.values());
        Set<a> setA = a(hashSet);
        ArrayList arrayList = new ArrayList();
        while (!setA.isEmpty()) {
            a next = setA.iterator().next();
            setA.remove(next);
            arrayList.add(next.b());
            for (a aVar5 : next.a()) {
                aVar5.c(next);
                if (aVar5.c()) {
                    setA.add(aVar5);
                }
            }
        }
        if (arrayList.size() == list.size()) {
            Collections.reverse(arrayList);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        for (a aVar6 : hashSet) {
            if (!aVar6.c() && !aVar6.d()) {
                arrayList2.add(aVar6.b());
            }
        }
        throw new g(arrayList2);
    }
}
