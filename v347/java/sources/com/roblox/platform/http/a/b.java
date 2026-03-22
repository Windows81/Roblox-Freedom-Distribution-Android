package com.roblox.platform.http.a;

import d.d;
import d.l;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b<T> implements d.b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Executor f8034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final d.b<T> f8035b;

    public b(Executor executor, d.b<T> bVar) {
        this.f8034a = executor;
        this.f8035b = bVar;
    }

    @Override // d.b
    public void a(d<T> dVar) {
        if (dVar == null) {
            throw new NullPointerException("callback == null");
        }
        this.f8035b.a(new a(this, dVar));
    }

    @Override // d.b
    public l<T> a() throws IOException {
        l<T> lVarA = this.f8035b.a();
        if (lVarA.a() == 403 && lVarA.b().a("X-CSRF-TOKEN") != null) {
            return this.f8035b.clone().a();
        }
        return lVarA;
    }

    @Override // d.b
    public boolean b() {
        return this.f8035b.b();
    }

    @Override // d.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public d.b<T> clone() {
        return new b(this.f8034a, this.f8035b.clone());
    }

    private class a implements d<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private d<T> f8037b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f8038c;

        public a(b bVar, d<T> dVar) {
            this(dVar, false);
        }

        public a(d<T> dVar, boolean z) {
            this.f8037b = dVar;
            this.f8038c = z;
        }

        @Override // d.d
        public void a(d.b<T> bVar, final l<T> lVar) {
            if (lVar.a() == 403 && lVar.b().a("X-CSRF-TOKEN") != null && !this.f8038c) {
                b.this.f8035b.clone().a(new a(this.f8037b, true));
            } else {
                b.this.f8034a.execute(new Runnable() { // from class: com.roblox.platform.http.a.b.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (b.this.f8035b.b()) {
                            a.this.f8037b.a(b.this, new IOException("Canceled"));
                        } else {
                            a.this.f8037b.a(b.this, lVar);
                        }
                    }
                });
            }
        }

        @Override // d.d
        public void a(d.b<T> bVar, final Throwable th) {
            b.this.f8034a.execute(new Runnable() { // from class: com.roblox.platform.http.a.b.a.2
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f8037b.a(b.this, th);
                }
            });
        }
    }
}
