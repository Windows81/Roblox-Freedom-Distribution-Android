package com.google.gson.internal.bind;

import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class e extends v<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f6267a = new w() { // from class: com.google.gson.internal.bind.ObjectTypeAdapter$1
        @Override // com.google.gson.w
        public <T> v<T> a(com.google.gson.e eVar, com.google.gson.b.a<T> aVar) {
            if (aVar.a() == Object.class) {
                return new e(eVar);
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.gson.e f6268b;

    e(com.google.gson.e eVar) {
        this.f6268b = eVar;
    }

    @Override // com.google.gson.v
    public Object b(com.google.gson.c.a aVar) throws IOException {
        switch (aVar.f()) {
            case BEGIN_ARRAY:
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList.add(b(aVar));
                }
                aVar.b();
                return arrayList;
            case BEGIN_OBJECT:
                com.google.gson.internal.f fVar = new com.google.gson.internal.f();
                aVar.c();
                while (aVar.e()) {
                    fVar.put(aVar.g(), b(aVar));
                }
                aVar.d();
                return fVar;
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

    @Override // com.google.gson.v
    public void a(com.google.gson.c.c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.f();
            return;
        }
        v vVarA = this.f6268b.a((Class) obj.getClass());
        if (vVarA instanceof e) {
            cVar.d();
            cVar.e();
        } else {
            vVarA.a(cVar, obj);
        }
    }
}
