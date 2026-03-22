package com.c.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.c.a.t;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final t f3089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final w f3090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final WeakReference<T> f3091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f3092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f3093e;
    final int f;
    final int g;
    final Drawable h;
    final String i;
    final Object j;
    boolean k;
    boolean l;

    abstract void a();

    abstract void a(Bitmap bitmap, t.d dVar);

    /* JADX INFO: renamed from: com.c.a.a$a, reason: collision with other inner class name */
    static class C0073a<M> extends WeakReference<M> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final a f3094a;

        public C0073a(a aVar, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.f3094a = aVar;
        }
    }

    a(t tVar, T t, w wVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, boolean z) {
        this.f3089a = tVar;
        this.f3090b = wVar;
        this.f3091c = t == null ? null : new C0073a(this, t, tVar.i);
        this.f3093e = i;
        this.f = i2;
        this.f3092d = z;
        this.g = i3;
        this.h = drawable;
        this.i = str;
        this.j = obj == null ? this : obj;
    }

    void b() {
        this.l = true;
    }

    w c() {
        return this.f3090b;
    }

    T d() {
        WeakReference<T> weakReference = this.f3091c;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
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
        return this.f3093e;
    }

    int i() {
        return this.f;
    }

    t j() {
        return this.f3089a;
    }

    t.e k() {
        return this.f3090b.r;
    }

    Object l() {
        return this.j;
    }
}
