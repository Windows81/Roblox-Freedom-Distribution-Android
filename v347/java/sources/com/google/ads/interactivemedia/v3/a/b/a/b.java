package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class b implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.ads.interactivemedia.v3.a.b.c f2599a;

    public b(com.google.ads.interactivemedia.v3.a.b.c cVar) {
        this.f2599a = cVar;
    }

    @Override // com.google.ads.interactivemedia.v3.a.x
    public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
        Type typeB = aVar.b();
        Class<? super T> clsA = aVar.a();
        if (!Collection.class.isAssignableFrom(clsA)) {
            return null;
        }
        Type typeA = com.google.ads.interactivemedia.v3.a.b.b.a(typeB, (Class<?>) clsA);
        return new a(fVar, typeA, fVar.a((com.google.ads.interactivemedia.v3.a.c.a) com.google.ads.interactivemedia.v3.a.c.a.a(typeA)), this.f2599a.a(aVar));
    }

    private static final class a<E> extends w<Collection<E>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final w<E> f2600a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.google.ads.interactivemedia.v3.a.b.h<? extends Collection<E>> f2601b;

        public a(com.google.ads.interactivemedia.v3.a.f fVar, Type type, w<E> wVar, com.google.ads.interactivemedia.v3.a.b.h<? extends Collection<E>> hVar) {
            this.f2600a = new l(fVar, wVar, type);
            this.f2601b = hVar;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Collection<E> read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            Collection<E> collectionA = this.f2601b.a();
            aVar.a();
            while (aVar.e()) {
                collectionA.add(this.f2600a.read(aVar));
            }
            aVar.b();
            return collectionA;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Collection<E> collection) throws IOException {
            if (collection == null) {
                cVar.f();
                return;
            }
            cVar.b();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.f2600a.write(cVar, it.next());
            }
            cVar.c();
        }
    }
}
