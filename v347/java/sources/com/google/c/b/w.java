package com.google.c.b;

import java.io.Serializable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class w<K, V> extends m<K, V> implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final K f6132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final V f6133b;

    w(K k, V v) {
        this.f6132a = k;
        this.f6133b = v;
    }

    @Override // com.google.c.b.m, java.util.Map.Entry
    public final K getKey() {
        return this.f6132a;
    }

    @Override // com.google.c.b.m, java.util.Map.Entry
    public final V getValue() {
        return this.f6133b;
    }

    @Override // com.google.c.b.m, java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
