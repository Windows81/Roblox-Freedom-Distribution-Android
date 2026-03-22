package com.roblox.client.contacts.model;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected long f6847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f6848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f6849c;

    public a(long j, String str) {
        this.f6847a = j;
        this.f6848b = str;
    }

    public long a() {
        return this.f6847a;
    }

    public String b() {
        return this.f6848b;
    }

    public String c() {
        return this.f6849c;
    }

    public void a(String str) {
        this.f6849c = str;
    }
}
