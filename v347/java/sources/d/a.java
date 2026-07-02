package d;

import b.aa;
import b.ac;
import d.b.v;
import d.e;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
final class a extends e.a {
    a() {
    }

    @Override // d.e.a
    public d.e<ac, ?> a(Type type, Annotation[] annotationArr, m mVar) {
        if (type == ac.class) {
            if (o.a(annotationArr, (Class<? extends Annotation>) v.class)) {
                return c.f8070a;
            }
            return C0137a.f8068a;
        }
        if (type == Void.class) {
            return f.f8073a;
        }
        return null;
    }

    @Override // d.e.a
    public d.e<?, aa> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, m mVar) {
        if (aa.class.isAssignableFrom(o.a(type))) {
            return b.f8069a;
        }
        return null;
    }

    @Override // d.e.a
    public d.e<?, String> b(Type type, Annotation[] annotationArr, m mVar) {
        if (type == String.class) {
            return d.f8071a;
        }
        return null;
    }

    static final class d implements d.e<String, String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f8071a = new d();

        d() {
        }

        @Override // d.e
        public String a(String str) throws IOException {
            return str;
        }
    }

    static final class f implements d.e<ac, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final f f8073a = new f();

        f() {
        }

        @Override // d.e
        public Void a(ac acVar) throws IOException {
            acVar.close();
            return null;
        }
    }

    static final class b implements d.e<aa, aa> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f8069a = new b();

        b() {
        }

        @Override // d.e
        public aa a(aa aaVar) throws IOException {
            return aaVar;
        }
    }

    static final class c implements d.e<ac, ac> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f8070a = new c();

        c() {
        }

        @Override // d.e
        public ac a(ac acVar) throws IOException {
            return acVar;
        }
    }

    /* JADX INFO: renamed from: d.a$a, reason: collision with other inner class name */
    static final class C0137a implements d.e<ac, ac> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0137a f8068a = new C0137a();

        C0137a() {
        }

        @Override // d.e
        public ac a(ac acVar) throws IOException {
            try {
                return o.a(acVar);
            } finally {
                acVar.close();
            }
        }
    }

    static final class e implements d.e<Object, String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f8072a = new e();

        e() {
        }

        @Override // d.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public String a(Object obj) {
            return obj.toString();
        }
    }
}
