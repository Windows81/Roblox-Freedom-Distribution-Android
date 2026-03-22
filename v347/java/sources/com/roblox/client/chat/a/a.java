package com.roblox.client.chat.a;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f6497a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6499c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f6498b = true;
    private final Object h = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f6500d = new e(this.h);
    private android.support.v4.g.f<c> e = new android.support.v4.g.f<>();
    private android.support.v4.g.f<h> f = new android.support.v4.g.f<>();
    private android.support.v4.g.f<l> g = new android.support.v4.g.f<>();

    public static a a() {
        if (f6497a == null) {
            synchronized (a.class) {
                if (f6497a == null) {
                    f6497a = new a();
                }
            }
        }
        return f6497a;
    }

    private a() {
    }

    public c a(long j) {
        c cVarA = this.e.a(j);
        if (cVarA == null) {
            synchronized (this.h) {
                if (cVarA == null) {
                    cVarA = new c(this.h);
                    this.e.b(j, cVarA);
                }
            }
        }
        return cVarA;
    }

    public void b(long j) {
        synchronized (this.h) {
            this.e.c(j);
            this.f6500d.a(new d(j));
            this.f.c(j);
        }
    }

    public e b() {
        return this.f6500d;
    }

    public d c(long j) {
        int iH = h(j);
        if (iH == -1) {
            return null;
        }
        return (d) this.f6500d.get(iH);
    }

    private int h(long j) {
        synchronized (this.h) {
            for (int i = 0; i < this.f6500d.size(); i++) {
                if (((d) this.f6500d.get(i)).c() == j) {
                    return i;
                }
            }
            return -1;
        }
    }

    public boolean a(long j, h hVar) {
        if (hVar != null) {
            synchronized (this.h) {
                h hVarA = this.f.a(j);
                if (hVarA == null || hVarA.b() <= hVar.b()) {
                    this.f.b(j, hVar);
                    return true;
                }
            }
        }
        return false;
    }

    public h d(long j) {
        return this.f.a(j);
    }

    public void a(long j, ArrayList<h> arrayList) {
        a(j).a(arrayList);
    }

    public void a(ArrayList<d> arrayList, int i) {
        this.f6500d.a((List) arrayList, i);
    }

    public void a(int i) {
        while (this.f6500d.size() > i) {
            this.f6500d.remove(this.f6500d.size() - 1);
        }
    }

    public void e(long j) {
        this.f6500d.a(j);
    }

    public void a(d dVar, boolean z) {
        this.f6500d.a(dVar, z);
        if (z) {
            e(dVar.c());
        }
    }

    public void c() {
        this.f6500d.clear();
        this.e.c();
        this.f.c();
    }

    public int d() {
        if (this.f6499c <= 0) {
            return 0;
        }
        int i = this.f6499c - 1;
        this.f6499c = i;
        return i;
    }

    public int e() {
        int i = this.f6499c + 1;
        this.f6499c = i;
        return i;
    }

    public int f() {
        return this.f6499c;
    }

    public void b(int i) {
        this.f6499c = i;
    }

    public int g() {
        int i;
        synchronized (this.h) {
            int i2 = 0;
            i = 0;
            while (i2 < this.f.b()) {
                int i3 = !this.f.c(i2).k() ? i + 1 : i;
                i2++;
                i = i3;
            }
        }
        return i;
    }

    public boolean a(boolean z) {
        if (this.f6498b == z) {
            return false;
        }
        this.f6498b = z;
        return true;
    }

    public boolean h() {
        return this.f6498b;
    }

    public boolean a(long j, long j2, boolean z) {
        boolean zA;
        synchronized (this.h) {
            l lVarA = this.g.a(j);
            if (z) {
                if (lVarA == null) {
                    lVarA = new l();
                    this.g.b(j, lVarA);
                }
                zA = lVarA.a(j2, true);
            } else if (lVarA != null) {
                boolean zA2 = lVarA.a(j2, false);
                if (lVarA.a() < 1) {
                    this.g.c(j);
                }
                zA = zA2;
            } else {
                zA = false;
            }
        }
        return zA;
    }

    public ArrayList<Long> f(long j) {
        ArrayList<Long> arrayList;
        synchronized (this.h) {
            l lVarA = this.g.a(j);
            arrayList = lVarA != null ? new ArrayList<>(lVarA.b()) : null;
        }
        return arrayList;
    }

    public void g(long j) {
        synchronized (this.h) {
            this.g.c(j);
        }
    }

    public boolean i() {
        boolean z;
        synchronized (this.h) {
            z = this.g.b() > 0;
            if (z) {
                this.g.c();
            }
        }
        return z;
    }
}
