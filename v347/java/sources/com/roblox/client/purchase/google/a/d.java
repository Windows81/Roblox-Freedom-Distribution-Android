package com.roblox.client.purchase.google.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    f f7574a;

    public d(f fVar) {
        this(fVar, (Exception) null);
    }

    public d(int i, String str) {
        this(new f(i, str));
    }

    public d(f fVar, Exception exc) {
        super(fVar.b(), exc);
        this.f7574a = fVar;
    }

    public d(int i, String str, Exception exc) {
        this(new f(i, str), exc);
    }

    public f a() {
        return this.f7574a;
    }
}
