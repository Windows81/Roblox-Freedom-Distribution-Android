package com.roblox.platform.http.a;

import c.aa;
import e.d;
import e.l;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b<T> implements e.b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Executor f7683a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final e.b<T> f7684b;

    public b(Executor executor, e.b<T> bVar) {
        this.f7683a = executor;
        this.f7684b = bVar;
    }

    @Override // e.b
    public void a(d<T> dVar) {
        if (dVar == null) {
            throw new NullPointerException("callback == null");
        }
        this.f7684b.a(new a(this, dVar));
    }

    @Override // e.b
    public l<T> a() throws IOException {
        l<T> lVarA = this.f7684b.a();
        return (lVarA.a() != 403 || lVarA.c().a("X-CSRF-TOKEN") == null) ? lVarA : this.f7684b.clone().a();
    }

    @Override // e.b
    public boolean b() {
        return this.f7684b.b();
    }

    @Override // e.b
    /* JADX INFO: renamed from: c */
    public e.b<T> clone() {
        return new b(this.f7683a, this.f7684b.clone());
    }

    @Override // e.b
    public aa d() {
        return this.f7684b.d();
    }

    private class a implements d<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private d<T> f7686b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f7687c;

        public a(b bVar, d<T> dVar) {
            this(dVar, false);
        }

        public a(d<T> dVar, boolean z) {
            this.f7686b = dVar;
            this.f7687c = z;
        }

        @Override // e.d
        public void a(e.b<T> bVar, final l<T> lVar) {
            if (lVar.a() == 403 && lVar.c().a("X-CSRF-TOKEN") != null && !this.f7687c) {
                b.this.f7684b.clone().a(new a(this.f7686b, true));
            } else {
                b.this.f7683a.execute(new Runnable() { // from class: com.roblox.platform.http.a.b.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (b.this.f7684b.b()) {
                            a.this.f7686b.a(b.this, new IOException("Canceled"));
                        } else {
                            a.this.f7686b.a(b.this, lVar);
                        }
                    }
                });
            }
        }

        @Override // e.d
        public void a(e.b<T> bVar, final Throwable th) {
            b.this.f7683a.execute(new Runnable() { // from class: com.roblox.platform.http.a.b.a.2
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f7686b.a(b.this, th);
                }
            });
        }
    }
}
