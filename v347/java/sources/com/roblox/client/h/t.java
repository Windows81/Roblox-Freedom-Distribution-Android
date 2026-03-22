package com.roblox.client.h;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class t extends com.b.a.a.i {
    private static Handler e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f7073d;
    private Throwable f;

    protected abstract void a(a aVar);

    protected static Handler m() {
        if (e == null) {
            synchronized (t.class) {
                if (e == null) {
                    e = new Handler(Looper.getMainLooper());
                }
            }
        }
        return e;
    }

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f7074a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Throwable f7075b;

        public a(int i, Throwable th) {
            this.f7074a = i;
            this.f7075b = th;
        }
    }

    public static com.b.a.a.o n() {
        return new com.b.a.a.o(1);
    }

    public t() {
        this(n());
    }

    protected t(com.b.a.a.o oVar) {
        super(oVar);
        this.f7073d = "RobloxJob";
        this.f = null;
    }

    @Override // com.b.a.a.i
    public void f() {
    }

    @Override // com.b.a.a.i
    protected void a(int i) {
        a(new a(i, this.f));
    }

    @Override // com.b.a.a.i
    protected com.b.a.a.q a(Throwable th, int i, int i2) {
        this.f = th;
        return com.b.a.a.q.f2421b;
    }

    protected void a(String str) {
        a((String) null, str);
    }

    protected void a(String str, String str2) {
    }
}
