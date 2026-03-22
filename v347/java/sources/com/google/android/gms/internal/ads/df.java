package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class df extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final atf f4929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f4930b;

    public df() {
        this.f4929a = null;
    }

    public df(atf atfVar) {
        this.f4929a = atfVar;
    }

    public df(String str) {
        super(str);
        this.f4929a = null;
    }

    public df(Throwable th) {
        super(th);
        this.f4929a = null;
    }

    final void a(long j) {
        this.f4930b = j;
    }
}
