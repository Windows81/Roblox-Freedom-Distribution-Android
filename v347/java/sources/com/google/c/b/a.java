package com.google.c.b;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class a<E> extends l<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6078a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6079b;

    protected abstract E a(int i);

    protected a(int i, int i2) {
        com.google.c.a.e.b(i2, i);
        this.f6078a = i;
        this.f6079b = i2;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f6079b < this.f6078a;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f6079b;
        this.f6079b = i + 1;
        return a(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f6079b;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f6079b > 0;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f6079b - 1;
        this.f6079b = i;
        return a(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f6079b - 1;
    }
}
