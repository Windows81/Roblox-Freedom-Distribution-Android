package com.google.ads.interactivemedia.v3.a.b;

import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d implements x, Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f2689a = new d();
    private boolean e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private double f2690b = -1.0d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2691c = 136;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2692d = true;
    private List<com.google.ads.interactivemedia.v3.a.b> f = Collections.emptyList();
    private List<com.google.ads.interactivemedia.v3.a.b> g = Collections.emptyList();

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public d clone() {
        try {
            return (d) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    public d a(com.google.ads.interactivemedia.v3.a.b bVar, boolean z, boolean z2) {
        d dVarClone = clone();
        if (z) {
            dVarClone.f = new ArrayList(this.f);
            dVarClone.f.add(bVar);
        }
        if (z2) {
            dVarClone.g = new ArrayList(this.g);
            dVarClone.g.add(bVar);
        }
        return dVarClone;
    }

    @Override // com.google.ads.interactivemedia.v3.a.x
    public <T> w<T> a(final com.google.ads.interactivemedia.v3.a.f fVar, final com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
        Class<? super T> clsA = aVar.a();
        final boolean zA = a((Class<?>) clsA, true);
        final boolean zA2 = a((Class<?>) clsA, false);
        if (zA || zA2) {
            return new w<T>() { // from class: com.google.ads.interactivemedia.v3.a.b.d.1
                private w<T> f;

                @Override // com.google.ads.interactivemedia.v3.a.w
                public T read(com.google.ads.interactivemedia.v3.a.d.a aVar2) throws IOException {
                    if (!zA2) {
                        return a().read(aVar2);
                    }
                    aVar2.n();
                    return null;
                }

                @Override // com.google.ads.interactivemedia.v3.a.w
                public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, T t) throws IOException {
                    if (zA) {
                        cVar.f();
                    } else {
                        a().write(cVar, t);
                    }
                }

                private w<T> a() {
                    w<T> wVar = this.f;
                    if (wVar != null) {
                        return wVar;
                    }
                    w<T> wVarA = fVar.a(d.this, aVar);
                    this.f = wVarA;
                    return wVarA;
                }
            };
        }
        return null;
    }

    public boolean a(Field field, boolean z) {
        com.google.ads.interactivemedia.v3.a.a.a aVar;
        if ((this.f2691c & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f2690b == -1.0d || a((com.google.ads.interactivemedia.v3.a.a.d) field.getAnnotation(com.google.ads.interactivemedia.v3.a.a.d.class), (com.google.ads.interactivemedia.v3.a.a.e) field.getAnnotation(com.google.ads.interactivemedia.v3.a.a.e.class))) && !field.isSynthetic()) {
            if (this.e && ((aVar = (com.google.ads.interactivemedia.v3.a.a.a) field.getAnnotation(com.google.ads.interactivemedia.v3.a.a.a.class)) == null || (!z ? aVar.b() : aVar.a()))) {
                return true;
            }
            if ((this.f2692d || !b(field.getType())) && !a(field.getType())) {
                List<com.google.ads.interactivemedia.v3.a.b> list = z ? this.f : this.g;
                if (!list.isEmpty()) {
                    com.google.ads.interactivemedia.v3.a.c cVar = new com.google.ads.interactivemedia.v3.a.c(field);
                    Iterator<com.google.ads.interactivemedia.v3.a.b> it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next().a(cVar)) {
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
        if (this.f2690b != -1.0d && !a((com.google.ads.interactivemedia.v3.a.a.d) cls.getAnnotation(com.google.ads.interactivemedia.v3.a.a.d.class), (com.google.ads.interactivemedia.v3.a.a.e) cls.getAnnotation(com.google.ads.interactivemedia.v3.a.a.e.class))) {
            return true;
        }
        if ((this.f2692d || !b(cls)) && !a(cls)) {
            Iterator<com.google.ads.interactivemedia.v3.a.b> it = (z ? this.f : this.g).iterator();
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

    private boolean a(com.google.ads.interactivemedia.v3.a.a.d dVar, com.google.ads.interactivemedia.v3.a.a.e eVar) {
        return a(dVar) && a(eVar);
    }

    private boolean a(com.google.ads.interactivemedia.v3.a.a.d dVar) {
        return dVar == null || dVar.a() <= this.f2690b;
    }

    private boolean a(com.google.ads.interactivemedia.v3.a.a.e eVar) {
        return eVar == null || eVar.a() > this.f2690b;
    }
}
