package com.google.gson.internal.bind;

import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.r;
import com.google.gson.s;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class TreeTypeAdapter<T> extends v<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s<T> f6228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j<T> f6229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.gson.e f6230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.gson.b.a<T> f6231d;
    private final w e;
    private final TreeTypeAdapter<T>.a f = new a();
    private v<T> g;

    public TreeTypeAdapter(s<T> sVar, j<T> jVar, com.google.gson.e eVar, com.google.gson.b.a<T> aVar, w wVar) {
        this.f6228a = sVar;
        this.f6229b = jVar;
        this.f6230c = eVar;
        this.f6231d = aVar;
        this.e = wVar;
    }

    @Override // com.google.gson.v
    public T b(com.google.gson.c.a aVar) throws IOException {
        if (this.f6229b == null) {
            return b().b(aVar);
        }
        k kVarA = com.google.gson.internal.i.a(aVar);
        if (kVarA.k()) {
            return null;
        }
        return this.f6229b.deserialize(kVarA, this.f6231d.b(), this.f);
    }

    @Override // com.google.gson.v
    public void a(com.google.gson.c.c cVar, T t) throws IOException {
        if (this.f6228a == null) {
            b().a(cVar, t);
        } else if (t == null) {
            cVar.f();
        } else {
            com.google.gson.internal.i.a(this.f6228a.serialize(t, this.f6231d.b(), this.f), cVar);
        }
    }

    private v<T> b() {
        v<T> vVar = this.g;
        if (vVar != null) {
            return vVar;
        }
        v<T> vVarA = this.f6230c.a(this.e, this.f6231d);
        this.g = vVarA;
        return vVarA;
    }

    public static w a(com.google.gson.b.a<?> aVar, Object obj) {
        return new SingleTypeFactory(obj, aVar, false, null);
    }

    public static w b(com.google.gson.b.a<?> aVar, Object obj) {
        return new SingleTypeFactory(obj, aVar, aVar.b() == aVar.a(), null);
    }

    private static final class SingleTypeFactory implements w {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.gson.b.a<?> f6232a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f6233b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Class<?> f6234c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final s<?> f6235d;
        private final j<?> e;

        SingleTypeFactory(Object obj, com.google.gson.b.a<?> aVar, boolean z, Class<?> cls) {
            this.f6235d = obj instanceof s ? (s) obj : null;
            this.e = obj instanceof j ? (j) obj : null;
            com.google.gson.internal.a.a((this.f6235d == null && this.e == null) ? false : true);
            this.f6232a = aVar;
            this.f6233b = z;
            this.f6234c = cls;
        }

        @Override // com.google.gson.w
        public <T> v<T> a(com.google.gson.e eVar, com.google.gson.b.a<T> aVar) {
            boolean zIsAssignableFrom;
            if (this.f6232a != null) {
                zIsAssignableFrom = this.f6232a.equals(aVar) || (this.f6233b && this.f6232a.b() == aVar.a());
            } else {
                zIsAssignableFrom = this.f6234c.isAssignableFrom(aVar.a());
            }
            if (zIsAssignableFrom) {
                return new TreeTypeAdapter(this.f6235d, this.e, eVar, aVar, this);
            }
            return null;
        }
    }

    private final class a implements com.google.gson.i, r {
        private a() {
        }
    }
}
