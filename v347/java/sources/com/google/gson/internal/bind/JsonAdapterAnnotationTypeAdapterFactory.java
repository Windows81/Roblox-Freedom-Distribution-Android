package com.google.gson.internal.bind;

import com.google.gson.j;
import com.google.gson.s;
import com.google.gson.v;
import com.google.gson.w;

/* JADX INFO: loaded from: classes.dex */
public final class JsonAdapterAnnotationTypeAdapterFactory implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.internal.c f6211a;

    public JsonAdapterAnnotationTypeAdapterFactory(com.google.gson.internal.c cVar) {
        this.f6211a = cVar;
    }

    @Override // com.google.gson.w
    public <T> v<T> a(com.google.gson.e eVar, com.google.gson.b.a<T> aVar) {
        com.google.gson.a.b bVar = (com.google.gson.a.b) aVar.a().getAnnotation(com.google.gson.a.b.class);
        if (bVar == null) {
            return null;
        }
        return (v<T>) a(this.f6211a, eVar, aVar, bVar);
    }

    v<?> a(com.google.gson.internal.c cVar, com.google.gson.e eVar, com.google.gson.b.a<?> aVar, com.google.gson.a.b bVar) {
        v<?> treeTypeAdapter;
        Object objA = cVar.a(com.google.gson.b.a.b(bVar.a())).a();
        if (objA instanceof v) {
            treeTypeAdapter = (v) objA;
        } else if (objA instanceof w) {
            treeTypeAdapter = ((w) objA).a(eVar, aVar);
        } else if ((objA instanceof s) || (objA instanceof j)) {
            treeTypeAdapter = new TreeTypeAdapter<>(objA instanceof s ? (s) objA : null, objA instanceof j ? (j) objA : null, eVar, aVar, null);
        } else {
            throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer reference.");
        }
        if (treeTypeAdapter != null) {
            return treeTypeAdapter.a();
        }
        return treeTypeAdapter;
    }
}
