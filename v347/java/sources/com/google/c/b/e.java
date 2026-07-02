package com.google.c.b;

/* JADX INFO: loaded from: classes.dex */
final class e<E> extends ad<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final e<Object> f6117a = new e<>(ah.f6101a, 0, null, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final transient Object[] f6118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final transient Object[] f6119c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final transient int f6120d;
    private final transient int e;

    e(Object[] objArr, int i, Object[] objArr2, int i2) {
        this.f6119c = objArr;
        this.f6118b = objArr2;
        this.f6120d = i2;
        this.e = i;
    }

    @Override // com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Object[] objArr = this.f6118b;
        if (obj == null || objArr == null) {
            return false;
        }
        int iA = s.a(obj);
        while (true) {
            int i = iA & this.f6120d;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (!obj2.equals(obj)) {
                iA = i + 1;
            } else {
                return true;
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f6119c.length;
    }

    @Override // com.google.c.b.ad, com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: c */
    public k<E> iterator() {
        return ae.a(this.f6119c);
    }

    @Override // com.google.c.b.v
    int a(Object[] objArr, int i) {
        System.arraycopy(this.f6119c, 0, objArr, i, this.f6119c.length);
        return this.f6119c.length + i;
    }

    @Override // com.google.c.b.ad
    x<E> d() {
        return this.f6118b == null ? x.b() : new ak(this, this.f6119c);
    }

    @Override // com.google.c.b.v
    boolean t_() {
        return false;
    }

    @Override // com.google.c.b.ad, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.e;
    }

    @Override // com.google.c.b.ad
    boolean b() {
        return true;
    }
}
