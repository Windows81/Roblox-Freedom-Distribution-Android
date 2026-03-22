package com.birbit.android.jobqueue.scheduling;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f3085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3086c;

    public a(String str) {
        this.f3084a = str;
    }

    public String a() {
        return this.f3084a;
    }

    public long b() {
        return this.f3085b;
    }

    public void a(long j) {
        this.f3085b = j;
    }

    public int c() {
        return this.f3086c;
    }

    public void a(int i) {
        this.f3086c = i;
    }

    public String toString() {
        return "SchedulerConstraint{uuid='" + this.f3084a + "', delayInMs=" + this.f3085b + ", networkStatus=" + this.f3086c + '}';
    }
}
