package com.google.c.b;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final l<Object> f6090a = new l<Object>() { // from class: com.google.c.b.ae.1
        @Override // java.util.Iterator, java.util.ListIterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator, java.util.ListIterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return false;
        }

        @Override // java.util.ListIterator
        public Object previous() {
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return 0;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return -1;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Iterator<Object> f6091b = new Iterator<Object>() { // from class: com.google.c.b.ae.4
        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            p.a(false);
        }
    };

    static <T> l<T> a() {
        return (l<T>) f6090a;
    }

    public static boolean a(Iterator<?> it, Object obj) {
        return a((Iterator) it, com.google.c.a.g.a(obj));
    }

    public static boolean a(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !com.google.c.a.d.a(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public static <T> boolean a(Iterator<T> it, com.google.c.a.f<? super T> fVar) {
        return b(it, fVar) != -1;
    }

    public static <T> int b(Iterator<T> it, com.google.c.a.f<? super T> fVar) {
        com.google.c.a.e.a(fVar, "predicate");
        int i = 0;
        while (it.hasNext()) {
            if (!fVar.a(it.next())) {
                i++;
            } else {
                return i;
            }
        }
        return -1;
    }

    @SafeVarargs
    public static <T> k<T> a(T... tArr) {
        return a(tArr, 0, tArr.length, 0);
    }

    static <T> l<T> a(final T[] tArr, final int i, int i2, int i3) {
        com.google.c.a.e.a(i2 >= 0);
        com.google.c.a.e.a(i, i + i2, tArr.length);
        com.google.c.a.e.b(i3, i2);
        if (i2 == 0) {
            return a();
        }
        return new a<T>(i2, i3) { // from class: com.google.c.b.ae.2
            @Override // com.google.c.b.a
            protected T a(int i4) {
                return (T) tArr[i + i4];
            }
        };
    }

    public static <T> k<T> a(final T t) {
        return new k<T>() { // from class: com.google.c.b.ae.3

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            boolean f6094a;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.f6094a;
            }

            @Override // java.util.Iterator
            public T next() {
                if (this.f6094a) {
                    throw new NoSuchElementException();
                }
                this.f6094a = true;
                return (T) t;
            }
        };
    }
}
