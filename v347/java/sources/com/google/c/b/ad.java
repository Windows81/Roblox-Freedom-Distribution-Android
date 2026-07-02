package com.google.c.b;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class ad<E> extends v<E> implements Set<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private transient x<E> f6088a;

    @Override // com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: c */
    public abstract k<E> iterator();

    public static <E> ad<E> f() {
        return e.f6117a;
    }

    public static <E> ad<E> a(E e) {
        return new i(e);
    }

    ad() {
    }

    boolean b() {
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ad) && b() && ((ad) obj).b() && hashCode() != obj.hashCode()) {
            return false;
        }
        return f.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return f.a(this);
    }

    @Override // com.google.c.b.v
    public x<E> e() {
        x<E> xVar = this.f6088a;
        if (xVar != null) {
            return xVar;
        }
        x<E> xVarD = d();
        this.f6088a = xVarD;
        return xVarD;
    }

    x<E> d() {
        return new ak(this, toArray());
    }

    static abstract class a<E> extends ad<E> {
        abstract E a(int i);

        a() {
        }

        @Override // com.google.c.b.ad, com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: c */
        public k<E> iterator() {
            return e().iterator();
        }

        @Override // com.google.c.b.ad
        x<E> d() {
            return new t<E>() { // from class: com.google.c.b.ad.a.1
                @Override // java.util.List
                public E get(int i) {
                    return (E) a.this.a(i);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // com.google.c.b.t
                /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                public a<E> a() {
                    return a.this;
                }
            };
        }
    }
}
