package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v7.a.a;
import android.support.v7.view.b;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class a {

    public interface b {
        void a(boolean z);
    }

    @Deprecated
    public static abstract class c {
        public abstract Drawable a();

        public abstract CharSequence b();

        public abstract View c();

        public abstract void d();

        public abstract CharSequence e();
    }

    public abstract int a();

    public abstract void a(int i);

    public abstract void a(boolean z);

    public abstract void b(boolean z);

    public void c(boolean z) {
    }

    public Context b() {
        return null;
    }

    public void d(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
        }
    }

    public void a(float f) {
        if (f != 0.0f) {
            throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
        }
    }

    public void e(boolean z) {
    }

    public void f(boolean z) {
    }

    public void a(Configuration configuration) {
    }

    public void g(boolean z) {
    }

    public android.support.v7.view.b a(b.a aVar) {
        return null;
    }

    public boolean c() {
        return false;
    }

    public boolean d() {
        return false;
    }

    public boolean e() {
        return false;
    }

    public boolean a(KeyEvent keyEvent) {
        return false;
    }

    public boolean a(int i, KeyEvent keyEvent) {
        return false;
    }

    public boolean f() {
        return false;
    }

    public void a(CharSequence charSequence) {
    }

    void g() {
    }

    /* JADX INFO: renamed from: android.support.v7.app.a$a, reason: collision with other inner class name */
    public static class C0034a extends ViewGroup.MarginLayoutParams {
        public int gravity;

        public C0034a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.ActionBarLayout);
            this.gravity = typedArrayObtainStyledAttributes.getInt(a.j.ActionBarLayout_android_layout_gravity, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public C0034a(int i, int i2) {
            super(i, i2);
            this.gravity = 0;
            this.gravity = 8388627;
        }

        public C0034a(int i, int i2, int i3) {
            super(i, i2);
            this.gravity = 0;
            this.gravity = i3;
        }

        public C0034a(int i) {
            this(-2, -1, i);
        }

        public C0034a(C0034a c0034a) {
            super((ViewGroup.MarginLayoutParams) c0034a);
            this.gravity = 0;
            this.gravity = c0034a.gravity;
        }

        public C0034a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }
    }
}
