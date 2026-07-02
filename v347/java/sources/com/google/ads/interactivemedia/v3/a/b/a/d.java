package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;

/* JADX INFO: loaded from: classes.dex */
public final class d implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.ads.interactivemedia.v3.a.b.c f2606a;

    public d(com.google.ads.interactivemedia.v3.a.b.c cVar) {
        this.f2606a = cVar;
    }

    @Override // com.google.ads.interactivemedia.v3.a.x
    public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
        com.google.ads.interactivemedia.v3.a.a.b bVar = (com.google.ads.interactivemedia.v3.a.a.b) aVar.a().getAnnotation(com.google.ads.interactivemedia.v3.a.a.b.class);
        if (bVar == null) {
            return null;
        }
        return (w<T>) a(this.f2606a, fVar, aVar, bVar);
    }

    static w<?> a(com.google.ads.interactivemedia.v3.a.b.c cVar, com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<?> aVar, com.google.ads.interactivemedia.v3.a.a.b bVar) {
        Class<?> clsA = bVar.a();
        if (w.class.isAssignableFrom(clsA)) {
            return (w) cVar.a(com.google.ads.interactivemedia.v3.a.c.a.b(clsA)).a();
        }
        if (x.class.isAssignableFrom(clsA)) {
            return ((x) cVar.a(com.google.ads.interactivemedia.v3.a.c.a.b(clsA)).a()).a(fVar, aVar);
        }
        throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference.");
    }
}
