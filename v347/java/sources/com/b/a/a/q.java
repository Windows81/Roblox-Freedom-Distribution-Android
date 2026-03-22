package com.b.a.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q f2420a = new a(true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final q f2421b = new a(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2422c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Long f2423d;
    private Integer e;
    private boolean f = false;

    public q(boolean z) {
        this.f2422c = z;
    }

    public boolean a() {
        return this.f2422c;
    }

    public Long b() {
        return this.f2423d;
    }

    public Integer c() {
        return this.e;
    }

    public boolean d() {
        return this.f;
    }

    private static class a extends q {
        public a(boolean z) {
            super(z);
        }
    }
}
