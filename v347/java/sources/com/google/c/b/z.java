package com.google.c.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class z<K, V> extends w<K, V> {
    static <K, V> z<K, V>[] a(int i) {
        return new z[i];
    }

    z(K k, V v) {
        super(k, v);
        p.a(k, v);
    }

    z<K, V> a() {
        return null;
    }

    z<K, V> b() {
        return null;
    }

    boolean c() {
        return true;
    }

    static class a<K, V> extends z<K, V> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final transient z<K, V> f6148c;

        a(K k, V v, z<K, V> zVar) {
            super(k, v);
            this.f6148c = zVar;
        }

        @Override // com.google.c.b.z
        final z<K, V> a() {
            return this.f6148c;
        }

        @Override // com.google.c.b.z
        final boolean c() {
            return false;
        }
    }
}
