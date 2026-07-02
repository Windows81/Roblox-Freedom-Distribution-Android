package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class a<E> extends w<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x f2596a = new x() { // from class: com.google.ads.interactivemedia.v3.a.b.a.a.1
        @Override // com.google.ads.interactivemedia.v3.a.x
        public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
            Type typeB = aVar.b();
            if (!(typeB instanceof GenericArrayType) && (!(typeB instanceof Class) || !((Class) typeB).isArray())) {
                return null;
            }
            Type typeG = com.google.ads.interactivemedia.v3.a.b.b.g(typeB);
            return new a(fVar, fVar.a((com.google.ads.interactivemedia.v3.a.c.a) com.google.ads.interactivemedia.v3.a.c.a.a(typeG)), com.google.ads.interactivemedia.v3.a.b.b.e(typeG));
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class<E> f2597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w<E> f2598c;

    public a(com.google.ads.interactivemedia.v3.a.f fVar, w<E> wVar, Class<E> cls) {
        this.f2598c = new l(fVar, wVar, cls);
        this.f2597b = cls;
    }

    @Override // com.google.ads.interactivemedia.v3.a.w
    public Object read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
        if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
            aVar.j();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.a();
        while (aVar.e()) {
            arrayList.add(this.f2598c.read(aVar));
        }
        aVar.b();
        Object objNewInstance = Array.newInstance((Class<?>) this.f2597b, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            Array.set(objNewInstance, i, arrayList.get(i));
        }
        return objNewInstance;
    }

    @Override // com.google.ads.interactivemedia.v3.a.w
    public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.f();
            return;
        }
        cVar.b();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.f2598c.write(cVar, (E) Array.get(obj, i));
        }
        cVar.c();
    }
}
