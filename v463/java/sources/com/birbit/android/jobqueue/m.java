package com.birbit.android.jobqueue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f2986a = new a(true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final m f2987b = new a(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2988c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Long f2989d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Integer f2990e;
    private boolean f = false;

    public m(boolean z) {
        this.f2988c = z;
    }

    public boolean a() {
        return this.f2988c;
    }

    public Long b() {
        return this.f2989d;
    }

    public Integer c() {
        return this.f2990e;
    }

    public boolean d() {
        return this.f;
    }

    private static class a extends m {
        public a(boolean z) {
            super(z);
        }
    }
}
