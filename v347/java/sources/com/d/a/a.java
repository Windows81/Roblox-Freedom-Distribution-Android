package com.d.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.d.a.t;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
abstract class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final t f2439a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final w f2440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final WeakReference<T> f2441c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f2442d;
    final int e;
    final int f;
    final int g;
    final Drawable h;
    final String i;
    final Object j;
    boolean k;
    boolean l;

    abstract void a();

    abstract void a(Bitmap bitmap, t.d dVar);

    /* JADX INFO: renamed from: com.d.a.a$a, reason: collision with other inner class name */
    static class C0054a<M> extends WeakReference<M> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final a f2443a;

        public C0054a(a aVar, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.f2443a = aVar;
        }
    }

    a(t tVar, T t, w wVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, boolean z) {
        this.f2439a = tVar;
        this.f2440b = wVar;
        this.f2441c = t == null ? null : new C0054a(this, t, tVar.i);
        this.e = i;
        this.f = i2;
        this.f2442d = z;
        this.g = i3;
        this.h = drawable;
        this.i = str;
        this.j = obj == null ? this : obj;
    }

    void b() {
        this.l = true;
    }

    w c() {
        return this.f2440b;
    }

    T d() {
        if (this.f2441c == null) {
            return null;
        }
        return this.f2441c.get();
    }

    String e() {
        return this.i;
    }

    boolean f() {
        return this.l;
    }

    boolean g() {
        return this.k;
    }

    int h() {
        return this.e;
    }

    int i() {
        return this.f;
    }

    t j() {
        return this.f2439a;
    }

    t.e k() {
        return this.f2440b.r;
    }

    Object l() {
        return this.j;
    }
}
