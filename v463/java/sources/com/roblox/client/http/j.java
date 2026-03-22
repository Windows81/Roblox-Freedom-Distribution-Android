package com.roblox.client.http;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f6337a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f6339c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f6341e;
    private String f = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f6338b = null;
    private byte[] g = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f6340d = 0;

    enum a {
        GET,
        POST
    }

    public String a() {
        String str = this.f;
        return str == null ? "" : str;
    }

    public void a(String str) {
        this.f = str;
    }

    public int b() {
        return this.f6339c;
    }

    public boolean c() {
        return this.f6341e;
    }

    public String d() {
        return this.f6338b;
    }

    public String toString() {
        return "HTTP Response for URL: " + this.f6338b + "\nRequest Type: " + this.f6337a + "\nResponse Body: " + this.f + "\nResponse Code: " + this.f6339c;
    }

    public long e() {
        return this.f6340d;
    }
}
