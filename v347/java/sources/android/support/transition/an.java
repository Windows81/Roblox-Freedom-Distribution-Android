package android.support.transition;

import android.graphics.Matrix;
import android.support.transition.r;
import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class an implements as {
    an() {
    }

    @Override // android.support.transition.as
    public al a(View view) {
        return aj.d(view);
    }

    @Override // android.support.transition.as
    public aw b(View view) {
        return new au(view.getWindowToken());
    }

    @Override // android.support.transition.as
    public void a(View view, float f) {
        Float f2 = (Float) view.getTag(r.a.save_non_transition_alpha);
        if (f2 != null) {
            view.setAlpha(f2.floatValue() * f);
        } else {
            view.setAlpha(f);
        }
    }

    @Override // android.support.transition.as
    public float c(View view) {
        Float f = (Float) view.getTag(r.a.save_non_transition_alpha);
        return f != null ? view.getAlpha() / f.floatValue() : view.getAlpha();
    }

    @Override // android.support.transition.as
    public void d(View view) {
        if (view.getTag(r.a.save_non_transition_alpha) == null) {
            view.setTag(r.a.save_non_transition_alpha, Float.valueOf(view.getAlpha()));
        }
    }

    @Override // android.support.transition.as
    public void e(View view) {
        if (view.getVisibility() == 0) {
            view.setTag(r.a.save_non_transition_alpha, null);
        }
    }

    @Override // android.support.transition.as
    public void a(View view, Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            a((View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            matrix.preConcat(matrix2);
        }
    }

    @Override // android.support.transition.as
    public void b(View view, Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            b((View) parent, matrix);
            matrix.postTranslate(r0.getScrollX(), r0.getScrollY());
        }
        matrix.postTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            Matrix matrix3 = new Matrix();
            if (matrix2.invert(matrix3)) {
                matrix.postConcat(matrix3);
            }
        }
    }

    @Override // android.support.transition.as
    public void a(View view, int i, int i2, int i3, int i4) {
        view.setLeft(i);
        view.setTop(i2);
        view.setRight(i3);
        view.setBottom(i4);
    }
}
