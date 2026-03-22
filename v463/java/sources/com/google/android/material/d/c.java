package com.google.android.material.d;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f4917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f4918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4919c;

    public boolean a() {
        return this.f4918b;
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f4918b);
        bundle.putInt("expandedComponentIdHint", this.f4919c);
        return bundle;
    }

    public void a(Bundle bundle) {
        this.f4918b = bundle.getBoolean("expanded", false);
        this.f4919c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f4918b) {
            d();
        }
    }

    public void a(int i) {
        this.f4919c = i;
    }

    public int c() {
        return this.f4919c;
    }

    private void d() {
        ViewParent parent = this.f4917a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).b(this.f4917a);
        }
    }
}
