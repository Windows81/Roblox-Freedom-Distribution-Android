package com.roblox.client.purchase.google.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f6729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f6730b;

    public f(int i, String str) {
        this.f6729a = i;
        if (str == null || str.trim().length() == 0) {
            this.f6730b = e.a(i);
            return;
        }
        this.f6730b = str + " (response: " + e.a(i) + ")";
    }

    public int a() {
        return this.f6729a;
    }

    public String b() {
        return this.f6730b;
    }

    public boolean c() {
        return this.f6729a == 0;
    }

    public boolean d() {
        return !c();
    }

    public String toString() {
        return "IabResult: " + b();
    }
}
