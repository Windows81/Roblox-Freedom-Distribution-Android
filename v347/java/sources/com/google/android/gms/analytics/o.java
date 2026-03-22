package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.os.Build;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f3265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.common.util.d f3266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3267c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f3268d;
    private long e;
    private long f;
    private long g;
    private long h;
    private boolean i;
    private final Map<Class<? extends q>, q> j;
    private final List<w> k;

    private o(o oVar) {
        this.f3265a = oVar.f3265a;
        this.f3266b = oVar.f3266b;
        this.f3268d = oVar.f3268d;
        this.e = oVar.e;
        this.f = oVar.f;
        this.g = oVar.g;
        this.h = oVar.h;
        this.k = new ArrayList(oVar.k);
        this.j = new HashMap(oVar.j.size());
        for (Map.Entry<Class<? extends q>, q> entry : oVar.j.entrySet()) {
            q qVarC = c(entry.getKey());
            entry.getValue().a(qVarC);
            this.j.put(entry.getKey(), qVarC);
        }
    }

    o(r rVar, com.google.android.gms.common.util.d dVar) {
        com.google.android.gms.common.internal.w.a(rVar);
        com.google.android.gms.common.internal.w.a(dVar);
        this.f3265a = rVar;
        this.f3266b = dVar;
        this.g = 1800000L;
        this.h = 3024000000L;
        this.j = new HashMap();
        this.k = new ArrayList();
    }

    @TargetApi(19)
    private static <T extends q> T c(Class<T> cls) {
        try {
            return cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            if (e instanceof InstantiationException) {
                throw new IllegalArgumentException("dataType doesn't have default constructor", e);
            }
            if (e instanceof IllegalAccessException) {
                throw new IllegalArgumentException("dataType default constructor is not accessible", e);
            }
            if (Build.VERSION.SDK_INT < 19 || !(e instanceof ReflectiveOperationException)) {
                throw new RuntimeException(e);
            }
            throw new IllegalArgumentException("Linkage exception", e);
        }
    }

    public final o a() {
        return new o(this);
    }

    public final <T extends q> T a(Class<T> cls) {
        return (T) this.j.get(cls);
    }

    public final void a(long j) {
        this.e = j;
    }

    public final void a(q qVar) {
        com.google.android.gms.common.internal.w.a(qVar);
        Class<?> cls = qVar.getClass();
        if (cls.getSuperclass() != q.class) {
            throw new IllegalArgumentException();
        }
        qVar.a(b(cls));
    }

    public final <T extends q> T b(Class<T> cls) {
        T t = (T) this.j.get(cls);
        if (t != null) {
            return t;
        }
        T t2 = (T) c(cls);
        this.j.put((Class<? extends q>) cls, t2);
        return t2;
    }

    public final Collection<q> b() {
        return this.j.values();
    }

    public final List<w> c() {
        return this.k;
    }

    public final long d() {
        return this.f3268d;
    }

    public final void e() {
        this.f3265a.i().a(this);
    }

    public final boolean f() {
        return this.f3267c;
    }

    final void g() {
        this.f = this.f3266b.b();
        if (this.e != 0) {
            this.f3268d = this.e;
        } else {
            this.f3268d = this.f3266b.a();
        }
        this.f3267c = true;
    }

    final r h() {
        return this.f3265a;
    }

    final boolean i() {
        return this.i;
    }

    final void j() {
        this.i = true;
    }
}
