package com.google.gson.internal;

import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Excluder implements w, Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Excluder f6193a = new Excluder();
    private boolean e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private double f6194b = -1.0d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6195c = 136;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6196d = true;
    private List<com.google.gson.a> f = Collections.emptyList();
    private List<com.google.gson.a> g = Collections.emptyList();

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Excluder clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.gson.w
    public <T> v<T> a(final com.google.gson.e eVar, final com.google.gson.b.a<T> aVar) {
        Class<? super T> clsA = aVar.a();
        final boolean zA = a((Class<?>) clsA, true);
        final boolean zA2 = a((Class<?>) clsA, false);
        if (zA || zA2) {
            return new v<T>() { // from class: com.google.gson.internal.Excluder.1
                private v<T> f;

                @Override // com.google.gson.v
                public T b(com.google.gson.c.a aVar2) throws IOException {
                    if (!zA2) {
                        return b().b(aVar2);
                    }
                    aVar2.n();
                    return null;
                }

                @Override // com.google.gson.v
                public void a(com.google.gson.c.c cVar, T t) throws IOException {
                    if (zA) {
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
                    v<T> vVarA = eVar.a(Excluder.this, aVar);
                    this.f = vVarA;
                    return vVarA;
                }
            };
        }
        return null;
    }

    public boolean a(Field field, boolean z) {
        com.google.gson.a.a aVar;
        if ((this.f6195c & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f6194b == -1.0d || a((com.google.gson.a.d) field.getAnnotation(com.google.gson.a.d.class), (com.google.gson.a.e) field.getAnnotation(com.google.gson.a.e.class))) && !field.isSynthetic()) {
            if (this.e && ((aVar = (com.google.gson.a.a) field.getAnnotation(com.google.gson.a.a.class)) == null || (!z ? aVar.b() : aVar.a()))) {
                return true;
            }
            if ((this.f6196d || !b(field.getType())) && !a(field.getType())) {
                List<com.google.gson.a> list = z ? this.f : this.g;
                if (!list.isEmpty()) {
                    com.google.gson.b bVar = new com.google.gson.b(field);
                    Iterator<com.google.gson.a> it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next().a(bVar)) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }
        return true;
    }

    public boolean a(Class<?> cls, boolean z) {
        if (this.f6194b != -1.0d && !a((com.google.gson.a.d) cls.getAnnotation(com.google.gson.a.d.class), (com.google.gson.a.e) cls.getAnnotation(com.google.gson.a.e.class))) {
            return true;
        }
        if ((this.f6196d || !b(cls)) && !a(cls)) {
            Iterator<com.google.gson.a> it = (z ? this.f : this.g).iterator();
            while (it.hasNext()) {
                if (it.next().a(cls)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    private boolean a(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private boolean b(Class<?> cls) {
        return cls.isMemberClass() && !c(cls);
    }

    private boolean c(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean a(com.google.gson.a.d dVar, com.google.gson.a.e eVar) {
        return a(dVar) && a(eVar);
    }

    private boolean a(com.google.gson.a.d dVar) {
        return dVar == null || dVar.a() <= this.f6194b;
    }

    private boolean a(com.google.gson.a.e eVar) {
        return eVar == null || eVar.a() > this.f6194b;
    }
}
