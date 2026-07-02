package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v7.a.a;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
class l extends k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private y f1678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private y f1679c;

    l(TextView textView) {
        super(textView);
    }

    @Override // android.support.v7.widget.k
    void a(AttributeSet attributeSet, int i) {
        super.a(attributeSet, i);
        Context context = this.f1672a.getContext();
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.AppCompatTextHelper, i, 0);
        if (typedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextHelper_android_drawableStart)) {
            this.f1678b = a(context, appCompatDrawableManager, typedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_drawableStart, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextHelper_android_drawableEnd)) {
            this.f1679c = a(context, appCompatDrawableManager, typedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextHelper_android_drawableEnd, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.support.v7.widget.k
    void a() {
        super.a();
        if (this.f1678b != null || this.f1679c != null) {
            Drawable[] compoundDrawablesRelative = this.f1672a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f1678b);
            a(compoundDrawablesRelative[2], this.f1679c);
        }
    }
}
