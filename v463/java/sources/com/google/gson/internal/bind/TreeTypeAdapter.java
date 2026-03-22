package com.google.gson.internal.bind;

import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.l;
import com.google.gson.r;
import com.google.gson.s;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class TreeTypeAdapter<T> extends v<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final com.google.gson.f f5391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s<T> f5392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k<T> f5393c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.gson.b.a<T> f5394d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final w f5395e;
    private final TreeTypeAdapter<T>.a f = new a();
    private v<T> g;

    public TreeTypeAdapter(s<T> sVar, k<T> kVar, com.google.gson.f fVar, com.google.gson.b.a<T> aVar, w wVar) {
        this.f5392b = sVar;
        this.f5393c = kVar;
        this.f5391a = fVar;
        this.f5394d = aVar;
        this.f5395e = wVar;
    }

    @Override // com.google.gson.v
    public T b(com.google.gson.c.a aVar) throws IOException {
        if (this.f5393c == null) {
            return b().b(aVar);
        }
        l lVarA = com.google.gson.internal.k.a(aVar);
        if (lVarA.j()) {
            return null;
        }
        return this.f5393c.a(lVarA, this.f5394d.b(), this.f);
    }

    @Override // com.google.gson.v
    public void a(com.google.gson.c.c cVar, T t) throws IOException {
        s<T> sVar = this.f5392b;
        if (sVar == null) {
            b().a(cVar, t);
        } else if (t == null) {
            cVar.f();
        } else {
            com.google.gson.internal.k.a(sVar.a(t, this.f5394d.b(), this.f), cVar);
        }
    }

    private v<T> b() {
        v<T> vVar = this.g;
        if (vVar != null) {
            return vVar;
        }
        v<T> vVarA = this.f5391a.a(this.f5395e, this.f5394d);
        this.g = vVarA;
        return vVarA;
    }

    private static final class SingleTypeFactory implements w {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.gson.b.a<?> f5396a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f5397b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Class<?> f5398c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final s<?> f5399d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final k<?> f5400e;

        @Override // com.google.gson.w
        public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
            boolean zIsAssignableFrom;
            com.google.gson.b.a<?> aVar2 = this.f5396a;
            if (aVar2 != null) {
                zIsAssignableFrom = aVar2.equals(aVar) || (this.f5397b && this.f5396a.b() == aVar.a());
            } else {
                zIsAssignableFrom = this.f5398c.isAssignableFrom(aVar.a());
            }
            if (zIsAssignableFrom) {
                return new TreeTypeAdapter(this.f5399d, this.f5400e, fVar, aVar, this);
            }
            return null;
        }
    }

    private final class a implements j, r {
        private a() {
        }
    }
}
