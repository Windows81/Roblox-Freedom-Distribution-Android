package com.roblox.client.purchase.google.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f7596a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f7597b;

    public f(int i, String str) {
        this.f7596a = i;
        if (str == null || str.trim().length() == 0) {
            this.f7597b = e.a(i);
        } else {
            this.f7597b = str + " (response: " + e.a(i) + ")";
        }
    }

    public int a() {
        return this.f7596a;
    }

    public String b() {
        return this.f7597b;
    }

    public boolean c() {
        return this.f7596a == 0;
    }

    public boolean d() {
        return !c();
    }

    public String toString() {
        return "IabResult: " + b();
    }
}
