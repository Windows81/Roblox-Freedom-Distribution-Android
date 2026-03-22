package com.google.gson.internal.bind;

import com.google.gson.k;
import com.google.gson.s;
import com.google.gson.v;
import com.google.gson.w;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class JsonAdapterAnnotationTypeAdapterFactory implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.internal.c f5372a;

    public JsonAdapterAnnotationTypeAdapterFactory(com.google.gson.internal.c cVar) {
        this.f5372a = cVar;
    }

    @Override // com.google.gson.w
    public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
        com.google.gson.a.b bVar = (com.google.gson.a.b) aVar.a().getAnnotation(com.google.gson.a.b.class);
        if (bVar == null) {
            return null;
        }
        return (v<T>) a(this.f5372a, fVar, aVar, bVar);
    }

    v<?> a(com.google.gson.internal.c cVar, com.google.gson.f fVar, com.google.gson.b.a<?> aVar, com.google.gson.a.b bVar) {
        v<?> treeTypeAdapter;
        Object objA = cVar.a(com.google.gson.b.a.b(bVar.a())).a();
        if (objA instanceof v) {
            treeTypeAdapter = (v) objA;
        } else if (objA instanceof w) {
            treeTypeAdapter = ((w) objA).a(fVar, aVar);
        } else {
            boolean z = objA instanceof s;
            if (z || (objA instanceof k)) {
                treeTypeAdapter = new TreeTypeAdapter<>(z ? (s) objA : null, objA instanceof k ? (k) objA : null, fVar, aVar, null);
            } else {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + objA.getClass().getName() + " as a @JsonAdapter for " + aVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
        }
        return (treeTypeAdapter == null || !bVar.b()) ? treeTypeAdapter : treeTypeAdapter.a();
    }
}
