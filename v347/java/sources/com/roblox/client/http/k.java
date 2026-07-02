package com.roblox.client.http;

import b.w;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static k f7097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private w f7098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7099c = 5;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7100d = 5;

    public static k a() {
        if (f7097a == null) {
            synchronized (k.class) {
                if (f7097a == null) {
                    f7097a = new k();
                }
            }
        }
        return f7097a;
    }

    public w b() {
        if (this.f7098b == null) {
            this.f7098b = com.roblox.platform.g.a(null, this.f7099c, this.f7100d);
        }
        return this.f7098b;
    }
}
