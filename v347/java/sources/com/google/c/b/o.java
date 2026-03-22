package com.google.c.b;

import java.io.Serializable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class o<F, T> extends ai<F> implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final com.google.c.a.b<F, ? extends T> f6128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ai<T> f6129b;

    o(com.google.c.a.b<F, ? extends T> bVar, ai<T> aiVar) {
        this.f6128a = (com.google.c.a.b) com.google.c.a.e.a(bVar);
        this.f6129b = (ai) com.google.c.a.e.a(aiVar);
    }

    @Override // com.google.c.b.ai, java.util.Comparator
    public int compare(F f, F f2) {
        return this.f6129b.compare(this.f6128a.a(f), this.f6128a.a(f2));
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f6128a.equals(oVar.f6128a) && this.f6129b.equals(oVar.f6129b);
    }

    public int hashCode() {
        return com.google.c.a.d.a(this.f6128a, this.f6129b);
    }

    public String toString() {
        String strValueOf = String.valueOf(this.f6129b);
        String strValueOf2 = String.valueOf(this.f6128a);
        return new StringBuilder(String.valueOf(strValueOf).length() + 13 + String.valueOf(strValueOf2).length()).append(strValueOf).append(".onResultOf(").append(strValueOf2).append(")").toString();
    }
}
