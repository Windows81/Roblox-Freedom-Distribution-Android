package com.roblox.client.http;

import c.x;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static k f6345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private x f6346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6347c = 5;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6348d = 5;

    public static k a() {
        if (f6345a == null) {
            synchronized (k.class) {
                if (f6345a == null) {
                    f6345a = new k();
                }
            }
        }
        return f6345a;
    }

    public x b() {
        if (this.f6346b == null) {
            this.f6346b = new com.roblox.platform.http.c(null, this.f6347c, this.f6348d, com.roblox.platform.i.b()).a();
        }
        return this.f6346b;
    }
}
