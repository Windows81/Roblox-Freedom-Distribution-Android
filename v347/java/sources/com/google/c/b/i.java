package com.google.c.b;

/* JADX INFO: loaded from: classes.dex */
final class i<E> extends ad<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final transient E f6125a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private transient int f6126b;

    i(E e) {
        this.f6125a = (E) com.google.c.a.e.a(e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f6125a.equals(obj);
    }

    @Override // com.google.c.b.ad, com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: c */
    public k<E> iterator() {
        return ae.a(this.f6125a);
    }

    @Override // com.google.c.b.ad
    x<E> d() {
        return x.a(this.f6125a);
    }

    @Override // com.google.c.b.v
    boolean t_() {
        return false;
    }

    @Override // com.google.c.b.v
    int a(Object[] objArr, int i) {
        objArr[i] = this.f6125a;
        return i + 1;
    }

    @Override // com.google.c.b.ad, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f6126b;
        if (i == 0) {
            int iHashCode = this.f6125a.hashCode();
            this.f6126b = iHashCode;
            return iHashCode;
        }
        return i;
    }

    @Override // com.google.c.b.ad
    boolean b() {
        return this.f6126b != 0;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        String string = this.f6125a.toString();
        return new StringBuilder(string.length() + 2).append('[').append(string).append(']').toString();
    }
}
