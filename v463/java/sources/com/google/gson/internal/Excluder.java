package com.google.gson.internal;

import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class Excluder implements w, Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Excluder f5348a = new Excluder();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5352e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private double f5349b = -1.0d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5350c = 136;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5351d = true;
    private List<com.google.gson.b> f = Collections.emptyList();
    private List<com.google.gson.b> g = Collections.emptyList();

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Excluder clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.google.gson.w
    public <T> v<T> a(final com.google.gson.f fVar, final com.google.gson.b.a<T> aVar) {
        Class<? super T> clsA = aVar.a();
        boolean zA = a(clsA);
        final boolean z = zA || b(clsA, true);
        final boolean z2 = zA || b(clsA, false);
        if (z || z2) {
            return new v<T>() { // from class: com.google.gson.internal.Excluder.1
                private v<T> f;

                @Override // com.google.gson.v
                public T b(com.google.gson.c.a aVar2) throws IOException {
                    if (z2) {
                        aVar2.n();
                        return null;
                    }
                    return b().b(aVar2);
                }

                @Override // com.google.gson.v
                public void a(com.google.gson.c.c cVar, T t) throws IOException {
                    if (z) {
                        cVar.f();
                    } else {
                        b().a(cVar, t);
                    }
                }

                private v<T> b() {
                    v<T> vVar = this.f;
                    if (vVar != null) {
                        return vVar;
                    }
                    v<T> vVarA = fVar.a(Excluder.this, aVar);
                    this.f = vVarA;
                    return vVarA;
                }
            };
        }
        return null;
    }

    public boolean a(Field field, boolean z) {
        com.google.gson.a.a aVar;
        if ((this.f5350c & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f5349b != -1.0d && !a((com.google.gson.a.d) field.getAnnotation(com.google.gson.a.d.class), (com.google.gson.a.e) field.getAnnotation(com.google.gson.a.e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f5352e && ((aVar = (com.google.gson.a.a) field.getAnnotation(com.google.gson.a.a.class)) == null || (!z ? aVar.b() : aVar.a()))) {
            return true;
        }
        if ((!this.f5351d && c(field.getType())) || b(field.getType())) {
            return true;
        }
        List<com.google.gson.b> list = z ? this.f : this.g;
        if (list.isEmpty()) {
            return false;
        }
        com.google.gson.c cVar = new com.google.gson.c(field);
        Iterator<com.google.gson.b> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().a(cVar)) {
                return true;
            }
        }
        return false;
    }

    private boolean a(Class<?> cls) {
        if (this.f5349b == -1.0d || a((com.google.gson.a.d) cls.getAnnotation(com.google.gson.a.d.class), (com.google.gson.a.e) cls.getAnnotation(com.google.gson.a.e.class))) {
            return (!this.f5351d && c(cls)) || b(cls);
        }
        return true;
    }

    public boolean a(Class<?> cls, boolean z) {
        return a(cls) || b(cls, z);
    }

    private boolean b(Class<?> cls, boolean z) {
        Iterator<com.google.gson.b> it = (z ? this.f : this.g).iterator();
        while (it.hasNext()) {
            if (it.next().a(cls)) {
                return true;
            }
        }
        return false;
    }

    private boolean b(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private boolean c(Class<?> cls) {
        return cls.isMemberClass() && !d(cls);
    }

    private boolean d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean a(com.google.gson.a.d dVar, com.google.gson.a.e eVar) {
        return a(dVar) && a(eVar);
    }

    private boolean a(com.google.gson.a.d dVar) {
        return dVar == null || dVar.a() <= this.f5349b;
    }

    private boolean a(com.google.gson.a.e eVar) {
        return eVar == null || eVar.a() > this.f5349b;
    }
}
