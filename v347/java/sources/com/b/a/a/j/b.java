package com.b.a.a.j;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2398c;

    public b(String str) {
        this.f2396a = str;
    }

    public String a() {
        return this.f2396a;
    }

    public long b() {
        return this.f2397b;
    }

    public void a(long j) {
        this.f2397b = j;
    }

    public int c() {
        return this.f2398c;
    }

    public void a(int i) {
        this.f2398c = i;
    }

    public String toString() {
        return "SchedulerConstraint{uuid='" + this.f2396a + "', delayInMs=" + this.f2397b + ", networkStatus=" + this.f2398c + '}';
    }
}
