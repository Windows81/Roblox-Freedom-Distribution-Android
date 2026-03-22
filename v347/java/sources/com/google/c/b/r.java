package com.google.c.b;

import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class r<T> extends ai<T> implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Comparator<T> f6131a;

    r(Comparator<T> comparator) {
        this.f6131a = (Comparator) com.google.c.a.e.a(comparator);
    }

    @Override // com.google.c.b.ai, java.util.Comparator
    public int compare(T t, T t2) {
        return this.f6131a.compare(t, t2);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof r) {
            return this.f6131a.equals(((r) obj).f6131a);
        }
        return false;
    }

    public int hashCode() {
        return this.f6131a.hashCode();
    }

    public String toString() {
        return this.f6131a.toString();
    }
}
