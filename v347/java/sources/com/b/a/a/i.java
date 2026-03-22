package com.b.a.a;

import android.content.Context;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class i implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    transient int f2352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    transient boolean f2353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    transient q f2354c;
    private transient long f;
    private transient long h;
    private String i;
    private boolean j;
    private Set<String> k;
    private transient int l;
    private transient long m;
    private transient Context n;
    private transient boolean o;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2355d = UUID.randomUUID().toString();
    private long e = Long.MIN_VALUE;
    private long g = Long.MIN_VALUE;

    protected abstract q a(Throwable th, int i, int i2);

    protected abstract void a(int i);

    public abstract void f();

    public abstract void g() throws Throwable;

    protected i(o oVar) {
        this.f = 0L;
        this.h = 0L;
        this.f = oVar.a();
        this.h = oVar.b();
        this.j = oVar.e();
        this.i = oVar.c();
        this.f2352a = oVar.f();
        this.m = oVar.g();
        String strD = oVar.d();
        if (oVar.h() != null || strD != null) {
            HashSet<String> hashSetH = oVar.h() != null ? oVar.h() : new HashSet<>();
            if (strD != null) {
                String strA = a(strD);
                hashSetH.add(strA);
                if (this.i == null) {
                    this.i = strA;
                }
            }
            this.k = Collections.unmodifiableSet(hashSetH);
        }
    }

    public String a() {
        return this.f2355d;
    }

    public final int b() {
        return this.f2352a;
    }

    public final long c() {
        return this.m;
    }

    public final Set<String> d() {
        return this.k;
    }

    public final boolean e() {
        return this.j;
    }

    final int a(j jVar, int i) {
        boolean zA;
        boolean z;
        this.l = i;
        if (com.b.a.a.f.b.b()) {
            com.b.a.a.f.b.a("running job %s", getClass().getSimpleName());
        }
        try {
            g();
            if (com.b.a.a.f.b.b()) {
                com.b.a.a.f.b.a("finished job %s", this);
            }
            z = false;
            zA = false;
        } catch (Throwable th) {
            com.b.a.a.f.b.a(th, "error while executing job %s", this);
            boolean z2 = i < l();
            if (!z2 || this.f2353b) {
                zA = z2;
                z = true;
            } else {
                try {
                    q qVarA = a(th, i, l());
                    if (qVarA == null) {
                        qVarA = q.f2420a;
                    }
                    this.f2354c = qVarA;
                    zA = qVarA.a();
                    z = true;
                } catch (Throwable th2) {
                    com.b.a.a.f.b.a(th2, "shouldReRunOnThrowable did throw an exception", new Object[0]);
                    zA = z2;
                    z = true;
                }
            }
        }
        Object[] objArr = new Object[4];
        objArr[0] = this;
        objArr[1] = Boolean.valueOf(z ? false : true);
        objArr[2] = Boolean.valueOf(zA);
        objArr[3] = Boolean.valueOf(this.f2353b);
        com.b.a.a.f.b.a("safeRunResult for %s : %s. re run:%s. cancelled: %s", objArr);
        if (!z) {
            return 1;
        }
        if (jVar.p()) {
            return 6;
        }
        if (jVar.n()) {
            return 3;
        }
        if (zA) {
            return 4;
        }
        return i < l() ? 5 : 2;
    }

    public final boolean a(com.b.a.a.k.b bVar) {
        return this.o ? this.e > bVar.a() : this.f != Long.MIN_VALUE;
    }

    public final boolean b(com.b.a.a.k.b bVar) {
        return this.o ? this.g > bVar.a() : this.h != Long.MIN_VALUE;
    }

    public long h() {
        return this.g;
    }

    public long i() {
        return this.e;
    }

    public final String j() {
        return this.i;
    }

    public final String k() {
        if (this.k != null) {
            for (String str : this.k) {
                if (str.startsWith("job-single-id:")) {
                    return str;
                }
            }
        }
        return null;
    }

    private String a(String str) {
        return "job-single-id:" + str;
    }

    protected int l() {
        return 20;
    }

    void a(Context context) {
        this.n = context;
    }

    public void c(com.b.a.a.k.b bVar) {
        if (this.o) {
            throw new IllegalStateException("Cannot add the same job twice");
        }
        if (this.f == Long.MIN_VALUE) {
            this.e = Long.MIN_VALUE;
        } else if (this.f == Long.MAX_VALUE) {
            this.e = Long.MAX_VALUE;
        } else {
            this.e = bVar.a() + TimeUnit.MILLISECONDS.toNanos(this.f);
        }
        if (this.h == Long.MIN_VALUE) {
            this.g = Long.MIN_VALUE;
        } else if (this.h == Long.MAX_VALUE) {
            this.g = Long.MAX_VALUE;
        } else {
            this.g = bVar.a() + TimeUnit.MILLISECONDS.toNanos(this.h);
        }
        if (this.e < this.g) {
            this.e = this.g;
        }
        this.o = true;
    }
}
