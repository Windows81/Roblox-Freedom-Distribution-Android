package com.google.c.b;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class k<E> implements Iterator<E> {
    protected k() {
    }

    @Override // java.util.Iterator
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
