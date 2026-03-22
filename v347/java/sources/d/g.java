package d;

import d.c;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class g extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Executor f8084a;

    g(Executor executor) {
        this.f8084a = executor;
    }

    @Override // d.c.a
    public c<b<?>> a(Type type, Annotation[] annotationArr, m mVar) {
        if (a(type) != b.class) {
            return null;
        }
        final Type typeE = o.e(type);
        return new c<b<?>>() { // from class: d.g.1
            @Override // d.c
            public Type a() {
                return typeE;
            }

            @Override // d.c
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public <R> b<R> b(b<R> bVar) {
                return new a(g.this.f8084a, bVar);
            }
        };
    }

    static final class a<T> implements b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Executor f8087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final b<T> f8088b;

        a(Executor executor, b<T> bVar) {
            this.f8087a = executor;
            this.f8088b = bVar;
        }

        @Override // d.b
        public void a(final d<T> dVar) {
            if (dVar == null) {
                throw new NullPointerException("callback == null");
            }
            this.f8088b.a(new d<T>() { // from class: d.g.a.1
                @Override // d.d
                public void a(b<T> bVar, final l<T> lVar) {
                    a.this.f8087a.execute(new Runnable() { // from class: d.g.a.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (a.this.f8088b.b()) {
                                dVar.a(a.this, new IOException("Canceled"));
                            } else {
                                dVar.a(a.this, lVar);
                            }
                        }
                    });
                }

                @Override // d.d
                public void a(b<T> bVar, final Throwable th) {
                    a.this.f8087a.execute(new Runnable() { // from class: d.g.a.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            dVar.a(a.this, th);
                        }
                    });
                }
            });
        }

        @Override // d.b
        public l<T> a() throws IOException {
            return this.f8088b.a();
        }

        @Override // d.b
        public boolean b() {
            return this.f8088b.b();
        }

        @Override // d.b
        /* JADX INFO: renamed from: c */
        public b<T> clone() {
            return new a(this.f8087a, this.f8088b.clone());
        }
    }
}
