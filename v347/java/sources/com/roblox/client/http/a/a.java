package com.roblox.client.http.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class a<T> implements d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f7081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f7082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f7083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final float f7084d;

    public a(int i, int i2, float f) {
        this.f7081a = i;
        this.f7083c = i2;
        this.f7084d = f;
    }

    @Override // com.roblox.client.http.a.d
    public int a() {
        return this.f7081a;
    }

    @Override // com.roblox.client.http.a.d
    public void b() {
        this.f7082b++;
        this.f7081a = (int) (this.f7081a * this.f7084d);
    }

    @Override // com.roblox.client.http.a.d
    public boolean c() {
        return this.f7082b < this.f7083c;
    }
}
