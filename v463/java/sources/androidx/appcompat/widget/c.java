package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f976a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private p f979d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private p f980e;
    private p f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f978c = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AppCompatDrawableManager f977b = AppCompatDrawableManager.get();

    c(View view) {
        this.f976a = view;
    }

    void a(AttributeSet attributeSet, int i) {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f976a.getContext(), attributeSet, a.j.ViewBackgroundHelper, i, 0);
        try {
            if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.ViewBackgroundHelper_android_background)) {
                this.f978c = tintTypedArrayObtainStyledAttributes.getResourceId(a.j.ViewBackgroundHelper_android_background, -1);
                ColorStateList tintList = this.f977b.getTintList(this.f976a.getContext(), this.f978c);
                if (tintList != null) {
                    b(tintList);
                }
            }
            if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.ViewBackgroundHelper_backgroundTint)) {
                androidx.core.h.r.a(this.f976a, tintTypedArrayObtainStyledAttributes.getColorStateList(a.j.ViewBackgroundHelper_backgroundTint));
            }
            if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.ViewBackgroundHelper_backgroundTintMode)) {
                androidx.core.h.r.a(this.f976a, DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(a.j.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            tintTypedArrayObtainStyledAttributes.recycle();
        }
    }

    void a(int i) {
        this.f978c = i;
        AppCompatDrawableManager appCompatDrawableManager = this.f977b;
        b(appCompatDrawableManager != null ? appCompatDrawableManager.getTintList(this.f976a.getContext(), i) : null);
        c();
    }

    void a(Drawable drawable) {
        this.f978c = -1;
        b((ColorStateList) null);
        c();
    }

    void a(ColorStateList colorStateList) {
        if (this.f980e == null) {
            this.f980e = new p();
        }
        this.f980e.f1026a = colorStateList;
        this.f980e.f1029d = true;
        c();
    }

    ColorStateList a() {
        p pVar = this.f980e;
        if (pVar != null) {
            return pVar.f1026a;
        }
        return null;
    }

    void a(PorterDuff.Mode mode) {
        if (this.f980e == null) {
            this.f980e = new p();
        }
        this.f980e.f1027b = mode;
        this.f980e.f1028c = true;
        c();
    }

    PorterDuff.Mode b() {
        p pVar = this.f980e;
        if (pVar != null) {
            return pVar.f1027b;
        }
        return null;
    }

    void c() {
        Drawable background = this.f976a.getBackground();
        if (background != null) {
            if (d() && b(background)) {
                return;
            }
            p pVar = this.f980e;
            if (pVar != null) {
                AppCompatDrawableManager.tintDrawable(background, pVar, this.f976a.getDrawableState());
                return;
            }
            p pVar2 = this.f979d;
            if (pVar2 != null) {
                AppCompatDrawableManager.tintDrawable(background, pVar2, this.f976a.getDrawableState());
            }
        }
    }

    void b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f979d == null) {
                this.f979d = new p();
            }
            this.f979d.f1026a = colorStateList;
            this.f979d.f1029d = true;
        } else {
            this.f979d = null;
        }
        c();
    }

    private boolean d() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f979d != null : i == 21;
    }

    private boolean b(Drawable drawable) {
        if (this.f == null) {
            this.f = new p();
        }
        p pVar = this.f;
        pVar.a();
        ColorStateList colorStateListS = androidx.core.h.r.s(this.f976a);
        if (colorStateListS != null) {
            pVar.f1029d = true;
            pVar.f1026a = colorStateListS;
        }
        PorterDuff.Mode modeT = androidx.core.h.r.t(this.f976a);
        if (modeT != null) {
            pVar.f1028c = true;
            pVar.f1027b = modeT;
        }
        if (!pVar.f1029d && !pVar.f1028c) {
            return false;
        }
        AppCompatDrawableManager.tintDrawable(drawable, pVar, this.f976a.getDrawableState());
        return true;
    }
}
