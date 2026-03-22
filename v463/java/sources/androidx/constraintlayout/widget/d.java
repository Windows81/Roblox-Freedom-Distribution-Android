package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c f1225a;

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public static class a extends ConstraintLayout.a {
        public float an;
        public boolean ao;
        public float ap;
        public float aq;
        public float ar;
        public float as;
        public float at;
        public float au;
        public float av;
        public float aw;
        public float ax;
        public float ay;
        public float az;

        public a(int i, int i2) {
            super(i, i2);
            this.an = 1.0f;
            this.ao = false;
            this.ap = 0.0f;
            this.aq = 0.0f;
            this.ar = 0.0f;
            this.as = 0.0f;
            this.at = 1.0f;
            this.au = 1.0f;
            this.av = 0.0f;
            this.aw = 0.0f;
            this.ax = 0.0f;
            this.ay = 0.0f;
            this.az = 0.0f;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.an = 1.0f;
            this.ao = false;
            this.ap = 0.0f;
            this.aq = 0.0f;
            this.ar = 0.0f;
            this.as = 0.0f;
            this.at = 1.0f;
            this.au = 1.0f;
            this.av = 0.0f;
            this.aw = 0.0f;
            this.ax = 0.0f;
            this.ay = 0.0f;
            this.az = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.b.ConstraintSet);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == g.b.ConstraintSet_android_alpha) {
                    this.an = typedArrayObtainStyledAttributes.getFloat(index, this.an);
                } else if (index == g.b.ConstraintSet_android_elevation) {
                    this.ap = typedArrayObtainStyledAttributes.getFloat(index, this.ap);
                    this.ao = true;
                } else if (index == g.b.ConstraintSet_android_rotationX) {
                    this.ar = typedArrayObtainStyledAttributes.getFloat(index, this.ar);
                } else if (index == g.b.ConstraintSet_android_rotationY) {
                    this.as = typedArrayObtainStyledAttributes.getFloat(index, this.as);
                } else if (index == g.b.ConstraintSet_android_rotation) {
                    this.aq = typedArrayObtainStyledAttributes.getFloat(index, this.aq);
                } else if (index == g.b.ConstraintSet_android_scaleX) {
                    this.at = typedArrayObtainStyledAttributes.getFloat(index, this.at);
                } else if (index == g.b.ConstraintSet_android_scaleY) {
                    this.au = typedArrayObtainStyledAttributes.getFloat(index, this.au);
                } else if (index == g.b.ConstraintSet_android_transformPivotX) {
                    this.av = typedArrayObtainStyledAttributes.getFloat(index, this.av);
                } else if (index == g.b.ConstraintSet_android_transformPivotY) {
                    this.aw = typedArrayObtainStyledAttributes.getFloat(index, this.aw);
                } else if (index == g.b.ConstraintSet_android_translationX) {
                    this.ax = typedArrayObtainStyledAttributes.getFloat(index, this.ax);
                } else if (index == g.b.ConstraintSet_android_translationY) {
                    this.ay = typedArrayObtainStyledAttributes.getFloat(index, this.ay);
                } else if (index == g.b.ConstraintSet_android_translationZ) {
                    this.ax = typedArrayObtainStyledAttributes.getFloat(index, this.az);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.a(layoutParams);
    }

    public c getConstraintSet() {
        if (this.f1225a == null) {
            this.f1225a = new c();
        }
        this.f1225a.a(this);
        return this.f1225a;
    }
}
