package com.google.ads.interactivemedia.v3.a.c;

import com.google.ads.interactivemedia.v3.a.b.b;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Class<? super T> f2725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Type f2726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f2727c;

    protected a() {
        this.f2726b = a(getClass());
        this.f2725a = (Class<? super T>) b.e(this.f2726b);
        this.f2727c = this.f2726b.hashCode();
    }

    a(Type type) {
        this.f2726b = b.d((Type) com.google.ads.interactivemedia.v3.a.b.a.a(type));
        this.f2725a = (Class<? super T>) b.e(this.f2726b);
        this.f2727c = this.f2726b.hashCode();
    }

    static Type a(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        return b.d(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
    }

    public final Class<? super T> a() {
        return this.f2725a;
    }

    public final Type b() {
        return this.f2726b;
    }

    public final int hashCode() {
        return this.f2727c;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && b.a(this.f2726b, ((a) obj).f2726b);
    }

    public final String toString() {
        return b.f(this.f2726b);
    }

    public static a<?> a(Type type) {
        return new a<>(type);
    }

    public static <T> a<T> b(Class<T> cls) {
        return new a<>(cls);
    }
}
