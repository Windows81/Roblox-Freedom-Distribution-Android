package com.google.android.material.appbar;

import android.view.View;
import androidx.core.h.r;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f4829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4831c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4832d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4833e;

    public d(View view) {
        this.f4829a = view;
    }

    public void a() {
        this.f4830b = this.f4829a.getTop();
        this.f4831c = this.f4829a.getLeft();
        c();
    }

    private void c() {
        View view = this.f4829a;
        r.d(view, this.f4832d - (view.getTop() - this.f4830b));
        View view2 = this.f4829a;
        r.e(view2, this.f4833e - (view2.getLeft() - this.f4831c));
    }

    public boolean a(int i) {
        if (this.f4832d == i) {
            return false;
        }
        this.f4832d = i;
        c();
        return true;
    }

    public boolean b(int i) {
        if (this.f4833e == i) {
            return false;
        }
        this.f4833e = i;
        c();
        return true;
    }

    public int b() {
        return this.f4832d;
    }
}
