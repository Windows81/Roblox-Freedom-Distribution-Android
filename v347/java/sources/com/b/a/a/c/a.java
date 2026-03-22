package com.b.a.a.c;

import android.content.Context;
import com.b.a.a.g;
import com.b.a.a.h.b;
import com.b.a.a.h.c;
import com.b.a.a.p;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f2287a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2289c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2290d;
    int e;
    Context f;
    p g;
    com.b.a.a.d.a h;
    b i;
    com.b.a.a.f.a j;
    com.b.a.a.k.b k;
    com.b.a.a.j.a l;
    boolean m;
    boolean n;
    int o;
    boolean p;

    private a() {
        this.f2287a = "default_job_manager";
        this.f2288b = 5;
        this.f2289c = 0;
        this.f2290d = 15;
        this.e = 3;
        this.m = false;
        this.n = false;
        this.o = 5;
        this.p = true;
    }

    public Context a() {
        return this.f;
    }

    public String b() {
        return this.f2287a;
    }

    public boolean c() {
        return this.p;
    }

    public p d() {
        return this.g;
    }

    public com.b.a.a.d.a e() {
        return this.h;
    }

    public int f() {
        return this.f2290d;
    }

    public b g() {
        return this.i;
    }

    public int h() {
        return this.f2288b;
    }

    public int i() {
        return this.f2289c;
    }

    public com.b.a.a.f.a j() {
        return this.j;
    }

    public int k() {
        return this.e;
    }

    public boolean l() {
        return this.m;
    }

    public com.b.a.a.k.b m() {
        return this.k;
    }

    public boolean n() {
        return this.n;
    }

    public com.b.a.a.j.a o() {
        return this.l;
    }

    public int p() {
        return this.o;
    }

    /* JADX INFO: renamed from: com.b.a.a.c.a$a, reason: collision with other inner class name */
    public static final class C0048a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private a f2291a = new a();

        public C0048a(Context context) {
            this.f2291a.f = context.getApplicationContext();
        }

        public C0048a a(String str) {
            this.f2291a.f2287a = str;
            return this;
        }

        public C0048a a(int i) {
            this.f2291a.f2290d = i;
            return this;
        }

        public C0048a b(int i) {
            this.f2291a.f2288b = i;
            return this;
        }

        public C0048a c(int i) {
            this.f2291a.f2289c = i;
            return this;
        }

        public C0048a a(com.b.a.a.f.a aVar) {
            this.f2291a.j = aVar;
            return this;
        }

        public C0048a d(int i) {
            this.f2291a.e = i;
            return this;
        }

        public a a() {
            if (this.f2291a.g == null) {
                this.f2291a.g = new g();
            }
            if (this.f2291a.i == null) {
                this.f2291a.i = new c(this.f2291a.f);
            }
            if (this.f2291a.k == null) {
                this.f2291a.k = new com.b.a.a.k.a();
            }
            return this.f2291a;
        }
    }
}
