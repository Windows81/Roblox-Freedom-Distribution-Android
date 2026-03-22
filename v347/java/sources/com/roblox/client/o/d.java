package com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f7511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7513c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7514d = null;
    private boolean e = true;

    public d(String str, int i) {
        this.f7512b = null;
        this.f7512b = str;
        this.f7513c = i;
    }

    public void a(String str) {
        this.f7514d = str;
    }

    public void a(boolean z) {
        this.e = z;
    }

    public String toString() {
        return String.format("TCP Response for Address:Port -> %s:%s\nSuccessful: %s\nResponse Code: %s\nResponse Message: %s", this.f7512b, Integer.valueOf(this.f7513c), Boolean.valueOf(this.e), Integer.valueOf(this.f7511a), this.f7514d);
    }
}
