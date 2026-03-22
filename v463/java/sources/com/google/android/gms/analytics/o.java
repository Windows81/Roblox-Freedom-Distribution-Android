package com.google.android.gms.analytics;

import android.os.Build;
import com.google.android.gms.common.internal.aa;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f3281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.common.util.d f3282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f3284d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f3285e;
    private long f;
    private long g;
    private long h;
    private boolean i;
    private final Map<Class<? extends q>, q> j;
    private final List<w> k;

    private o(o oVar) {
        this.f3281a = oVar.f3281a;
        this.f3282b = oVar.f3282b;
        this.f3284d = oVar.f3284d;
        this.f3285e = oVar.f3285e;
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
        aa.a(rVar);
        aa.a(dVar);
        this.f3281a = rVar;
        this.f3282b = dVar;
        this.g = 1800000L;
        this.h = 3024000000L;
        this.j = new HashMap();
        this.k = new ArrayList();
    }

    private static <T extends q> T c(Class<T> cls) {
        try {
            return cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e2) {
            if (e2 instanceof InstantiationException) {
                throw new IllegalArgumentException("dataType doesn't have default constructor", e2);
            }
            if (e2 instanceof IllegalAccessException) {
                throw new IllegalArgumentException("dataType default constructor is not accessible", e2);
            }
            if (Build.VERSION.SDK_INT < 19 || !(e2 instanceof ReflectiveOperationException)) {
                throw new RuntimeException(e2);
            }
            throw new IllegalArgumentException("Linkage exception", e2);
        }
    }

    public final o a() {
        return new o(this);
    }

    public final <T extends q> T a(Class<T> cls) {
        return (T) this.j.get(cls);
    }

    public final void a(long j) {
        this.f3285e = j;
    }

    public final void a(q qVar) {
        aa.a(qVar);
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
        return this.f3284d;
    }

    public final void e() {
        this.f3281a.i().a(this);
    }

    public final boolean f() {
        return this.f3283c;
    }

    final void g() {
        this.f = this.f3282b.b();
        long jA = this.f3285e;
        if (jA == 0) {
            jA = this.f3282b.a();
        }
        this.f3284d = jA;
        this.f3283c = true;
    }

    final r h() {
        return this.f3281a;
    }

    final boolean i() {
        return this.i;
    }

    final void j() {
        this.i = true;
    }
}
