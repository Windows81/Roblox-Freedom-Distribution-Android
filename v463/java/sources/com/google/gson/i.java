package com.google.gson;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class i extends l implements Iterable<l> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<l> f5347a = new ArrayList();

    public void a(l lVar) {
        if (lVar == null) {
            lVar = n.f5507a;
        }
        this.f5347a.add(lVar);
    }

    @Override // java.lang.Iterable
    public Iterator<l> iterator() {
        return this.f5347a.iterator();
    }

    @Override // com.google.gson.l
    public Number a() {
        if (this.f5347a.size() == 1) {
            return this.f5347a.get(0).a();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.l
    public String b() {
        if (this.f5347a.size() == 1) {
            return this.f5347a.get(0).b();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.l
    public double c() {
        if (this.f5347a.size() == 1) {
            return this.f5347a.get(0).c();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.l
    public long d() {
        if (this.f5347a.size() == 1) {
            return this.f5347a.get(0).d();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.l
    public int e() {
        if (this.f5347a.size() == 1) {
            return this.f5347a.get(0).e();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.l
    public boolean f() {
        if (this.f5347a.size() == 1) {
            return this.f5347a.get(0).f();
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof i) && ((i) obj).f5347a.equals(this.f5347a));
    }

    public int hashCode() {
        return this.f5347a.hashCode();
    }
}
