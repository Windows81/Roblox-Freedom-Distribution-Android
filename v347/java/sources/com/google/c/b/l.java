package com.google.c.b;

import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class l<E> extends k<E> implements ListIterator<E> {
    protected l() {
    }

    @Override // java.util.ListIterator
    @Deprecated
    public final void add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    @Deprecated
    public final void set(E e) {
        throw new UnsupportedOperationException();
    }
}
