package com.google.c.b;

import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class j<F, T> implements Iterator<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Iterator<? extends F> f6127a;

    abstract T a(F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6127a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return a(this.f6127a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f6127a.remove();
    }
}
