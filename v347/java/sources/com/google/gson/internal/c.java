package com.google.gson.internal;

import com.google.gson.l;
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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Type, com.google.gson.g<?>> f6284a;

    public c(Map<Type, com.google.gson.g<?>> map) {
        this.f6284a = map;
    }

    public <T> g<T> a(com.google.gson.b.a<T> aVar) {
        final Type typeB = aVar.b();
        Class<? super T> clsA = aVar.a();
        final com.google.gson.g<?> gVar = this.f6284a.get(typeB);
        if (gVar != null) {
            return new g<T>() { // from class: com.google.gson.internal.c.1
                @Override // com.google.gson.internal.g
                public T a() {
                    return (T) gVar.a(typeB);
                }
            };
        }
        final com.google.gson.g<?> gVar2 = this.f6284a.get(clsA);
        if (gVar2 != null) {
            return new g<T>() { // from class: com.google.gson.internal.c.7
                @Override // com.google.gson.internal.g
                public T a() {
                    return (T) gVar2.a(typeB);
                }
            };
        }
        g<T> gVarA = a(clsA);
        if (gVarA == null) {
            g<T> gVarA2 = a(typeB, clsA);
            return gVarA2 == null ? b(typeB, clsA) : gVarA2;
        }
        return gVarA;
    }

    private <T> g<T> a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new g<T>() { // from class: com.google.gson.internal.c.8
                @Override // com.google.gson.internal.g
                public T a() {
                    try {
                        return (T) declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e) {
                        throw new AssertionError(e);
                    } catch (InstantiationException e2) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e2);
                    } catch (InvocationTargetException e3) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e3.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    private <T> g<T> a(final Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new g<T>() { // from class: com.google.gson.internal.c.9
                    @Override // com.google.gson.internal.g
                    public T a() {
                        return (T) new TreeSet();
                    }
                };
            }
            if (EnumSet.class.isAssignableFrom(cls)) {
                return new g<T>() { // from class: com.google.gson.internal.c.10
                    @Override // com.google.gson.internal.g
                    public T a() {
                        if (type instanceof ParameterizedType) {
                            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                            if (type2 instanceof Class) {
                                return (T) EnumSet.noneOf((Class) type2);
                            }
                            throw new l("Invalid EnumSet type: " + type.toString());
                        }
                        throw new l("Invalid EnumSet type: " + type.toString());
                    }
                };
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new g<T>() { // from class: com.google.gson.internal.c.11
                    @Override // com.google.gson.internal.g
                    public T a() {
                        return (T) new LinkedHashSet();
                    }
                };
            }
            if (Queue.class.isAssignableFrom(cls)) {
                return new g<T>() { // from class: com.google.gson.internal.c.12
                    @Override // com.google.gson.internal.g
                    public T a() {
                        return (T) new ArrayDeque();
                    }
                };
            }
            return new g<T>() { // from class: com.google.gson.internal.c.13
                @Override // com.google.gson.internal.g
                public T a() {
                    return (T) new ArrayList();
                }
            };
        }
        if (Map.class.isAssignableFrom(cls)) {
            if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
                return new g<T>() { // from class: com.google.gson.internal.c.14
                    @Override // com.google.gson.internal.g
                    public T a() {
                        return (T) new ConcurrentSkipListMap();
                    }
                };
            }
            if (ConcurrentMap.class.isAssignableFrom(cls)) {
                return new g<T>() { // from class: com.google.gson.internal.c.2
                    @Override // com.google.gson.internal.g
                    public T a() {
                        return (T) new ConcurrentHashMap();
                    }
                };
            }
            if (SortedMap.class.isAssignableFrom(cls)) {
                return new g<T>() { // from class: com.google.gson.internal.c.3
                    @Override // com.google.gson.internal.g
                    public T a() {
                        return (T) new TreeMap();
                    }
                };
            }
            if ((type instanceof ParameterizedType) && !String.class.isAssignableFrom(com.google.gson.b.a.a(((ParameterizedType) type).getActualTypeArguments()[0]).a())) {
                return new g<T>() { // from class: com.google.gson.internal.c.4
                    @Override // com.google.gson.internal.g
                    public T a() {
                        return (T) new LinkedHashMap();
                    }
                };
            }
            return new g<T>() { // from class: com.google.gson.internal.c.5
                @Override // com.google.gson.internal.g
                public T a() {
                    return (T) new f();
                }
            };
        }
        return null;
    }

    private <T> g<T> b(final Type type, final Class<? super T> cls) {
        return new g<T>() { // from class: com.google.gson.internal.c.6

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final j f6301d = j.a();

            @Override // com.google.gson.internal.g
            public T a() {
                try {
                    return (T) this.f6301d.a(cls);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Register an InstanceCreator with Gson for this type may fix this problem.", e);
                }
            }
        };
    }

    public String toString() {
        return this.f6284a.toString();
    }
}
