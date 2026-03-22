package com.google.ads.interactivemedia.v3.a.b;

import com.google.ads.interactivemedia.v3.a.m;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Type, com.google.ads.interactivemedia.v3.a.h<?>> f2667a;

    public c(Map<Type, com.google.ads.interactivemedia.v3.a.h<?>> map) {
        this.f2667a = map;
    }

    public <T> h<T> a(com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
        final Type typeB = aVar.b();
        Class<? super T> clsA = aVar.a();
        final com.google.ads.interactivemedia.v3.a.h<?> hVar = this.f2667a.get(typeB);
        if (hVar != null) {
            return new h<T>() { // from class: com.google.ads.interactivemedia.v3.a.b.c.1
                @Override // com.google.ads.interactivemedia.v3.a.b.h
                public T a() {
                    return (T) hVar.a(typeB);
                }
            };
        }
        final com.google.ads.interactivemedia.v3.a.h<?> hVar2 = this.f2667a.get(clsA);
        if (hVar2 != null) {
            return new h<T>() { // from class: com.google.ads.interactivemedia.v3.a.b.c.5
                @Override // com.google.ads.interactivemedia.v3.a.b.h
                public T a() {
                    return (T) hVar2.a(typeB);
                }
            };
        }
        h<T> hVarA = a(clsA);
        if (hVarA == null) {
            h<T> hVarA2 = a(typeB, clsA);
            return hVarA2 == null ? b(typeB, clsA) : hVarA2;
        }
        return hVarA;
    }

    private <T> h<T> a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new h<T>() { // from class: com.google.ads.interactivemedia.v3.a.b.c.6
                @Override // com.google.ads.interactivemedia.v3.a.b.h
                public T a() {
                    try {
                        return (T) declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e) {
                        throw new AssertionError(e);
                    } catch (InstantiationException e2) {
                        String strValueOf = String.valueOf(declaredConstructor);
                        throw new RuntimeException(new StringBuilder(String.valueOf(strValueOf).length() + 30).append("Failed to invoke ").append(strValueOf).append(" with no args").toString(), e2);
                    } catch (InvocationTargetException e3) {
                        String strValueOf2 = String.valueOf(declaredConstructor);
                        throw new RuntimeException(new StringBuilder(String.valueOf(strValueOf2).length() + 30).append("Failed to invoke ").append(strValueOf2).append(" with no args").toString(), e3.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    private <T> h<T> a(final Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new h<T>() { // from class: com.google.ads.interactivemedia.v3.a.b.c.7
                    @Override // com.google.ads.interactivemedia.v3.a.b.h
                    public T a() {
                        return (T) new TreeSet();
                    }
                };
            }
            if (EnumSet.class.isAssignableFrom(cls)) {
                return new h<T>() { // from class: com.google.ads.interactivemedia.v3.a.b.c.8
                    @Override // com.google.ads.interactivemedia.v3.a.b.h
                    public T a() {
                        if (type instanceof ParameterizedType) {
                            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                            if (type2 instanceof Class) {
                                return (T) EnumSet.noneOf((Class) type2);
                            }
                            String strValueOf = String.valueOf(type.toString());
                            throw new m(strValueOf.length() != 0 ? "Invalid EnumSet type: ".concat(strValueOf) : new String("Invalid EnumSet type: "));
                        }
                        String strValueOf2 = String.valueOf(type.toString());
                        throw new m(strValueOf2.length() != 0 ? "Invalid EnumSet type: ".concat(strValueOf2) : new String("Invalid EnumSet type: "));
                    }
                };
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new h<T>() { // from class: com.google.ads.interactivemedia.v3.a.b.c.9
                    @Override // com.google.ads.interactivemedia.v3.a.b.h
                    public T a() {
                        return (T) new LinkedHashSet();
                    }
                };
            }
            if (Queue.class.isAssignableFrom(cls)) {
                return new h<T>() { // from class: com.google.ads.interactivemedia.v3.a.b.c.10
                    @Override // com.google.ads.interactivemedia.v3.a.b.h
                    public T a() {
                        return (T) new LinkedList();
                    }
                };
            }
            return new h<T>() { // from class: com.google.ads.interactivemedia.v3.a.b.c.11
                @Override // com.google.ads.interactivemedia.v3.a.b.h
                public T a() {
                    return (T) new ArrayList();
                }
            };
        }
        if (Map.class.isAssignableFrom(cls)) {
            if (SortedMap.class.isAssignableFrom(cls)) {
                return new h<T>() { // from class: com.google.ads.interactivemedia.v3.a.b.c.12
                    @Override // com.google.ads.interactivemedia.v3.a.b.h
                    public T a() {
                        return (T) new TreeMap();
                    }
                };
            }
            if ((type instanceof ParameterizedType) && !String.class.isAssignableFrom(com.google.ads.interactivemedia.v3.a.c.a.a(((ParameterizedType) type).getActualTypeArguments()[0]).a())) {
                return new h<T>() { // from class: com.google.ads.interactivemedia.v3.a.b.c.2
                    @Override // com.google.ads.interactivemedia.v3.a.b.h
                    public T a() {
                        return (T) new LinkedHashMap();
                    }
                };
            }
            return new h<T>() { // from class: com.google.ads.interactivemedia.v3.a.b.c.3
                @Override // com.google.ads.interactivemedia.v3.a.b.h
                public T a() {
                    return (T) new g();
                }
            };
        }
        return null;
    }

    private <T> h<T> b(final Type type, final Class<? super T> cls) {
        return new h<T>() { // from class: com.google.ads.interactivemedia.v3.a.b.c.4

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final k f2679d = k.a();

            @Override // com.google.ads.interactivemedia.v3.a.b.h
            public T a() {
                try {
                    return (T) this.f2679d.a(cls);
                } catch (Exception e) {
                    String strValueOf = String.valueOf(type);
                    throw new RuntimeException(new StringBuilder(String.valueOf(strValueOf).length() + 116).append("Unable to invoke no-args constructor for ").append(strValueOf).append(". ").append("Register an InstanceCreator with Gson for this type may fix this problem.").toString(), e);
                }
            }
        };
    }

    public String toString() {
        return this.f2667a.toString();
    }
}
