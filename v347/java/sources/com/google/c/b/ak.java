package com.google.c.b;

/* JADX INFO: loaded from: classes.dex */
class ak<E> extends t<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v<E> f6102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x<? extends E> f6103b;

    ak(v<E> vVar, x<? extends E> xVar) {
        this.f6102a = vVar;
        this.f6103b = xVar;
    }

    ak(v<E> vVar, Object[] objArr) {
        this(vVar, x.a(objArr));
    }

    @Override // com.google.c.b.t
    v<E> a() {
        return this.f6102a;
    }

    @Override // com.google.c.b.x, java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public l<E> listIterator(int i) {
        return this.f6103b.listIterator(i);
    }

    @Override // com.google.c.b.x, com.google.c.b.v
    int a(Object[] objArr, int i) {
        return this.f6103b.a(objArr, i);
    }

    @Override // java.util.List
    public E get(int i) {
        return this.f6103b.get(i);
    }
}
