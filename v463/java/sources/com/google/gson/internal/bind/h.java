package com.google.gson.internal.bind;

import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.v;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class h<T> extends v<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.f f5440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v<T> f5441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Type f5442c;

    h(com.google.gson.f fVar, v<T> vVar, Type type) {
        this.f5440a = fVar;
        this.f5441b = vVar;
        this.f5442c = type;
    }

    @Override // com.google.gson.v
    public T b(com.google.gson.c.a aVar) throws IOException {
        return this.f5441b.b(aVar);
    }

    @Override // com.google.gson.v
    public void a(com.google.gson.c.c cVar, T t) throws IOException {
        v<T> vVarA = this.f5441b;
        Type typeA = a(this.f5442c, t);
        if (typeA != this.f5442c) {
            vVarA = this.f5440a.a((com.google.gson.b.a) com.google.gson.b.a.a(typeA));
            if (vVarA instanceof ReflectiveTypeAdapterFactory.a) {
                v<T> vVar = this.f5441b;
                if (!(vVar instanceof ReflectiveTypeAdapterFactory.a)) {
                    vVarA = vVar;
                }
            }
        }
        vVarA.a(cVar, t);
    }

    private Type a(Type type, Object obj) {
        return obj != null ? (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) ? obj.getClass() : type : type;
    }
}
