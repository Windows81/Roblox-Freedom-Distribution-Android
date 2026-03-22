package com.google.firebase.components;

import com.google.android.gms.common.internal.aa;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class l implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<a<?>> f5153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, p<?>> f5154b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n f5155c;

    @Override // com.google.firebase.components.b
    public final Object a(Class cls) {
        return c.a(this, cls);
    }

    public l(Executor executor, Iterable<e> iterable, a<?>... aVarArr) {
        this.f5155c = new n(executor);
        ArrayList arrayList = new ArrayList();
        arrayList.add(a.a(this.f5155c, n.class, com.google.firebase.a.d.class, com.google.firebase.a.c.class));
        Iterator<e> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getComponents());
        }
        Collections.addAll(arrayList, aVarArr);
        List<a<?>> listUnmodifiableList = Collections.unmodifiableList(m.a(arrayList));
        this.f5153a = listUnmodifiableList;
        Iterator<a<?>> it2 = listUnmodifiableList.iterator();
        while (it2.hasNext()) {
            a(it2.next());
        }
        a();
    }

    @Override // com.google.firebase.components.b
    public final <T> com.google.firebase.b.a<T> b(Class<T> cls) {
        aa.a(cls, "Null interface requested.");
        return this.f5154b.get(cls);
    }

    public final void a(boolean z) {
        for (a<?> aVar : this.f5153a) {
            if (aVar.e() || (aVar.f() && z)) {
                a(aVar.a().iterator().next());
            }
        }
        this.f5155c.a();
    }

    private <T> void a(a<T> aVar) {
        p<?> pVar = new p<>(aVar.c(), new r(aVar, this));
        Iterator<Class<? super T>> it = aVar.a().iterator();
        while (it.hasNext()) {
            this.f5154b.put(it.next(), pVar);
        }
    }

    private void a() {
        for (a<?> aVar : this.f5153a) {
            for (f fVar : aVar.b()) {
                if (fVar.b() && !this.f5154b.containsKey(fVar.a())) {
                    throw new i(String.format("Unsatisfied dependency for component %s: %s", aVar, fVar.a()));
                }
            }
        }
    }
}
