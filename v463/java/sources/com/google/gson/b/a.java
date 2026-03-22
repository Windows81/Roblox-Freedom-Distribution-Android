package com.google.gson.b;

import com.google.gson.internal.b;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Class<? super T> f5308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Type f5309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f5310c;

    protected a() {
        Type typeA = a(getClass());
        this.f5309b = typeA;
        this.f5308a = (Class<? super T>) b.e(typeA);
        this.f5310c = this.f5309b.hashCode();
    }

    a(Type type) {
        Type typeD = b.d((Type) com.google.gson.internal.a.a(type));
        this.f5309b = typeD;
        this.f5308a = (Class<? super T>) b.e(typeD);
        this.f5310c = this.f5309b.hashCode();
    }

    static Type a(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        return b.d(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
    }

    public final Class<? super T> a() {
        return this.f5308a;
    }

    public final Type b() {
        return this.f5309b;
    }

    public final int hashCode() {
        return this.f5310c;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && b.a(this.f5309b, ((a) obj).f5309b);
    }

    public final String toString() {
        return b.f(this.f5309b);
    }

    public static a<?> a(Type type) {
        return new a<>(type);
    }

    public static <T> a<T> b(Class<T> cls) {
        return new a<>(cls);
    }
}
