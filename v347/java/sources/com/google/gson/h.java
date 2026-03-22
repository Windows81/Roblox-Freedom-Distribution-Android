package com.google.gson;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class h extends k implements Iterable<k> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<k> f6192a = new ArrayList();

    public void a(k kVar) {
        if (kVar == null) {
            kVar = m.f6335a;
        }
        this.f6192a.add(kVar);
    }

    public int a() {
        return this.f6192a.size();
    }

    @Override // java.lang.Iterable
    public Iterator<k> iterator() {
        return this.f6192a.iterator();
    }

    public k a(int i) {
        return this.f6192a.get(i);
    }

    @Override // com.google.gson.k
    public Number b() {
        if (this.f6192a.size() == 1) {
            return this.f6192a.get(0).b();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.k
    public String c() {
        if (this.f6192a.size() == 1) {
            return this.f6192a.get(0).c();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.k
    public double d() {
        if (this.f6192a.size() == 1) {
            return this.f6192a.get(0).d();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.k
    public long e() {
        if (this.f6192a.size() == 1) {
            return this.f6192a.get(0).e();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.k
    public int f() {
        if (this.f6192a.size() == 1) {
            return this.f6192a.get(0).f();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.k
    public boolean g() {
        if (this.f6192a.size() == 1) {
            return this.f6192a.get(0).g();
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof h) && ((h) obj).f6192a.equals(this.f6192a));
    }

    public int hashCode() {
        return this.f6192a.hashCode();
    }
}
