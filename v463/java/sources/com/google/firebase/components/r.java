package com.google.firebase.components;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class r implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<Class<?>> f5169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<Class<?>> f5170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<Class<?>> f5171c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f5172d;

    r(com.google.firebase.components.a<?> aVar, b bVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (f fVar : aVar.b()) {
            if (fVar.c()) {
                hashSet.add(fVar.a());
            } else {
                hashSet2.add(fVar.a());
            }
        }
        if (!aVar.d().isEmpty()) {
            hashSet.add(com.google.firebase.a.c.class);
        }
        this.f5169a = Collections.unmodifiableSet(hashSet);
        this.f5170b = Collections.unmodifiableSet(hashSet2);
        this.f5171c = aVar.d();
        this.f5172d = bVar;
    }

    @Override // com.google.firebase.components.b
    public final <T> T a(Class<T> cls) {
        if (!this.f5169a.contains(cls)) {
            throw new IllegalArgumentException(String.format("Requesting %s is not allowed.", cls));
        }
        T t = (T) this.f5172d.a(cls);
        return !cls.equals(com.google.firebase.a.c.class) ? t : (T) new a(this.f5171c, (com.google.firebase.a.c) t);
    }

    @Override // com.google.firebase.components.b
    public final <T> com.google.firebase.b.a<T> b(Class<T> cls) {
        if (!this.f5170b.contains(cls)) {
            throw new IllegalArgumentException(String.format("Requesting Provider<%s> is not allowed.", cls));
        }
        return this.f5172d.b(cls);
    }

    static class a implements com.google.firebase.a.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set<Class<?>> f5173a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.google.firebase.a.c f5174b;

        public a(Set<Class<?>> set, com.google.firebase.a.c cVar) {
            this.f5173a = set;
            this.f5174b = cVar;
        }
    }
}
