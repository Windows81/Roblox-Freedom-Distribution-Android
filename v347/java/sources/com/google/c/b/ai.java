package com.google.c.b;

import java.util.Comparator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class ai<T> implements Comparator<T> {
    @Override // java.util.Comparator
    public abstract int compare(T t, T t2);

    public static <T> ai<T> a(Comparator<T> comparator) {
        if (comparator instanceof ai) {
            return (ai) comparator;
        }
        return new r(comparator);
    }

    protected ai() {
    }

    public <F> ai<F> a(com.google.c.a.b<F, ? extends T> bVar) {
        return new o(bVar, this);
    }
}
