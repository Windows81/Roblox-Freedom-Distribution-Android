package com.birbit.android.jobqueue;

import android.content.Context;
import com.birbit.android.jobqueue.timer.Timer;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class g implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    transient int f2947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    transient boolean f2948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    transient m f2949c;
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
    private String f2950d = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f2951e = Long.MIN_VALUE;
    private long g = Long.MIN_VALUE;

    protected abstract m a(Throwable th, int i, int i2);

    protected abstract void a(int i);

    public abstract void f();

    public abstract void g() throws Throwable;

    protected int l() {
        return 20;
    }

    protected g(l lVar) {
        this.f = 0L;
        this.h = 0L;
        this.f = lVar.a();
        this.h = lVar.b();
        this.j = lVar.e();
        this.i = lVar.c();
        this.f2947a = lVar.f();
        this.m = lVar.g();
        String strD = lVar.d();
        if (lVar.h() == null && strD == null) {
            return;
        }
        HashSet<String> hashSetH = lVar.h() != null ? lVar.h() : new HashSet<>();
        if (strD != null) {
            String strA = a(strD);
            hashSetH.add(strA);
            if (this.i == null) {
                this.i = strA;
            }
        }
        this.k = Collections.unmodifiableSet(hashSetH);
    }

    public String a() {
        return this.f2950d;
    }

    public final int b() {
        return this.f2947a;
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

    final int a(h hVar, int i) {
        boolean zA;
        boolean z;
        this.l = i;
        if (com.birbit.android.jobqueue.log.a.b()) {
            com.birbit.android.jobqueue.log.a.a("running job %s", getClass().getSimpleName());
        }
        try {
            g();
            if (com.birbit.android.jobqueue.log.a.b()) {
                com.birbit.android.jobqueue.log.a.a("finished job %s", this);
            }
            z = false;
            zA = false;
        } catch (Throwable th) {
            com.birbit.android.jobqueue.log.a.a(th, "error while executing job %s", this);
            zA = i < l();
            if (zA && !this.f2948b) {
                try {
                    m mVarA = a(th, i, l());
                    if (mVarA == null) {
                        mVarA = m.f2986a;
                    }
                    this.f2949c = mVarA;
                    zA = mVarA.a();
                } catch (Throwable th2) {
                    com.birbit.android.jobqueue.log.a.a(th2, "shouldReRunOnThrowable did throw an exception", new Object[0]);
                }
            }
            z = true;
        }
        com.birbit.android.jobqueue.log.a.a("safeRunResult for %s : %s. re run:%s. cancelled: %s", this, Boolean.valueOf(!z), Boolean.valueOf(zA), Boolean.valueOf(this.f2948b));
        if (!z) {
            return 1;
        }
        if (hVar.p()) {
            return 6;
        }
        if (hVar.n()) {
            return 3;
        }
        if (zA) {
            return 4;
        }
        return i < l() ? 5 : 2;
    }

    public final boolean a(Timer timer) {
        if (this.o) {
            if (this.f2951e > timer.nanoTime()) {
                return true;
            }
        } else if (this.f != Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    public final boolean b(Timer timer) {
        if (this.o) {
            if (this.g > timer.nanoTime()) {
                return true;
            }
        } else if (this.h != Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    public long h() {
        return this.g;
    }

    public long i() {
        return this.f2951e;
    }

    public final String j() {
        return this.i;
    }

    public final String k() {
        Set<String> set = this.k;
        if (set == null) {
            return null;
        }
        for (String str : set) {
            if (str.startsWith("job-single-id:")) {
                return str;
            }
        }
        return null;
    }

    private String a(String str) {
        return "job-single-id:" + str;
    }

    void a(Context context) {
        this.n = context;
    }

    public void c(Timer timer) {
        if (this.o) {
            throw new IllegalStateException("Cannot add the same job twice");
        }
        long j = this.f;
        if (j == Long.MIN_VALUE) {
            this.f2951e = Long.MIN_VALUE;
        } else if (j == Long.MAX_VALUE) {
            this.f2951e = Long.MAX_VALUE;
        } else {
            this.f2951e = timer.nanoTime() + TimeUnit.MILLISECONDS.toNanos(this.f);
        }
        long j2 = this.h;
        if (j2 == Long.MIN_VALUE) {
            this.g = Long.MIN_VALUE;
        } else if (j2 == Long.MAX_VALUE) {
            this.g = Long.MAX_VALUE;
        } else {
            this.g = timer.nanoTime() + TimeUnit.MILLISECONDS.toNanos(this.h);
        }
        long j3 = this.f2951e;
        long j4 = this.g;
        if (j3 < j4) {
            this.f2951e = j4;
        }
        this.o = true;
    }
}
