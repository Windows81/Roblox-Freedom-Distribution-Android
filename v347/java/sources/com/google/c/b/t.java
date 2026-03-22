package com.google.c.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class t<E> extends x<E> {
    abstract v<E> a();

    t() {
    }

    @Override // com.google.c.b.x, com.google.c.b.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return a().contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return a().size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return a().isEmpty();
    }

    @Override // com.google.c.b.v
    boolean t_() {
        return a().t_();
    }
}
