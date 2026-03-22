package com.google.ads.interactivemedia.v3.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class i extends l implements Iterable<l> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<l> f2758a = new ArrayList();

    public void a(l lVar) {
        if (lVar == null) {
            lVar = n.f2759a;
        }
        this.f2758a.add(lVar);
    }

    @Override // java.lang.Iterable
    public Iterator<l> iterator() {
        return this.f2758a.iterator();
    }

    @Override // com.google.ads.interactivemedia.v3.a.l
    public Number a() {
        if (this.f2758a.size() == 1) {
            return this.f2758a.get(0).a();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.ads.interactivemedia.v3.a.l
    public String b() {
        if (this.f2758a.size() == 1) {
            return this.f2758a.get(0).b();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.ads.interactivemedia.v3.a.l
    public double c() {
        if (this.f2758a.size() == 1) {
            return this.f2758a.get(0).c();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.ads.interactivemedia.v3.a.l
    public long d() {
        if (this.f2758a.size() == 1) {
            return this.f2758a.get(0).d();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.ads.interactivemedia.v3.a.l
    public int e() {
        if (this.f2758a.size() == 1) {
            return this.f2758a.get(0).e();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.ads.interactivemedia.v3.a.l
    public boolean f() {
        if (this.f2758a.size() == 1) {
            return this.f2758a.get(0).f();
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof i) && ((i) obj).f2758a.equals(this.f2758a));
    }

    public int hashCode() {
        return this.f2758a.hashCode();
    }
}
