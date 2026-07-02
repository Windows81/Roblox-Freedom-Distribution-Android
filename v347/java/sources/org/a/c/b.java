package org.a.c;

/* JADX INFO: loaded from: classes.dex */
public class b extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f8199a;

    public b(int i) {
        this.f8199a = i;
    }

    public b(int i, String str) {
        super(str);
        this.f8199a = i;
    }

    public b(int i, Throwable th) {
        super(th);
        this.f8199a = i;
    }

    public int a() {
        return this.f8199a;
    }
}
