package com.google.gson.b;

import com.google.gson.internal.b;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Class<? super T> f6160a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Type f6161b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f6162c;

    protected a() {
        this.f6161b = a(getClass());
        this.f6160a = (Class<? super T>) b.e(this.f6161b);
        this.f6162c = this.f6161b.hashCode();
    }

    a(Type type) {
        this.f6161b = b.d((Type) com.google.gson.internal.a.a(type));
        this.f6160a = (Class<? super T>) b.e(this.f6161b);
        this.f6162c = this.f6161b.hashCode();
    }

    static Type a(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        return b.d(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
    }

    public final Class<? super T> a() {
        return this.f6160a;
    }

    public final Type b() {
        return this.f6161b;
    }

    public final int hashCode() {
        return this.f6162c;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && b.a(this.f6161b, ((a) obj).f6161b);
    }

    public final String toString() {
        return b.f(this.f6161b);
    }

    public static a<?> a(Type type) {
        return new a<>(type);
    }

    public static <T> a<T> b(Class<T> cls) {
        return new a<>(cls);
    }
}
