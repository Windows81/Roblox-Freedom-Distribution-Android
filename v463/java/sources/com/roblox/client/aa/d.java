package com.roblox.client.aa;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f5584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5587d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5588e = true;

    public d(String str, int i) {
        this.f5585b = null;
        this.f5585b = str;
        this.f5586c = i;
    }

    public void a(String str) {
        this.f5587d = str;
    }

    public void a(boolean z) {
        this.f5588e = z;
    }

    public String toString() {
        return String.format("TCP Response for Address:Port -> %s:%s\nSuccessful: %s\nResponse Code: %s\nResponse Message: %s", this.f5585b, Integer.valueOf(this.f5586c), Boolean.valueOf(this.f5588e), Integer.valueOf(this.f5584a), this.f5587d);
    }
}
