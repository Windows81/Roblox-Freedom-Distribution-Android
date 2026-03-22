package com.roblox.client.contacts.model;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected long f5958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f5959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f5960c;

    public a(long j, String str) {
        this.f5958a = j;
        this.f5959b = str;
    }

    public long a() {
        return this.f5958a;
    }

    public String b() {
        return this.f5959b;
    }

    public String c() {
        return this.f5960c;
    }

    public void a(String str) {
        this.f5960c = str;
    }
}
