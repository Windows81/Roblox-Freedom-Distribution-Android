package com.roblox.client.http;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f7111a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f7112b;

    public u(long j) {
        this.f7112b = j;
    }

    public boolean a() {
        return a(System.currentTimeMillis());
    }

    public boolean a(long j) {
        if (b(j)) {
            this.f7111a = j;
            return true;
        }
        return false;
    }

    public boolean b(long j) {
        return this.f7111a == -1 || j - this.f7111a >= this.f7112b;
    }
}
