package e;

import c.ab;
import c.ad;
import e.b.v;
import e.e;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class a extends e.a {
    a() {
    }

    @Override // e.e.a
    public e.e<ad, ?> a(Type type, Annotation[] annotationArr, m mVar) {
        if (type == ad.class) {
            if (o.a(annotationArr, (Class<? extends Annotation>) v.class)) {
                return c.f7816a;
            }
            return C0187a.f7814a;
        }
        if (type == Void.class) {
            return f.f7819a;
        }
        return null;
    }

    @Override // e.e.a
    public e.e<?, ab> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, m mVar) {
        if (ab.class.isAssignableFrom(o.a(type))) {
            return b.f7815a;
        }
        return null;
    }

    @Override // e.e.a
    public e.e<?, String> b(Type type, Annotation[] annotationArr, m mVar) {
        if (type == String.class) {
            return d.f7817a;
        }
        return null;
    }

    static final class d implements e.e<String, String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f7817a = new d();

        @Override // e.e
        public String a(String str) throws IOException {
            return str;
        }

        d() {
        }
    }

    static final class f implements e.e<ad, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final f f7819a = new f();

        f() {
        }

        @Override // e.e
        public Void a(ad adVar) throws IOException {
            adVar.close();
            return null;
        }
    }

    static final class b implements e.e<ab, ab> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f7815a = new b();

        @Override // e.e
        public ab a(ab abVar) throws IOException {
            return abVar;
        }

        b() {
        }
    }

    static final class c implements e.e<ad, ad> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f7816a = new c();

        @Override // e.e
        public ad a(ad adVar) throws IOException {
            return adVar;
        }

        c() {
        }
    }

    /* JADX INFO: renamed from: e.a$a, reason: collision with other inner class name */
    static final class C0187a implements e.e<ad, ad> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0187a f7814a = new C0187a();

        C0187a() {
        }

        @Override // e.e
        public ad a(ad adVar) throws IOException {
            try {
                return o.a(adVar);
            } finally {
                adVar.close();
            }
        }
    }

    static final class e implements e.e<Object, String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f7818a = new e();

        e() {
        }

        @Override // e.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public String a(Object obj) {
            return obj.toString();
        }
    }
}
