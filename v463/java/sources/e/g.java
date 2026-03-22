package e;

import c.aa;
import e.c;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class g extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Executor f7830a;

    g(Executor executor) {
        this.f7830a = executor;
    }

    @Override // e.c.a
    public c<b<?>> a(Type type, Annotation[] annotationArr, m mVar) {
        if (a(type) != b.class) {
            return null;
        }
        final Type typeE = o.e(type);
        return new c<b<?>>() { // from class: e.g.1
            @Override // e.c
            public Type a() {
                return typeE;
            }

            @Override // e.c
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public <R> b<R> b(b<R> bVar) {
                return new a(g.this.f7830a, bVar);
            }
        };
    }

    static final class a<T> implements b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Executor f7833a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final b<T> f7834b;

        a(Executor executor, b<T> bVar) {
            this.f7833a = executor;
            this.f7834b = bVar;
        }

        @Override // e.b
        public void a(final d<T> dVar) {
            if (dVar == null) {
                throw new NullPointerException("callback == null");
            }
            this.f7834b.a(new d<T>() { // from class: e.g.a.1
                @Override // e.d
                public void a(b<T> bVar, final l<T> lVar) {
                    a.this.f7833a.execute(new Runnable() { // from class: e.g.a.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (a.this.f7834b.b()) {
                                dVar.a(a.this, new IOException("Canceled"));
                            } else {
                                dVar.a(a.this, lVar);
                            }
                        }
                    });
                }

                @Override // e.d
                public void a(b<T> bVar, final Throwable th) {
                    a.this.f7833a.execute(new Runnable() { // from class: e.g.a.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            dVar.a(a.this, th);
                        }
                    });
                }
            });
        }

        @Override // e.b
        public l<T> a() throws IOException {
            return this.f7834b.a();
        }

        @Override // e.b
        public boolean b() {
            return this.f7834b.b();
        }

        @Override // e.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public b<T> clone() {
            return new a(this.f7833a, this.f7834b.clone());
        }

        @Override // e.b
        public aa d() {
            return this.f7834b.d();
        }
    }
}
