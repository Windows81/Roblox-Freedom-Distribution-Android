package com.roblox.client.signup.multiscreen.a;

import java.io.Serializable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7141c;

    public a(int i, int i2, int i3) {
        this.f7139a = i;
        this.f7140b = i2;
        this.f7141c = i3;
    }

    public int a() {
        return com.roblox.client.ae.e.a(this.f7141c, this.f7140b, this.f7139a);
    }

    public String toString() {
        return this.f7140b + "/" + this.f7141c + "/" + this.f7139a;
    }
}
