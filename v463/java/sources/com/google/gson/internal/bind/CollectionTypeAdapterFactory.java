package com.google.gson.internal.bind;

import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class CollectionTypeAdapterFactory implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.internal.c f5369a;

    public CollectionTypeAdapterFactory(com.google.gson.internal.c cVar) {
        this.f5369a = cVar;
    }

    @Override // com.google.gson.w
    public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
        Type typeB = aVar.b();
        Class<? super T> clsA = aVar.a();
        if (!Collection.class.isAssignableFrom(clsA)) {
            return null;
        }
        Type typeA = com.google.gson.internal.b.a(typeB, (Class<?>) clsA);
        return new a(fVar, typeA, fVar.a((com.google.gson.b.a) com.google.gson.b.a.a(typeA)), this.f5369a.a(aVar));
    }

    private static final class a<E> extends v<Collection<E>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final v<E> f5370a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.google.gson.internal.h<? extends Collection<E>> f5371b;

        public a(com.google.gson.f fVar, Type type, v<E> vVar, com.google.gson.internal.h<? extends Collection<E>> hVar) {
            this.f5370a = new h(fVar, vVar, type);
            this.f5371b = hVar;
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Collection<E> b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() == com.google.gson.c.b.NULL) {
                aVar.j();
                return null;
            }
            Collection<E> collectionA = this.f5371b.a();
            aVar.a();
            while (aVar.e()) {
                collectionA.add(this.f5370a.b(aVar));
            }
            aVar.b();
            return collectionA;
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, Collection<E> collection) throws IOException {
            if (collection == null) {
                cVar.f();
                return;
            }
            cVar.b();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.f5370a.a(cVar, it.next());
            }
            cVar.c();
        }
    }
}
