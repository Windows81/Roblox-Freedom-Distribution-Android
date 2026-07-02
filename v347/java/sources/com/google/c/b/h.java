package com.google.c.b;

/* JADX INFO: loaded from: classes.dex */
final class h<E> extends x<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final transient E f6124a;

    h(E e) {
        this.f6124a = (E) com.google.c.a.e.a(e);
    }

    @Override // java.util.List
    public E get(int i) {
        com.google.c.a.e.a(i, 1);
        return this.f6124a;
    }

    @Override // com.google.c.b.x, com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: c */
    public k<E> iterator() {
        return ae.a(this.f6124a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return 1;
    }

    @Override // com.google.c.b.x, java.util.List
    /* JADX INFO: renamed from: b */
    public x<E> subList(int i, int i2) {
        com.google.c.a.e.a(i, i2, 1);
        return i == i2 ? x.b() : this;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        String string = this.f6124a.toString();
        return new StringBuilder(string.length() + 2).append('[').append(string).append(']').toString();
    }

    @Override // com.google.c.b.v
    boolean t_() {
        return false;
    }
}
