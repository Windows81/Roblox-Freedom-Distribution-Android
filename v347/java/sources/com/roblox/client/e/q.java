package com.roblox.client.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f6907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f6908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f6909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6910d;

    public q(String str) {
        this(str, false);
    }

    public q(String str, boolean z) {
        this.f6909c = -1L;
        this.f6910d = false;
        this.f6907a = str;
        this.f6910d = z;
    }

    public void a(String str) {
        this.f6908b = str;
    }

    public void a(long j) {
        this.f6909c = j;
    }
}
