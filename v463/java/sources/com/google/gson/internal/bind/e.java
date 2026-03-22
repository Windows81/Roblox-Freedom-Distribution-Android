package com.google.gson.internal.bind;

import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class e extends v<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f5433a = new w() { // from class: com.google.gson.internal.bind.ObjectTypeAdapter$1
        @Override // com.google.gson.w
        public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
            if (aVar.a() == Object.class) {
                return new e(fVar);
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.gson.f f5434b;

    e(com.google.gson.f fVar) {
        this.f5434b = fVar;
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.e$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5435a;

        static {
            int[] iArr = new int[com.google.gson.c.b.values().length];
            f5435a = iArr;
            try {
                iArr[com.google.gson.c.b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5435a[com.google.gson.c.b.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5435a[com.google.gson.c.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5435a[com.google.gson.c.b.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5435a[com.google.gson.c.b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5435a[com.google.gson.c.b.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    @Override // com.google.gson.v
    public Object b(com.google.gson.c.a aVar) throws IOException {
        switch (AnonymousClass1.f5435a[aVar.f().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList.add(b(aVar));
                }
                aVar.b();
                return arrayList;
            case 2:
                com.google.gson.internal.g gVar = new com.google.gson.internal.g();
                aVar.c();
                while (aVar.e()) {
                    gVar.put(aVar.g(), b(aVar));
                }
                aVar.d();
                return gVar;
            case 3:
                return aVar.h();
            case 4:
                return Double.valueOf(aVar.k());
            case 5:
                return Boolean.valueOf(aVar.i());
            case 6:
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
        v vVarA = this.f5434b.a((Class) obj.getClass());
        if (vVarA instanceof e) {
            cVar.d();
            cVar.e();
        } else {
            vVarA.a(cVar, obj);
        }
    }
}
