package com.google.c.b;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class x<E> extends v<E> implements List<E>, RandomAccess {
    public static <E> x<E> b() {
        return (x<E>) c.f6110a;
    }

    public static <E> x<E> a(E e) {
        return new h(e);
    }

    public static <E> x<E> a(Collection<? extends E> collection) {
        if (!(collection instanceof v)) {
            return b(collection.toArray());
        }
        x<E> xVarE = ((v) collection).e();
        return xVarE.t_() ? a(xVarE.toArray()) : xVarE;
    }

    private static <E> x<E> b(Object... objArr) {
        return a(ah.a(objArr));
    }

    static <E> x<E> a(Object[] objArr) {
        return b(objArr, objArr.length);
    }

    static <E> x<E> b(Object[] objArr, int i) {
        switch (i) {
            case 0:
                return b();
            case 1:
                return new h(objArr[0]);
            default:
                if (i < objArr.length) {
                    objArr = ah.b(objArr, i);
                }
                return new c(objArr);
        }
    }

    x() {
    }

    @Override // com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public k<E> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public l<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: a */
    public l<E> listIterator(int i) {
        return new com.google.c.b.a<E>(size(), i) { // from class: com.google.c.b.x.1
            @Override // com.google.c.b.a
            protected E a(int i2) {
                return x.this.get(i2);
            }
        };
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return af.b(this, obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return af.c(this, obj);
    }

    @Override // com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: b */
    public x<E> subList(int i, int i2) {
        com.google.c.a.e.a(i, i2, size());
        int i3 = i2 - i;
        if (i3 != size()) {
            switch (i3) {
                case 0:
                    return b();
                case 1:
                    return a(get(i));
                default:
                    return a(i, i2);
            }
        }
        return this;
    }

    x<E> a(int i, int i2) {
        return new a(i, i2 - i);
    }

    class a extends x<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final transient int f6135a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final transient int f6136b;

        @Override // com.google.c.b.x, com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.c.b.x, java.util.List
        public /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // com.google.c.b.x, java.util.List
        public /* synthetic */ ListIterator listIterator(int i) {
            return super.listIterator(i);
        }

        a(int i, int i2) {
            this.f6135a = i;
            this.f6136b = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f6136b;
        }

        @Override // java.util.List
        public E get(int i) {
            com.google.c.a.e.a(i, this.f6136b);
            return x.this.get(this.f6135a + i);
        }

        @Override // com.google.c.b.x, java.util.List
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public x<E> subList(int i, int i2) {
            com.google.c.a.e.a(i, i2, this.f6136b);
            return x.this.subList(this.f6135a + i, this.f6135a + i2);
        }

        @Override // com.google.c.b.v
        boolean t_() {
            return true;
        }
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.c.b.v
    public final x<E> e() {
        return this;
    }

    @Override // com.google.c.b.v
    int a(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return af.a(this, obj);
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int iHashCode = 1;
        int size = size();
        for (int i = 0; i < size; i++) {
            iHashCode = (((iHashCode * 31) + get(i).hashCode()) ^ (-1)) ^ (-1);
        }
        return iHashCode;
    }
}
