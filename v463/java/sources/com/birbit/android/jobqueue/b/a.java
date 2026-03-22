package com.birbit.android.jobqueue.b;

import android.content.Context;
import com.birbit.android.jobqueue.QueueFactory;
import com.birbit.android.jobqueue.di.DependencyInjector;
import com.birbit.android.jobqueue.f;
import com.birbit.android.jobqueue.log.CustomLogger;
import com.birbit.android.jobqueue.network.NetworkUtil;
import com.birbit.android.jobqueue.scheduling.Scheduler;
import com.birbit.android.jobqueue.timer.Timer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f2912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2914c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2915d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f2916e;
    Context f;
    QueueFactory g;
    DependencyInjector h;
    NetworkUtil i;
    CustomLogger j;
    Timer k;
    Scheduler l;
    boolean m;
    boolean n;
    int o;
    boolean p;

    private a() {
        this.f2912a = "default_job_manager";
        this.f2913b = 5;
        this.f2914c = 0;
        this.f2915d = 15;
        this.f2916e = 3;
        this.m = false;
        this.n = false;
        this.o = 5;
        this.p = true;
    }

    public Context a() {
        return this.f;
    }

    public String b() {
        return this.f2912a;
    }

    public boolean c() {
        return this.p;
    }

    public QueueFactory d() {
        return this.g;
    }

    public DependencyInjector e() {
        return this.h;
    }

    public int f() {
        return this.f2915d;
    }

    public NetworkUtil g() {
        return this.i;
    }

    public int h() {
        return this.f2913b;
    }

    public int i() {
        return this.f2914c;
    }

    public CustomLogger j() {
        return this.j;
    }

    public int k() {
        return this.f2916e;
    }

    public boolean l() {
        return this.m;
    }

    public Timer m() {
        return this.k;
    }

    public boolean n() {
        return this.n;
    }

    public Scheduler o() {
        return this.l;
    }

    public int p() {
        return this.o;
    }

    /* JADX INFO: renamed from: com.birbit.android.jobqueue.b.a$a, reason: collision with other inner class name */
    public static final class C0071a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private a f2917a;

        public C0071a(Context context) {
            a aVar = new a();
            this.f2917a = aVar;
            aVar.f = context.getApplicationContext();
        }

        public C0071a a(String str) {
            this.f2917a.f2912a = str;
            return this;
        }

        public C0071a a(int i) {
            this.f2917a.f2915d = i;
            return this;
        }

        public C0071a b(int i) {
            this.f2917a.f2913b = i;
            return this;
        }

        public C0071a c(int i) {
            this.f2917a.f2914c = i;
            return this;
        }

        public C0071a a(CustomLogger customLogger) {
            this.f2917a.j = customLogger;
            return this;
        }

        public C0071a d(int i) {
            this.f2917a.f2916e = i;
            return this;
        }

        public a a() {
            if (this.f2917a.g == null) {
                this.f2917a.g = new f();
            }
            if (this.f2917a.i == null) {
                a aVar = this.f2917a;
                aVar.i = new com.birbit.android.jobqueue.network.a(aVar.f);
            }
            if (this.f2917a.k == null) {
                this.f2917a.k = new com.birbit.android.jobqueue.timer.a();
            }
            return this.f2917a;
        }
    }
}
