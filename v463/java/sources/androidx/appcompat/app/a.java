package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.a;
import androidx.appcompat.view.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
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

    public androidx.appcompat.view.b a(b.a aVar) {
        return null;
    }

    public abstract void a(int i);

    public void a(Configuration configuration) {
    }

    public abstract void a(CharSequence charSequence);

    public abstract void a(boolean z);

    public boolean a(int i, KeyEvent keyEvent) {
        return false;
    }

    public boolean a(KeyEvent keyEvent) {
        return false;
    }

    public Context b() {
        return null;
    }

    public void b(int i) {
    }

    public void b(CharSequence charSequence) {
    }

    public abstract void b(boolean z);

    public abstract void c(boolean z);

    public boolean c() {
        return false;
    }

    public void d(boolean z) {
    }

    public boolean d() {
        return false;
    }

    public boolean e() {
        return false;
    }

    public void f(boolean z) {
    }

    public boolean f() {
        return false;
    }

    void g() {
    }

    public void g(boolean z) {
    }

    public void h(boolean z) {
    }

    public void e(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
        }
    }

    public void a(float f) {
        if (f != 0.0f) {
            throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.a$a, reason: collision with other inner class name */
    public static class C0015a extends ViewGroup.MarginLayoutParams {
        public int gravity;

        public C0015a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.ActionBarLayout);
            this.gravity = typedArrayObtainStyledAttributes.getInt(a.j.ActionBarLayout_android_layout_gravity, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public C0015a(int i, int i2) {
            super(i, i2);
            this.gravity = 0;
            this.gravity = 8388627;
        }

        public C0015a(int i, int i2, int i3) {
            super(i, i2);
            this.gravity = 0;
            this.gravity = i3;
        }

        public C0015a(int i) {
            this(-2, -1, i);
        }

        public C0015a(C0015a c0015a) {
            super((ViewGroup.MarginLayoutParams) c0015a);
            this.gravity = 0;
            this.gravity = c0015a.gravity;
        }

        public C0015a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }
    }
}
