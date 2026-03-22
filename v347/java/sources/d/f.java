package d;

import d.c;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class f extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final c.a f8081a = new f();

    f() {
    }

    @Override // d.c.a
    public c<?> a(Type type, Annotation[] annotationArr, m mVar) {
        if (a(type) != b.class) {
            return null;
        }
        final Type typeE = o.e(type);
        return new c<b<?>>() { // from class: d.f.1
            @Override // d.c
            public Type a() {
                return typeE;
            }

            @Override // d.c
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public <R> b<R> b(b<R> bVar) {
                return bVar;
            }
        };
    }
}
