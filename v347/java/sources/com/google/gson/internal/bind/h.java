package com.google.gson.internal.bind;

import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.v;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: classes.dex */
final class h<T> extends v<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.e f6274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v<T> f6275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Type f6276c;

    h(com.google.gson.e eVar, v<T> vVar, Type type) {
        this.f6274a = eVar;
        this.f6275b = vVar;
        this.f6276c = type;
    }

    @Override // com.google.gson.v
    public T b(com.google.gson.c.a aVar) throws IOException {
        return this.f6275b.b(aVar);
    }

    @Override // com.google.gson.v
    public void a(com.google.gson.c.c cVar, T t) throws IOException {
        v<T> vVarA = this.f6275b;
        Type typeA = a(this.f6276c, t);
        if (typeA != this.f6276c) {
            vVarA = this.f6274a.a((com.google.gson.b.a) com.google.gson.b.a.a(typeA));
            if ((vVarA instanceof ReflectiveTypeAdapterFactory.a) && !(this.f6275b instanceof ReflectiveTypeAdapterFactory.a)) {
                vVarA = this.f6275b;
            }
        }
        vVarA.a(cVar, t);
    }

    private Type a(Type type, Object obj) {
        if (obj == null) {
            return type;
        }
        if (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) {
            return obj.getClass();
        }
        return type;
    }
}
