package d.a.a;

import b.aa;
import b.ac;
import d.e;
import d.m;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public final class a extends e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.e f8074a;

    public static a a() {
        return a(new com.google.gson.e());
    }

    public static a a(com.google.gson.e eVar) {
        return new a(eVar);
    }

    private a(com.google.gson.e eVar) {
        if (eVar == null) {
            throw new NullPointerException("gson == null");
        }
        this.f8074a = eVar;
    }

    @Override // d.e.a
    public e<ac, ?> a(Type type, Annotation[] annotationArr, m mVar) {
        return new c(this.f8074a, this.f8074a.a((com.google.gson.b.a) com.google.gson.b.a.a(type)));
    }

    @Override // d.e.a
    public e<?, aa> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, m mVar) {
        return new b(this.f8074a, this.f8074a.a((com.google.gson.b.a) com.google.gson.b.a.a(type)));
    }
}
