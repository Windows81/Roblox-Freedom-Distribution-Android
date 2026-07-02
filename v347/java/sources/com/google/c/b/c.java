package com.google.c.b;

/* JADX INFO: loaded from: classes.dex */
class c<E> extends x<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final x<Object> f6110a = new c(ah.f6101a);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final transient int f6111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final transient int f6112c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final transient Object[] f6113d;

    c(Object[] objArr, int i, int i2) {
        this.f6111b = i;
        this.f6112c = i2;
        this.f6113d = objArr;
    }

    c(Object[] objArr) {
        this(objArr, 0, objArr.length);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f6112c;
    }

    @Override // com.google.c.b.v
    boolean t_() {
        return this.f6112c != this.f6113d.length;
    }

    @Override // com.google.c.b.x, com.google.c.b.v
    int a(Object[] objArr, int i) {
        System.arraycopy(this.f6113d, this.f6111b, objArr, i, this.f6112c);
        return this.f6112c + i;
    }

    @Override // java.util.List
    public E get(int i) {
        com.google.c.a.e.a(i, this.f6112c);
        return (E) this.f6113d[this.f6111b + i];
    }

    @Override // com.google.c.b.x
    x<E> a(int i, int i2) {
        return new c(this.f6113d, this.f6111b + i, i2 - i);
    }

    @Override // com.google.c.b.x, java.util.List
    /* JADX INFO: renamed from: a */
    public l<E> listIterator(int i) {
        return ae.a(this.f6113d, this.f6111b, this.f6112c, i);
    }
}
