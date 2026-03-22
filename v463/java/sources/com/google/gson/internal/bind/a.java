package com.google.gson.internal.bind;

import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a<E> extends v<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f5418a = new w() { // from class: com.google.gson.internal.bind.ArrayTypeAdapter$1
        @Override // com.google.gson.w
        public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
            Type typeB = aVar.b();
            if (!(typeB instanceof GenericArrayType) && (!(typeB instanceof Class) || !((Class) typeB).isArray())) {
                return null;
            }
            Type typeG = com.google.gson.internal.b.g(typeB);
            return new a(fVar, fVar.a((com.google.gson.b.a) com.google.gson.b.a.a(typeG)), com.google.gson.internal.b.e(typeG));
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class<E> f5419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v<E> f5420c;

    public a(com.google.gson.f fVar, v<E> vVar, Class<E> cls) {
        this.f5420c = new h(fVar, vVar, cls);
        this.f5419b = cls;
    }

    @Override // com.google.gson.v
    public Object b(com.google.gson.c.a aVar) throws IOException {
        if (aVar.f() == com.google.gson.c.b.NULL) {
            aVar.j();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.a();
        while (aVar.e()) {
            arrayList.add(this.f5420c.b(aVar));
        }
        aVar.b();
        int size = arrayList.size();
        Object objNewInstance = Array.newInstance((Class<?>) this.f5419b, size);
        for (int i = 0; i < size; i++) {
            Array.set(objNewInstance, i, arrayList.get(i));
        }
        return objNewInstance;
    }

    @Override // com.google.gson.v
    public void a(com.google.gson.c.c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.f();
            return;
        }
        cVar.b();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.f5420c.a(cVar, (E) Array.get(obj, i));
        }
        cVar.c();
    }
}
