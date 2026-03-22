package com.roblox.client.e.a;

import androidx.c.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f5989a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5991c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f5992d = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d<a> f5990b = new d<>();

    public static b a() {
        if (f5989a == null) {
            synchronized (b.class) {
                if (f5989a == null) {
                    f5989a = new b();
                }
            }
        }
        return f5989a;
    }

    private b() {
    }

    public a a(long j) {
        return this.f5990b.a(j);
    }

    public void a(a aVar) {
        synchronized (this.f5992d) {
            a aVarA = this.f5990b.a(aVar.a());
            if (aVarA != null) {
                aVarA.a(aVar);
            } else {
                this.f5990b.b(aVar.a(), aVar);
            }
        }
    }

    public void a(int i) {
        this.f5991c = i;
    }

    public int b() {
        return this.f5991c;
    }

    public void c() {
        this.f5990b.c();
        this.f5991c = 0;
    }
}
