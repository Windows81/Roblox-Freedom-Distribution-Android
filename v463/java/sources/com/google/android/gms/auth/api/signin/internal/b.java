package com.google.android.gms.auth.api.signin.internal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f3397a = 31;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3398b = 1;

    public int a() {
        return this.f3398b;
    }

    public b a(Object obj) {
        this.f3398b = (f3397a * this.f3398b) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    public b a(boolean z) {
        this.f3398b = (f3397a * this.f3398b) + (z ? 1 : 0);
        return this;
    }
}
