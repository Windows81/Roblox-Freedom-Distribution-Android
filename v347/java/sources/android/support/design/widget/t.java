package android.support.design.widget;

import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f458c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f459d;
    private int e;

    public t(View view) {
        this.f456a = view;
    }

    public void a() {
        this.f457b = this.f456a.getTop();
        this.f458c = this.f456a.getLeft();
        c();
    }

    private void c() {
        android.support.v4.view.s.c(this.f456a, this.f459d - (this.f456a.getTop() - this.f457b));
        android.support.v4.view.s.d(this.f456a, this.e - (this.f456a.getLeft() - this.f458c));
    }

    public boolean a(int i) {
        if (this.f459d == i) {
            return false;
        }
        this.f459d = i;
        c();
        return true;
    }

    public boolean b(int i) {
        if (this.e == i) {
            return false;
        }
        this.e = i;
        c();
        return true;
    }

    public int b() {
        return this.f459d;
    }
}
