package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class c<V extends View> extends CoordinatorLayout.b<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f4826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4828c;

    public c() {
        this.f4827b = 0;
        this.f4828c = 0;
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4827b = 0;
        this.f4828c = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
        b(coordinatorLayout, v, i);
        if (this.f4826a == null) {
            this.f4826a = new d(v);
        }
        this.f4826a.a();
        int i2 = this.f4827b;
        if (i2 != 0) {
            this.f4826a.a(i2);
            this.f4827b = 0;
        }
        int i3 = this.f4828c;
        if (i3 == 0) {
            return true;
        }
        this.f4826a.b(i3);
        this.f4828c = 0;
        return true;
    }

    protected void b(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.a(v, i);
    }

    public boolean a(int i) {
        d dVar = this.f4826a;
        if (dVar != null) {
            return dVar.a(i);
        }
        this.f4827b = i;
        return false;
    }

    public int c() {
        d dVar = this.f4826a;
        if (dVar != null) {
            return dVar.b();
        }
        return 0;
    }
}
