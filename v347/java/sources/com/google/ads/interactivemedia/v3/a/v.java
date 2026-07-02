package com.google.ads.interactivemedia.v3.a;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class v<T> extends w<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s<T> f2766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k<T> f2767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f2768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.ads.interactivemedia.v3.a.c.a<T> f2769d;
    private final x e;
    private w<T> f;

    private v(s<T> sVar, k<T> kVar, f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar, x xVar) {
        this.f2766a = sVar;
        this.f2767b = kVar;
        this.f2768c = fVar;
        this.f2769d = aVar;
        this.e = xVar;
    }

    @Override // com.google.ads.interactivemedia.v3.a.w
    public T read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
        if (this.f2767b == null) {
            return a().read(aVar);
        }
        l lVarA = com.google.ads.interactivemedia.v3.a.b.j.a(aVar);
        if (lVarA.j()) {
            return null;
        }
        try {
            return this.f2767b.b(lVarA, this.f2769d.b(), this.f2768c.f2744a);
        } catch (p e) {
            throw e;
        } catch (Exception e2) {
            throw new p(e2);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.a.w
    public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, T t) throws IOException {
        if (this.f2766a == null) {
            a().write(cVar, t);
        } else if (t == null) {
            cVar.f();
        } else {
            com.google.ads.interactivemedia.v3.a.b.j.a(this.f2766a.a(t, this.f2769d.b(), this.f2768c.f2745b), cVar);
        }
    }

    private w<T> a() {
        w<T> wVar = this.f;
        if (wVar != null) {
            return wVar;
        }
        w<T> wVarA = this.f2768c.a(this.e, this.f2769d);
        this.f = wVarA;
        return wVarA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static x a(com.google.ads.interactivemedia.v3.a.c.a<?> aVar, Object obj) {
        return new a(obj, aVar, false, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static x b(com.google.ads.interactivemedia.v3.a.c.a<?> aVar, Object obj) {
        return new a(obj, aVar, aVar.b() == aVar.a(), null);
    }

    private static class a implements x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.ads.interactivemedia.v3.a.c.a<?> f2770a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f2771b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Class<?> f2772c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final s<?> f2773d;
        private final k<?> e;

        private a(Object obj, com.google.ads.interactivemedia.v3.a.c.a<?> aVar, boolean z, Class<?> cls) {
            this.f2773d = obj instanceof s ? (s) obj : null;
            this.e = obj instanceof k ? (k) obj : null;
            com.google.ads.interactivemedia.v3.a.b.a.a((this.f2773d == null && this.e == null) ? false : true);
            this.f2770a = aVar;
            this.f2771b = z;
            this.f2772c = cls;
        }

        @Override // com.google.ads.interactivemedia.v3.a.x
        public <T> w<T> a(f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
            boolean zIsAssignableFrom;
            if (this.f2770a != null) {
                zIsAssignableFrom = this.f2770a.equals(aVar) || (this.f2771b && this.f2770a.b() == aVar.a());
            } else {
                zIsAssignableFrom = this.f2772c.isAssignableFrom(aVar.a());
            }
            if (zIsAssignableFrom) {
                return new v(this.f2773d, this.e, fVar, aVar, this);
            }
            return null;
        }
    }
}
