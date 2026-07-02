package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class h extends w<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x f2620a = new x() { // from class: com.google.ads.interactivemedia.v3.a.b.a.h.1
        @Override // com.google.ads.interactivemedia.v3.a.x
        public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
            if (aVar.a() == Object.class) {
                return new h(fVar);
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.ads.interactivemedia.v3.a.f f2621b;

    private h(com.google.ads.interactivemedia.v3.a.f fVar) {
        this.f2621b = fVar;
    }

    @Override // com.google.ads.interactivemedia.v3.a.w
    public Object read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
        switch (aVar.f()) {
            case BEGIN_ARRAY:
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList.add(read(aVar));
                }
                aVar.b();
                return arrayList;
            case BEGIN_OBJECT:
                com.google.ads.interactivemedia.v3.a.b.g gVar = new com.google.ads.interactivemedia.v3.a.b.g();
                aVar.c();
                while (aVar.e()) {
                    gVar.put(aVar.g(), read(aVar));
                }
                aVar.d();
                return gVar;
            case STRING:
                return aVar.h();
            case NUMBER:
                return Double.valueOf(aVar.k());
            case BOOLEAN:
                return Boolean.valueOf(aVar.i());
            case NULL:
                aVar.j();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.google.ads.interactivemedia.v3.a.w
    public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.f();
            return;
        }
        w wVarA = this.f2621b.a((Class) obj.getClass());
        if (wVarA instanceof h) {
            cVar.d();
            cVar.e();
        } else {
            wVarA.write(cVar, obj);
        }
    }
}
