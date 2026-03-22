package android.support.transition;

import android.animation.TypeEvaluator;
import android.graphics.Rect;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class s implements TypeEvaluator<Rect> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Rect f551a;

    s() {
    }

    @Override // android.animation.TypeEvaluator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Rect evaluate(float f, Rect rect, Rect rect2) {
        int i = ((int) ((rect2.left - rect.left) * f)) + rect.left;
        int i2 = ((int) ((rect2.top - rect.top) * f)) + rect.top;
        int i3 = ((int) ((rect2.right - rect.right) * f)) + rect.right;
        int i4 = ((int) ((rect2.bottom - rect.bottom) * f)) + rect.bottom;
        if (this.f551a == null) {
            return new Rect(i, i2, i3, i4);
        }
        this.f551a.set(i, i2, i3, i4);
        return this.f551a;
    }
}
