package com.google.gson.internal;

import com.google.gson.m;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Type, com.google.gson.h<?>> f5451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.gson.internal.a.b f5452b = com.google.gson.internal.a.b.a();

    public c(Map<Type, com.google.gson.h<?>> map) {
        this.f5451a = map;
    }

    public <T> h<T> a(com.google.gson.b.a<T> aVar) {
        final Type typeB = aVar.b();
        Class<? super T> clsA = aVar.a();
        final com.google.gson.h<?> hVar = this.f5451a.get(typeB);
        if (hVar != null) {
            return new h<T>() { // from class: com.google.gson.internal.c.1
                @Override // com.google.gson.internal.h
                public T a() {
                    return (T) hVar.a(typeB);
                }
            };
        }
        final com.google.gson.h<?> hVar2 = this.f5451a.get(clsA);
        if (hVar2 != null) {
            return new h<T>() { // from class: com.google.gson.internal.c.7
                @Override // com.google.gson.internal.h
                public T a() {
                    return (T) hVar2.a(typeB);
                }
            };
        }
        h<T> hVarA = a(clsA);
        if (hVarA != null) {
            return hVarA;
        }
        h<T> hVarA2 = a(typeB, clsA);
        return hVarA2 != null ? hVarA2 : b(typeB, clsA);
    }

    private <T> h<T> a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f5452b.a(declaredConstructor);
            }
            return new h<T>() { // from class: com.google.gson.internal.c.8
                @Override // com.google.gson.internal.h
                public T a() {
                    try {
                        return (T) declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e2) {
                        throw new AssertionError(e2);
                    } catch (InstantiationException e3) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e3);
                    } catch (InvocationTargetException e4) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e4.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private <T> h<T> a(final Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new h<T>() { // from class: com.google.gson.internal.c.9
                    @Override // com.google.gson.internal.h
                    public T a() {
                        return (T) new TreeSet();
                    }
                };
            }
            if (EnumSet.class.isAssignableFrom(cls)) {
                return new h<T>() { // from class: com.google.gson.internal.c.10
                    @Override // com.google.gson.internal.h
                    public T a() {
                        Type type2 = type;
                        if (type2 instanceof ParameterizedType) {
                            Type type3 = ((ParameterizedType) type2).getActualTypeArguments()[0];
                            if (type3 instanceof Class) {
                                return (T) EnumSet.noneOf((Class) type3);
                            }
                            throw new m("Invalid EnumSet type: " + type.toString());
                        }
                        throw new m("Invalid EnumSet type: " + type.toString());
                    }
                };
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new h<T>() { // from class: com.google.gson.internal.c.11
                    @Override // com.google.gson.internal.h
                    public T a() {
                        return (T) new LinkedHashSet();
                    }
                };
            }
            if (Queue.class.isAssignableFrom(cls)) {
                return new h<T>() { // from class: com.google.gson.internal.c.12
                    @Override // com.google.gson.internal.h
                    public T a() {
                        return (T) new ArrayDeque();
                    }
                };
            }
            return new h<T>() { // from class: com.google.gson.internal.c.13
                @Override // com.google.gson.internal.h
                public T a() {
                    return (T) new ArrayList();
                }
            };
        }
        if (!Map.class.isAssignableFrom(cls)) {
            return null;
        }
        if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
            return new h<T>() { // from class: com.google.gson.internal.c.14
                @Override // com.google.gson.internal.h
                public T a() {
                    return (T) new ConcurrentSkipListMap();
                }
            };
        }
        if (ConcurrentMap.class.isAssignableFrom(cls)) {
            return new h<T>() { // from class: com.google.gson.internal.c.2
                @Override // com.google.gson.internal.h
                public T a() {
                    return (T) new ConcurrentHashMap();
                }
            };
        }
        if (SortedMap.class.isAssignableFrom(cls)) {
            return new h<T>() { // from class: com.google.gson.internal.c.3
                @Override // com.google.gson.internal.h
                public T a() {
                    return (T) new TreeMap();
                }
            };
        }
        if ((type instanceof ParameterizedType) && !String.class.isAssignableFrom(com.google.gson.b.a.a(((ParameterizedType) type).getActualTypeArguments()[0]).a())) {
            return new h<T>() { // from class: com.google.gson.internal.c.4
                @Override // com.google.gson.internal.h
                public T a() {
                    return (T) new LinkedHashMap();
                }
            };
        }
        return new h<T>() { // from class: com.google.gson.internal.c.5
            @Override // com.google.gson.internal.h
            public T a() {
                return (T) new g();
            }
        };
    }

    private <T> h<T> b(final Type type, final Class<? super T> cls) {
        return new h<T>() { // from class: com.google.gson.internal.c.6

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final l f5469d = l.a();

            @Override // com.google.gson.internal.h
            public T a() {
                try {
                    return (T) this.f5469d.a(cls);
                } catch (Exception e2) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e2);
                }
            }
        };
    }

    public String toString() {
        return this.f5451a.toString();
    }
}
