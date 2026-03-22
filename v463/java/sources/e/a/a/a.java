package e.a.a;

import c.ab;
import c.ad;
import com.google.gson.f;
import e.e;
import e.m;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a extends e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f7820a;

    public static a a() {
        return a(new f());
    }

    public static a a(f fVar) {
        return new a(fVar);
    }

    private a(f fVar) {
        if (fVar == null) {
            throw new NullPointerException("gson == null");
        }
        this.f7820a = fVar;
    }

    @Override // e.e.a
    public e<ad, ?> a(Type type, Annotation[] annotationArr, m mVar) {
        return new c(this.f7820a, this.f7820a.a((com.google.gson.b.a) com.google.gson.b.a.a(type)));
    }

    @Override // e.e.a
    public e<?, ab> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, m mVar) {
        return new b(this.f7820a, this.f7820a.a((com.google.gson.b.a) com.google.gson.b.a.a(type)));
    }
}
