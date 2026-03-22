package org.apmem.tools.layouts;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import org.apmem.tools.layouts.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f8229a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f8230b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f8231c = 0.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8232d = 51;
    private int e = 0;

    public a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.a.FlowLayout);
        try {
            a(typedArrayObtainStyledAttributes.getInteger(c.a.FlowLayout_android_orientation, 0));
            a(typedArrayObtainStyledAttributes.getBoolean(c.a.FlowLayout_debugDraw, false));
            a(typedArrayObtainStyledAttributes.getFloat(c.a.FlowLayout_weightDefault, 0.0f));
            b(typedArrayObtainStyledAttributes.getInteger(c.a.FlowLayout_android_gravity, 0));
            c(typedArrayObtainStyledAttributes.getInteger(c.a.FlowLayout_layoutDirection, 0));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public int a() {
        return this.f8229a;
    }

    public void a(int i) {
        if (i == 1) {
            this.f8229a = i;
        } else {
            this.f8229a = 0;
        }
    }

    public boolean b() {
        return this.f8230b;
    }

    public void a(boolean z) {
        this.f8230b = z;
    }

    public float c() {
        return this.f8231c;
    }

    public void a(float f) {
        this.f8231c = Math.max(0.0f, f);
    }

    public int d() {
        return this.f8232d;
    }

    public void b(int i) {
        this.f8232d = i;
    }

    public int e() {
        return this.e;
    }

    public void c(int i) {
        if (i == 1) {
            this.e = i;
        } else {
            this.e = 0;
        }
    }
}
