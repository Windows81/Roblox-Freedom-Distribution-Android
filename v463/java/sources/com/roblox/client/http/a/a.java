package com.roblox.client.http.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a<T> implements d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f6329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f6330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f6331c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final float f6332d;

    public a(int i, int i2, float f) {
        this.f6329a = i;
        this.f6331c = i2;
        this.f6332d = f;
    }

    @Override // com.roblox.client.http.a.d
    public int a() {
        return this.f6329a;
    }

    @Override // com.roblox.client.http.a.d
    public void b() {
        this.f6330b++;
        this.f6329a = (int) (this.f6329a * this.f6332d);
    }

    @Override // com.roblox.client.http.a.d
    public boolean c() {
        return this.f6330b < this.f6331c;
    }
}
